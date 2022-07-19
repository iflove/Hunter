.class final Lcom/uc/webview/export/b;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnLongClickListener;

.field final synthetic b:Lcom/uc/webview/export/WebView;

.field private c:Landroid/view/View$OnLongClickListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1196
    iput-object p1, p0, Lcom/uc/webview/export/b;->b:Lcom/uc/webview/export/WebView;

    iput-object p2, p0, Lcom/uc/webview/export/b;->a:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    iput-object p2, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 1201
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "enable_webview_listener_standardization"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object p1, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Lcom/uc/webview/export/b;->b:Lcom/uc/webview/export/WebView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/b;->c:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 1207
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
