.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeoutRunnable timeout,pullFreshTimeOut :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5WebContent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    const-string v0, "TimeoutRunnable timeout,invoke restorePullToRefresh"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->p(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/view/H5Progress;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitContent()V

    .line 824
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->q(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    .line 825
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->a:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->q(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    .line 829
    return-void
.end method
