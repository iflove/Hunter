.class Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->bxSetUp(Landroid/content/Context;Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;


# direct methods
.method constructor <init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview$1;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview$1;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;

    iget-object v0, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview$1;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;

    iget-object v0, v0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWebview;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;

    invoke-interface {v0, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
