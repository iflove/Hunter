.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;

    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;->b:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;->b:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 358
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;->a:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 359
    .local v1, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h5_app_start createPage appId={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;->a:Landroid/os/Bundle;

    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "} params={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;->a:Landroid/os/Bundle;

    .line 360
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    const-string v3, "H5NebulaService"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v2

    .line 362
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "backgroundColor"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 361
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 363
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;->b:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->c:Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageReadyListener;->getH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 364
    return-void
.end method
