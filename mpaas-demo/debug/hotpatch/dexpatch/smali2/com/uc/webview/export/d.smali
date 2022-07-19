.class final Lcom/uc/webview/export/d;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnKeyListener;

.field final synthetic b:Lcom/uc/webview/export/WebView;

.field private c:Landroid/view/View$OnKeyListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 1276
    iput-object p1, p0, Lcom/uc/webview/export/d;->b:Lcom/uc/webview/export/WebView;

    iput-object p2, p0, Lcom/uc/webview/export/d;->a:Landroid/view/View$OnKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    iput-object p2, p0, Lcom/uc/webview/export/d;->c:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/uc/webview/export/d;->c:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_1

    .line 1282
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "enable_webview_listener_standardization"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object p1, p0, Lcom/uc/webview/export/d;->c:Landroid/view/View$OnKeyListener;

    iget-object v0, p0, Lcom/uc/webview/export/d;->b:Lcom/uc/webview/export/WebView;

    invoke-interface {p1, v0, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/d;->c:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1288
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
