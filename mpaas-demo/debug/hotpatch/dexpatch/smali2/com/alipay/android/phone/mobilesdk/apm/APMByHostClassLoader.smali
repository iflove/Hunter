.class public Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;
.super Ljava/lang/Object;
.source "APMByHostClassLoader.java"


# static fields
.field public static final NEED_NOT_TO_WORK:Z

.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "5.0.2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->NEED_NOT_TO_WORK:Z

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .line 27
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->a:Z

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "APMFactory.bind repeated"

    .line 29
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v3, "APMFactory"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void

    .line 32
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->a:Z

    .line 34
    sput-object p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    .line 36
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->NEED_NOT_TO_WORK:Z

    if-eqz v0, :cond_1

    .line 37
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->a()V

    .line 42
    return-void
.end method

.method public static afterSetupApplication()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "APMFactory"

    const-string v2, "afterSetupApplication"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static beforeSetupApplication(Landroid/app/Application;)V
    .locals 9
    .param p0, "application"    # Landroid/app/Application;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "processAlias":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "beforeSetupApplication Start, process: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "APMFactory"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 66
    .local v1, "nowTime":J
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->a(Landroid/app/Application;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 69
    .local v4, "spendTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "beforeSetupApplication End, spend: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static isPostInit()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->b:Z

    return v0
.end method

.method public static postInit(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .line 90
    return-void
.end method

.method public static setPostInit()V
    .locals 1

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMByHostClassLoader;->b:Z

    .line 84
    return-void
.end method
