.class final Lcom/uc/webview/export/c;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnTouchListener;

.field final synthetic b:Lcom/uc/webview/export/WebView;

.field private c:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/WebView;Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lcom/uc/webview/export/c;->b:Lcom/uc/webview/export/WebView;

    iput-object p2, p0, Lcom/uc/webview/export/c;->a:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    iput-object p2, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1226
    iget-object v0, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    .line 1227
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "enable_webview_listener_standardization"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object p1, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/uc/webview/export/c;->b:Lcom/uc/webview/export/WebView;

    invoke-interface {p1, v0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/c;->c:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1233
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
