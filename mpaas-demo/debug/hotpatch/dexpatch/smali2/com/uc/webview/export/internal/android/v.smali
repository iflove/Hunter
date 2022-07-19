.class final Lcom/uc/webview/export/internal/android/v;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/u;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/u;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/v;->a:Lcom/uc/webview/export/internal/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 25
    nop

    .line 26
    invoke-static {}, Lcom/uc/webview/export/internal/android/u;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/interfaces/IWebView;

    .line 27
    invoke-interface {v1}, Lcom/uc/webview/export/internal/interfaces/IWebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 28
    nop

    .line 29
    const/4 v0, 0x1

    goto :goto_1

    .line 31
    :cond_0
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    if-nez v0, :cond_3

    .line 34
    invoke-static {}, Lcom/uc/webview/export/internal/android/u;->b()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 36
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->getPrintLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const-string v0, "SDKWaStat"

    const-string v1, "WebViewDetector:onPause"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->saveData()V

    .line 40
    invoke-static {}, Lcom/uc/webview/export/internal/android/u;->c()I

    .line 43
    :cond_3
    return-void
.end method
