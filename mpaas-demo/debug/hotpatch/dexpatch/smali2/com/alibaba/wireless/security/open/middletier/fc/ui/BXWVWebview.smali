.class public Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;
.super Landroid/taobao/windvane/extra/uc/WVUCWebView;

# interfaces
.implements Lcom/alibaba/wireless/security/open/middletier/fc/ui/IBXWebview;


# instance fields
.field a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;

    return-void
.end method


# virtual methods
.method public bxDestroy()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;->removeAllViews()V

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;->coreDestroy()V

    return-void
.end method

.method public bxLoadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bxSetUp(Landroid/content/Context;Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;->a:Lcom/alibaba/wireless/security/open/middletier/fc/ui/IUrlVerifyCallback;

    new-instance p2, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview$1;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview$1;-><init>(Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/wireless/security/open/middletier/fc/ui/BXWVWebview;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    return-void
.end method
