.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;
.super Ljava/lang/Object;
.source "TinyAppUpdateCallBackManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->onResult(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onResult...install : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinyAppUpdateCallBackManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 81
    .local v0, "updateResult":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 82
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->a:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const-string/jumbo v2, "success"

    if-eqz p1, :cond_0

    .line 85
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;

    const-string/jumbo v3, "updateReady"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->a:Lcom/alibaba/fastjson/JSONObject;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sendToWebFromMainProcess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->access$000(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 89
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;

    const-string/jumbo v3, "updateFailed"

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager$1;->a:Lcom/alibaba/fastjson/JSONObject;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->sendToWebFromMainProcess(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;->access$000(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppUpdateCallBackManager;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v0    # "updateResult":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onResult....e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
