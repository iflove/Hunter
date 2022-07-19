.class public abstract Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;
.super Ljava/lang/Object;
.source "DynamicReleaseApi.java"


# static fields
.field private static volatile a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    monitor-enter v0

    .line 31
    :try_start_0
    const-string v1, "com.alipay.android.phone.mobilecommon.dynamicrelease.DynamicReleaseApiImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    .local v2, "clz":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    .line 34
    .local v1, "tmpInstance":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    if-nez v3, :cond_0

    .line 35
    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v1    # "tmpInstance":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;
    .end local v2    # "clz":Ljava/lang/Class;
    :cond_0
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DynamicReleaseApi"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 43
    :cond_1
    :goto_1
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    return-object v0
.end method


# virtual methods
.method public abstract checkBundleStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isBundleExist(Ljava/lang/String;)Z
.end method

.method public abstract isBundleExist(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract requireBundle(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V
.end method

.method public abstract requireBundle(Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requireBundleWithDownloadPage(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageCallback;)V
.end method

.method public abstract trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V
.end method
