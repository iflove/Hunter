.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp$1;
.super Ljava/lang/Object;
.source "TinyOpenThirdPartApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "TinyOpenThirdPartApp"

    .line 49
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 50
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v0

    if-eqz v0, :cond_5

    .line 51
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    move-object v5, v3

    .line 52
    .local v5, "startParams":Landroid/os/Bundle;
    move-object v5, v0

    if-eqz v0, :cond_5

    .line 53
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "appId":Ljava/lang/String;
    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->thirdAppSchema:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 55
    .local v6, "thirdPartSchema":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getInstance()Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/config/TinyAppConfig;->getLaunchAppJsapiBlacklist()Ljava/util/List;

    move-result-object v7

    .line 56
    .local v7, "blackList":Ljava/util/List;
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->recordJumpFromThirdApp:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    move-object v9, v3

    .line 57
    .local v9, "isJumpFromThirdPartApp":Ljava/lang/Boolean;
    move-object v9, v8

    if-eqz v8, :cond_0

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 59
    .local v8, "flag":Z
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "isJumpFromThirdPartApp="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz v8, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 61
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v10

    move-object v11, v3

    .line 62
    .local v11, "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    move-object v11, v10

    if-eqz v10, :cond_3

    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 63
    iget-object v10, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 64
    .local v3, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v10

    if-eqz v10, :cond_2

    .line 65
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v10, "startThirdPartApp":Landroid/content/Intent;
    const-string/jumbo v12, "resultData"

    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "resultData":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v13, "schemaBuilder":Ljava/lang/StringBuilder;
    invoke-static {v12}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 69
    .local v14, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v15, "backfromalipay?"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 72
    invoke-static {v14, v13}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp;->a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/StringBuilder;)V

    .line 74
    :cond_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 75
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 76
    .local v15, "thirdPartApp":Landroid/net/Uri;
    move-object/from16 v16, v3

    .end local v3    # "eventParams":Lcom/alibaba/fastjson/JSONObject;
    .local v16, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v10, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    const/high16 v3, 0x10000000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 64
    .end local v10    # "startThirdPartApp":Landroid/content/Intent;
    .end local v12    # "resultData":Ljava/lang/String;
    .end local v13    # "schemaBuilder":Ljava/lang/StringBuilder;
    .end local v14    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "thirdPartApp":Landroid/net/Uri;
    .end local v16    # "eventParams":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "eventParams":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    move-object/from16 v16, v3

    .line 82
    .end local v3    # "eventParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    :cond_3
    :goto_1
    goto :goto_2

    .line 83
    :cond_4
    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyOpenThirdPartApp$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    sget-object v10, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v10

    const-string/jumbo v11, "\u65e0\u6cd5\u8df3\u8f6c"

    invoke-interface {v3, v10, v11}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 85
    :goto_2
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->thirdAppSchema:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInfo;->recordJumpFromThirdApp:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "appId":Ljava/lang/String;
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "startParams":Landroid/os/Bundle;
    .end local v6    # "thirdPartSchema":Ljava/lang/String;
    .end local v7    # "blackList":Ljava/util/List;
    .end local v8    # "flag":Z
    .end local v9    # "isJumpFromThirdPartApp":Ljava/lang/Boolean;
    :cond_5
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
