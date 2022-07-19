.class public Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;
.super Ljava/lang/Object;
.source "HiddenNativeCrashListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;


# instance fields
.field private mAgentListener:Ljava/lang/Object;

.field private mKeyBiz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 10
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "crashInfo"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "callStack"    # Ljava/lang/String;
    .param p5, "isReturnJVM"    # Z

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mAgentListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onReportCrash"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mAgentListener:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    aput-object p4, v2, v8

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 32
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 33
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "HiddenNativeCrashListener"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAgentListener(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "keyBiz"    # Ljava/lang/String;
    .param p2, "agentListener"    # Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mKeyBiz:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mAgentListener:Ljava/lang/Object;

    .line 42
    invoke-static {p1, p0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->putReportCrashListener(Ljava/lang/String;Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;)Z

    .line 43
    return-void
.end method

.method public unsetAgentListener()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mAgentListener:Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mKeyBiz:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mKeyBiz:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->removeReportCrashListener(Ljava/lang/String;)Z

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/HiddenNativeCrashListener;->mKeyBiz:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method
