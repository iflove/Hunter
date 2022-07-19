.class public Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5InterceptEventPlugin.java"


# static fields
.field public static final H5_INSIDE_JSAPI_NEED_AUTH_WHITE_LIST:Ljava/lang/String; = "h5_insideJsapiNeedAuthWhiteList"

.field private static final TAG:Ljava/lang/String; = "H5InterceptEventPlugin"


# instance fields
.field jsonArray:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->showNotAuthedDialogIfNeed(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->getH5Page(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->needAuthRpc(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 178
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "parentAppId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "appId":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "webViewTag":Ljava/lang/String;
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    move-object v1, v0

    goto :goto_0

    .line 190
    .end local v0    # "webViewTag":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .end local v1    # "appId":Ljava/lang/String;
    .local v0, "appId":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private getH5Page(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 166
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 167
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 168
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 169
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    .line 173
    .end local v1    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    return-object v2
.end method

.method private needAuthRpc(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    const-string v1, "RPC"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showNotAuthedDialog(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 120
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method private showNotAuthedDialogIfNeed(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->showNotAuthedDialog(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->needAuthRpc(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 5
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 47
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 48
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 49
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "h5_insideJsapiNeedAuthWhiteList"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 51
    .local v3, "value":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    .line 55
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->jsonArray:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v1, "key":Ljava/lang/Object;
    move-object v1, v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPrepare: action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5InterceptEventPlugin"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method
