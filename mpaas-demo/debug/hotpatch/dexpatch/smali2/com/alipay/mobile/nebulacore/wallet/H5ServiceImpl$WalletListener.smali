.class Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;
.super Ljava/lang/Object;
.source "H5ServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalletListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 401
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->a:Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->b:Landroid/os/Bundle;

    .line 403
    return-void
.end method


# virtual methods
.method public onPageCreated(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 424
    return-void
.end method

.method public onPageDestroyed(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 428
    return-void
.end method

.method public onSessionCreated(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 3
    .param p1, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;

    .line 407
    instance-of v0, p1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v0, :cond_0

    .line 408
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->setParams(Landroid/os/Bundle;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5ServiceImpl$WalletListener;->b:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "appId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionCreated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5ServiceImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerSessionCreateLink(Lcom/alipay/mobile/h5container/api/H5Session;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public onSessionDestroyed(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 2
    .param p1, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;

    .line 419
    const-string v0, "laiwangDomains"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/h5container/api/H5SsoFlagHolder;->setFlag(Ljava/lang/String;Z)V

    .line 420
    return-void
.end method
