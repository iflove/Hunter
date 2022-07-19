.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->sendToWebFromMainProcess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    .line 732
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->d:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 736
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 737
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 738
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isXiaoChengXu(Ljava/lang/String;)Z

    move-result v0

    .line 739
    .local v0, "openMulti":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " jsonObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " openMulti "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5ServiceImpl"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    if-nez v0, :cond_1

    .line 743
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->d:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    move-object v4, v1

    .line 744
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 745
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v3

    move-object v5, v1

    .line 746
    .local v5, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    move-object v5, v3

    if-eqz v3, :cond_0

    .line 747
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v5, v3, v6, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 750
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    :cond_0
    return-void

    .line 751
    :cond_1
    const-class v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 753
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 752
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-object v4, v1

    .line 754
    .local v4, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v4, v3

    if-eqz v3, :cond_3

    .line 755
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 756
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->b:Ljava/lang/String;

    const-string v6, "func"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->c:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_2

    .line 758
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "param"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$5;->a:Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->sendDataToTinyProcess(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 764
    .end local v0    # "openMulti":Z
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_3
    return-void
.end method
