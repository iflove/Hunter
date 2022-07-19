.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;
.super Ljava/lang/Object;
.source "TinyAppSharePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 99
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const-string/jumbo v4, "page"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "page":Ljava/lang/String;
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "title":Ljava/lang/String;
    const-string v5, "desc"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "desc":Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 103
    .local v25, "content":Ljava/lang/String;
    const-string v6, "imageUrl"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 104
    .local v26, "imageUrl":Ljava/lang/String;
    const-string v6, "bgImgUrl"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 106
    .local v27, "bgImageUrl":Ljava/lang/String;
    iget-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    move-object v7, v2

    .line 107
    .local v7, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v14, v6

    .end local v7    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v14, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-nez v6, :cond_0

    .line 108
    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v2, v6, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 109
    return-void

    .line 113
    :cond_0
    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "tinyAppId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    .line 114
    .local v7, "appId":Ljava/lang/String;
    move-object v7, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 115
    invoke-static {v14}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v6

    const-string/jumbo v8, "parentAppId"

    if-eqz v6, :cond_1

    .line 116
    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .end local v7    # "appId":Ljava/lang/String;
    .local v6, "appId":Ljava/lang/String;
    goto :goto_0

    .line 118
    .end local v6    # "appId":Ljava/lang/String;
    .restart local v7    # "appId":Ljava/lang/String;
    :cond_1
    const-string v6, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {v14, v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v2

    .line 119
    .local v9, "tag":Ljava/lang/Object;
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 121
    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .end local v7    # "appId":Ljava/lang/String;
    .restart local v6    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v6    # "appId":Ljava/lang/String;
    .restart local v7    # "appId":Ljava/lang/String;
    :cond_2
    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "appId"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 126
    .end local v9    # "tag":Ljava/lang/Object;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v2, v6, v8}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "shareTinyAppMsg... appId is null"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 126
    :cond_3
    move-object v13, v7

    goto :goto_1

    .line 114
    :cond_4
    move-object v13, v7

    .line 133
    .end local v7    # "appId":Ljava/lang/String;
    .local v13, "appId":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 137
    invoke-static {v13, v14}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppName(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_2

    .line 135
    :cond_5
    move-object v12, v4

    .line 140
    .end local v4    # "title":Ljava/lang/String;
    .local v12, "title":Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 142
    invoke-static {v13, v14}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppDesc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_3

    .line 140
    :cond_6
    move-object v11, v5

    .line 145
    .end local v5    # "desc":Ljava/lang/String;
    .local v11, "desc":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "alipays://platformapi/startapp?appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "&url="

    goto :goto_4

    :cond_7
    const-string v6, "&page="

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    :cond_8
    invoke-static {v14}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->valueOf(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    move-result-object v5

    move-object v6, v2

    .line 150
    .local v6, "env":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    move-object/from16 v28, v5

    .end local v6    # "env":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    .local v28, "env":Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;
    sget-object v6, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->RELEASE:Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;

    if-eq v5, v6, :cond_9

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&nbsource=debug&nbsn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Lcom/alipay/mobile/nebulacore/util/TinyAppEnvMode;->toStringOfNebula()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    :cond_9
    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "nbsv"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    .line 154
    .local v6, "nbsv":Ljava/lang/String;
    move-object v10, v5

    .end local v6    # "nbsv":Ljava/lang/String;
    .local v10, "nbsv":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&nbsv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    :cond_a
    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appVersion"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    .line 158
    .local v6, "version":Ljava/lang/String;
    move-object v9, v5

    .end local v6    # "version":Ljava/lang/String;
    .local v9, "version":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&enbsv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_5

    .line 158
    :cond_b
    move-object v8, v4

    .line 161
    .end local v4    # "url":Ljava/lang/String;
    .local v8, "url":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getTinyAppShareInterface()Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;

    move-result-object v4

    .line 162
    .local v2, "shareInterface":Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;
    move-object v15, v4

    .end local v2    # "shareInterface":Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;
    .local v15, "shareInterface":Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;
    if-eqz v4, :cond_c

    .line 163
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shareTinyAppMsg..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",desc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 165
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v23

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 164
    move-object/from16 v16, v13

    move-object/from16 v17, v8

    move-object/from16 v18, v12

    move-object/from16 v19, v11

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v14

    move-object/from16 v24, v2

    invoke-interface/range {v15 .. v24}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppShareInterface;->startShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 166
    return-void

    .line 169
    :cond_c
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object v5, v13

    move-object v6, v8

    move-object/from16 v16, v7

    move-object v7, v12

    move-object/from16 v17, v8

    .end local v8    # "url":Ljava/lang/String;
    .local v17, "url":Ljava/lang/String;
    move-object v8, v11

    move-object/from16 v18, v9

    .end local v9    # "version":Ljava/lang/String;
    .local v18, "version":Ljava/lang/String;
    move-object/from16 v9, v25

    move-object/from16 v19, v10

    .end local v10    # "nbsv":Ljava/lang/String;
    .local v19, "nbsv":Ljava/lang/String;
    move-object/from16 v10, v26

    move-object/from16 v20, v11

    .end local v11    # "desc":Ljava/lang/String;
    .local v20, "desc":Ljava/lang/String;
    move-object/from16 v11, v27

    move-object/from16 v21, v12

    .end local v12    # "title":Ljava/lang/String;
    .local v21, "title":Ljava/lang/String;
    move-object v12, v2

    move-object v2, v13

    .end local v13    # "appId":Ljava/lang/String;
    .local v2, "appId":Ljava/lang/String;
    move-object/from16 v13, v16

    move-object/from16 v16, v14

    .end local v14    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v16, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v14, v3

    invoke-static/range {v4 .. v14}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppSharePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V

    .line 170
    return-void
.end method
