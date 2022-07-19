.class public Lcom/alipay/mobile/common/logging/CrashBridgeImpl;
.super Ljava/lang/Object;
.source "CrashBridgeImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callStack"    # Ljava/lang/String;

    .line 78
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 38
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    return-void
.end method

.method public createExceptionHandler(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;->createInstance()Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;

    .line 20
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    .line 21
    return-void
.end method

.method public deleteFileByPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public getCrashTime()J
    .locals 2

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->getCrashTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastNebulaXCrashInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->getNebulaXCrashInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lcom/alipay/mobile/common/nativecrash/CrashCombineUtils;->getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeCrashClientStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "exception"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->getNativeCrashClientStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ex"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 48
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "crashInfo"    # Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->getProcessAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initExceptionHandler(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;->setup()V

    .line 26
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->setup()V

    .line 27
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/BaseExceptionHandler;->takeDown()V

    .line 28
    return-void
.end method

.method public isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "comp"    # Ljava/lang/String;

    .line 63
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIgnoreCrash(Ljava/lang/String;)I
    .locals 1
    .param p1, "crashInfo"    # Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->isIgnoreCrash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isKnownInvalidCrash(Ljava/lang/String;)Z
    .locals 1
    .param p1, "crashInfo"    # Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->isKnownInvalidCrash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPotentialBackgroundCrash(Ljava/lang/String;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/alipay/mobile/common/nativecrash/CrashFilterUtils;->isPotentialBackgroundCrash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "crashInfo"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "callStack"    # Ljava/lang/String;
    .param p4, "isReturnJVM"    # Z

    .line 43
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    .param p2, "flag"    # I

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->setup()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->setUncaughtExceptionCallback(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;)V

    .line 34
    return-void
.end method
