.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "TinyAppExitSessionInterceptPlugin.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 9
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, "beginTime":J
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 49
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    move-object v5, v3

    .line 54
    .local v5, "startParams":Landroid/os/Bundle;
    move-object v5, v2

    const-string v6, "appId"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    .line 55
    .local v6, "appId":Ljava/lang/String;
    move-object v6, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    return-void

    .line 59
    :cond_1
    const-string/jumbo v2, "nbsource"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "debug"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;->a:Ljava/lang/String;

    const-string v7, "beforeExitSession...isMiniServiceInDebug"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    const-string v7, "beforeExitSession...exitRemoteDebug"

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->getInstance()Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/TinyAppRemoteDebugInterceptorImpl;->exitDebugModeExternally()V

    .line 66
    :cond_2
    const-string/jumbo v2, "parentAppId"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v3

    .line 67
    .local v7, "parentId":Ljava/lang/String;
    move-object v7, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 68
    invoke-static {v7, v5, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;->a(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 69
    return-void

    .line 59
    .end local v7    # "parentId":Ljava/lang/String;
    :cond_3
    move-object v7, v3

    .line 73
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getCloseAppPairObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 74
    .local v7, "pairObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v2

    if-nez v2, :cond_5

    .line 75
    return-void

    .line 78
    :cond_5
    const-string/jumbo v2, "onlyOptionMenu"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "yes"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 79
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 80
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v3, "appIdNeedExitSession":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    return-void

    .line 84
    :cond_6
    invoke-static {v3, v5, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;->a(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 86
    .end local v3    # "appIdNeedExitSession":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7
    .param p0, "appIdNeedExitSession"    # Ljava/lang/String;
    .param p1, "startParams"    # Landroid/os/Bundle;
    .param p2, "beginTime"    # J

    .line 89
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 90
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->getSessionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    move-object v3, v1

    .line 95
    .local v3, "session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 96
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;->a:Ljava/lang/String;

    const-string v1, "beforeExitSession...h5Session is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 100
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v4, v1

    .line 101
    .local v4, "otherH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v0

    if-nez v0, :cond_2

    .line 102
    return-void

    .line 105
    :cond_2
    if-eqz p1, :cond_3

    .line 106
    const-string v0, "exitAppPair"

    const-string/jumbo v5, "yes"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_3
    const-string v0, "exitSession"

    invoke-interface {v4, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 110
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "beforeExitSession...cost: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 38
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string v1, "exitSession"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppExitSessionInterceptPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 33
    const-string v0, "exitSession"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 34
    return-void
.end method
