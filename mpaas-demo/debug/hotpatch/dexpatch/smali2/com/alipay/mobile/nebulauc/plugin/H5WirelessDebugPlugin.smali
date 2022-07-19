.class public Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WirelessDebugPlugin.java"


# static fields
.field private static final ACTION_OPEN_WIRELESS_DEBUG:Ljava/lang/String; = "openWirelessDebug"

.field private static final ARGUMENT_ERROR:I = 0x66

.field private static final TAG:Ljava/lang/String; = "H5WirelessDebugPlugin"

.field private static final USER_ID_ERROR:I = 0x67

.field public static sWirelessDebugOpening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;->sWirelessDebugOpening:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private openWirelessDebug(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/16 v0, 0x67

    const-string v1, "release not allow"

    invoke-direct {p0, p2, v0, v1}, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "debugAddr"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "debugAddr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const/16 v1, 0x66

    const-string v2, "UC core version is empty"

    invoke-direct {p0, p2, v1, v2}, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 46
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCCore;->startTCPDevtools(Ljava/lang/String;I)V

    .line 49
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;->sWirelessDebugOpening:Z

    .line 50
    new-instance v1, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin$1;-><init>(Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;)V

    const-string v2, "H5WirelessDebugPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 56
    const-string v1, "wireless connect success"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method private sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V
    .locals 2
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "error"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5WirelessDebugPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1, p2, p3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 31
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    const-string v1, "openWirelessDebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/plugin/H5WirelessDebugPlugin;->openWirelessDebug(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 35
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 27
    const-string v0, "openWirelessDebug"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 28
    return-void
.end method
