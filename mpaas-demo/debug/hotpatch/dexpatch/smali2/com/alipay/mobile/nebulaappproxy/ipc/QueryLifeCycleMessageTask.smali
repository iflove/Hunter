.class public Lcom/alipay/mobile/nebulaappproxy/ipc/QueryLifeCycleMessageTask;
.super Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
.source "QueryLifeCycleMessageTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 20
    const/4 v0, 0x0

    .line 22
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v1

    .line 23
    .local v1, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    const-string/jumbo v3, "userId"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "userId":Ljava/lang/String;
    const-string/jumbo v4, "publicId"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, "publicId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getLifecycleUnReadMsgInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v6, v2

    .line 33
    .local v6, "lifeCycleInfo":Landroid/os/Bundle;
    move-object v6, v5

    if-nez v5, :cond_2

    .line 34
    return-object v2

    .line 36
    :cond_2
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 39
    .end local v1    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "publicId":Ljava/lang/String;
    .end local v6    # "lifeCycleInfo":Landroid/os/Bundle;
    goto :goto_2

    .line 29
    .restart local v1    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "publicId":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v2

    .line 24
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "publicId":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v2

    .line 37
    .end local v1    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    :catchall_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "QueryLifeCycleMessageTask"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method
