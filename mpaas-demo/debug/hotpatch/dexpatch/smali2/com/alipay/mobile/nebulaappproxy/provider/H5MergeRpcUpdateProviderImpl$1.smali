.class Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;
.super Ljava/lang/Object;
.source "H5MergeRpcUpdateProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;->setH5AppUpdate(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;->e:Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;->b:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "map":Ljava/util/Map;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 34
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;)V

    .line 53
    .local v2, "h5AppInstallProcess":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;->d:Ljava/util/Map;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string/jumbo v5, "x-nb-app-resp"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 54
    .local v3, "fromWholeNetwork":Z
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 55
    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 57
    invoke-virtual {v5, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setFromWholeNetwork(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 58
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 59
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v4

    .line 54
    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 61
    return-void
.end method
