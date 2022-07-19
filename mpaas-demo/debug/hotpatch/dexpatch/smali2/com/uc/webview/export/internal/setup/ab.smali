.class final Lcom/uc/webview/export/internal/setup/ab;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ab;->b:Lcom/uc/webview/export/internal/setup/o;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ab;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 556
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1560
    :try_start_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/au;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/au;-><init>()V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ab;->b:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ab;->a:Ljava/lang/String;

    check-cast p1, Lcom/uc/webview/export/internal/setup/bw;

    .line 2449
    iget-object p1, p1, Lcom/uc/webview/export/internal/setup/bw;->b:Ljava/lang/String;

    .line 1560
    invoke-static {v0, v1, p1}, Lcom/uc/webview/export/internal/setup/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    return-void

    .line 1563
    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 556
    return-void
.end method
