.class public Lcom/uc/webview/export/WebViewFragment;
.super Landroid/app/Fragment;
.source "U4Source"


# instance fields
.field private a:Lcom/uc/webview/export/WebView;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getWebView()Lcom/uc/webview/export/WebView;
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/uc/webview/export/WebViewFragment;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 49
    :cond_0
    new-instance p1, Lcom/uc/webview/export/WebView;

    invoke-virtual {p0}, Lcom/uc/webview/export/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    .line 50
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/uc/webview/export/WebViewFragment;->b:Z

    .line 51
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 92
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/WebViewFragment;->b:Z

    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 60
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/uc/webview/export/WebViewFragment;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onResume()V

    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 70
    return-void
.end method
