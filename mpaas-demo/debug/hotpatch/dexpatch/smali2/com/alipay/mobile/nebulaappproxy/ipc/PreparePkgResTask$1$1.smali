.class Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "PreparePkgResTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "limit"    # Z

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepareUpdate...result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreparePkgResTask"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "success"

    const/4 v1, 0x1

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 90
    if-nez p1, :cond_2

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 93
    :goto_0
    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->a:Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->c:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask$1;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/PreparePkgResTask;->replyResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 103
    return-void
.end method
