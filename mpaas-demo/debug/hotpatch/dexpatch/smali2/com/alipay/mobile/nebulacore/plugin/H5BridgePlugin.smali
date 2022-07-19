.class public Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5BridgePlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BridgePlugin"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field private b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 1
    .param p1, "page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 26
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 70
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageJsParam"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    .line 73
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "k":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "v":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 81
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 45
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 47
    const-string v2, "url"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    .local v2, "url":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "file://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string v1, "http://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, v3

    .line 51
    .local v4, "normalUrl":Z
    move v4, v1

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "skip load js for abnormal url: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "H5BridgePlugin"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_2
    const-string v1, "h5PageReceivedTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    if-eqz v4, :cond_5

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    goto :goto_1

    .line 58
    :cond_3
    const-string v1, "h5PageFinishedSync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    if-eqz v4, :cond_5

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadScript()Z

    goto :goto_1

    .line 62
    :cond_4
    const-string v1, "h5PageStartedSync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->resetBridge()V

    .line 65
    :cond_5
    :goto_1
    return v3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 37
    const-string v0, "h5PageStartedSync"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v0, "h5PageFinishedSync"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v0, "h5PageJsParam"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 33
    return-void
.end method
