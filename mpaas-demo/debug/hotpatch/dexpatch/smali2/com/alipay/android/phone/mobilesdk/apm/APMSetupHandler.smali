.class public Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;
.super Ljava/lang/Object;
.source "APMSetupHandler.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# direct methods
.method public static a()V
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->a:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->c()V

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->d()V

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->e()V

    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->f()V

    .line 41
    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .line 17
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static c()V
    .locals 2

    .line 44
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->c:Z

    if-eqz v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->c:Z

    .line 49
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$1;-><init>()V

    const-string v1, "APMSetupHandler.obtainMemoryUsage"

    invoke-static {v1, v0}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator;->putCyclicalReportDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;)Z

    .line 56
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$2;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$2;-><init>()V

    const-string v1, "APMSetupHandler.obtainFluencyUsage"

    invoke-static {v1, v0}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator;->putCyclicalReportDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;)Z

    .line 64
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->g()V

    .line 65
    return-void
.end method

.method private static d()V
    .locals 3

    .line 68
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->d:Z

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->d:Z

    .line 73
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$3;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$3;-><init>()V

    const-string v2, "APMSetupHandler.storageUsageOverview"

    invoke-static {v0, v2, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator;->putProcessAliveReportDelegate(ZLjava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;)Z

    .line 81
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$4;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler$4;-><init>()V

    const-string v1, "APMSetupHandler.obtainStorageUsage"

    invoke-static {v1, v0}, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator;->putCyclicalReportDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;)Z

    .line 88
    return-void
.end method

.method private static e()V
    .locals 1

    .line 91
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->e:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->e:Z

    .line 96
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->g()V

    .line 97
    return-void
.end method

.method private static f()V
    .locals 1

    .line 100
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->b:Z

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->b:Z

    .line 119
    return-void
.end method

.method private static g()V
    .locals 1

    .line 122
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/APMSetupHandler;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessHandler;->a(Landroid/content/Context;)V

    .line 123
    return-void
.end method
