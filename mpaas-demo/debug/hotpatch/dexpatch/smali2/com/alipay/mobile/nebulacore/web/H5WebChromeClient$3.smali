.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 419
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->d:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 423
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 425
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    const/4 v1, 0x0

    .line 426
    .local v1, "data":Lcom/alipay/mobile/h5container/api/H5Data;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->c:Ljava/lang/String;

    const-string v2, "Y"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .end local v1    # "data":Lcom/alipay/mobile/h5container/api/H5Data;
    :cond_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 432
    return-void
.end method
