.class public Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;
.super Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
.source "PreparePkgResTask.java"


# static fields
.field public static final PARAM_APP_ID:Ljava/lang/String; = "appId"

.field public static final PARAM_RES_APP_ID:Ljava/lang/String; = "resAppId"

.field public static final PARAM_RES_APP_VERSION:Ljava/lang/String; = "resAppVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 33
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->isAsync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->replyResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 37
    :cond_0
    return-object v0

    .line 39
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 40
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "appId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "error"

    if-eqz v2, :cond_3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->replyResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 46
    :cond_2
    return-object v1

    .line 48
    :cond_3
    const-string/jumbo v2, "resAppId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v0, "resAppId":Ljava/lang/String;
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->replyResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 54
    :cond_4
    return-object v1

    .line 66
    :cond_5
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    const-string v3, "IO"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 123
    return-object v1
.end method
