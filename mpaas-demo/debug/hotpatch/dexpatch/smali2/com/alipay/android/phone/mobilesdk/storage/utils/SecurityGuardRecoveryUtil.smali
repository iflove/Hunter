.class public Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;
.super Ljava/lang/Object;
.source "SecurityGuardRecoveryUtil.java"


# static fields
.field public static final ERROR_CODE_NATIVE_SO_ERROR:I = 0xc7

.field private static final TAG:Ljava/lang/String; = "SecurityGuardRecoveryUtil"

.field private static volatile mInstance:Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;


# instance fields
.field private volatile mHasReported:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;
    .locals 2

    .line 24
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->mInstance:Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->mInstance:Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->mInstance:Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->mInstance:Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    return-object v0
.end method

.method private notifyRecoverySo(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->mHasReported:Z

    if-nez v0, :cond_2

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->mHasReported:Z

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->mHasReported:Z

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v2, p0

    .line 56
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v1

    const-string v3, "config_force_extract_sg_so"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    .line 57
    .local v1, "forceExtraceSgSo":Z
    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    .line 59
    .local v3, "forceExtractNativeSoSet":Ljava/util/Set;
    move-object v3, v0

    const-string v4, "libsgavmp.so"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v0, "libsgmain.so"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v0, "libsgmisc.so"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v0, "libsgnocaptcha.so"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v0, "libsgsecuritybody.so"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "force_extract_native_so_set"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "SecurityGuardRecoveryUtil"

    const-string/jumbo v5, "notify framework to force extract security guard so"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v3    # "forceExtractNativeSoSet":Ljava/util/Set;
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "SecurityGuardRecoveryUtil"

    const-string v4, "config_force_extract_sg_so = false"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v1    # "forceExtraceSgSo":Z
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 70
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "exception"    # Lcom/alibaba/wireless/security/open/SecException;

    .line 35
    if-nez p2, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    return-void

    .line 41
    :cond_1
    const/16 v0, 0xc7

    invoke-virtual {p2}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyRecoverySo(Landroid/content/Context;)V

    .line 44
    :cond_2
    return-void
.end method
