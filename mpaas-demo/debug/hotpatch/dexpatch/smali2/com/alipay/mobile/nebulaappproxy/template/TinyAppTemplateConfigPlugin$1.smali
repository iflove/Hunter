.class final Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;
.super Ljava/lang/Object;
.source "TinyAppTemplateConfigPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin;->getExtConfig(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin;

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string/jumbo v0, "templateConfig is null"

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 46
    .local v3, "appId":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "TinyAppTemplateConfigPlugin"

    if-eqz v1, :cond_0

    .line 47
    const-string v0, "getExtConfig...appId is null"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 54
    const-string v0, "getExtConfig...event is null"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "startupParams":Landroid/os/Bundle;
    move-object v5, v2

    .line 60
    .local v5, "config":Lcom/alibaba/fastjson/JSONObject;
    const/16 v6, 0x14

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getInstance()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->readTemplateConfig(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 62
    move-object v5, v7

    if-nez v7, :cond_2

    .line 63
    const-string v2, "getExtConfig...config is null"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v2, v6, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 65
    return-void

    .line 68
    :cond_2
    const-string v7, "extEnable"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v8, v2

    .line 69
    .local v8, "extEnabled":Ljava/lang/Boolean;
    move-object v8, v7

    if-eqz v7, :cond_3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 70
    const-string v2, "getExtConfig...extEnable false"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v7, 0x15

    const-string/jumbo v9, "templateConfig disabled"

    invoke-interface {v2, v7, v9}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 72
    return-void

    .line 75
    :cond_3
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 76
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v7

    const-string v9, "data"

    const-string v10, "ext"

    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v7, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    nop

    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "extEnabled":Ljava/lang/Boolean;
    return-void

    .line 78
    :catchall_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getExtConfig...e: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/template/TinyAppTemplateConfigPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v4, v6, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 82
    .end local v2    # "e":Ljava/lang/Throwable;
    return-void
.end method
