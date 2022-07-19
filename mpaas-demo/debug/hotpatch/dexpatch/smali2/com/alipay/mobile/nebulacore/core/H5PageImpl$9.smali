.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Lcom/alipay/mobile/h5container/api/H5Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/h5container/api/H5Bridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 798
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->a:Lcom/alipay/mobile/h5container/api/H5Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)V
    .locals 3
    .param p1, "ot"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "nt"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 801
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eq v0, v1, :cond_1

    .line 805
    :cond_0
    const-string v0, "H5PageImpl"

    const-string v1, "H5_NETWORK_CHANGE but do not send from non-top page in tiny"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->a:Lcom/alipay/mobile/h5container/api/H5Bridge;

    # invokes: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/h5container/api/H5Bridge;)V
    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$200(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/h5container/api/H5Bridge;)V

    .line 810
    return-void
.end method
