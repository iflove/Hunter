.class final Lcom/uc/webview/export/internal/setup/ax;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/av;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/av;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ax;->a:Lcom/uc/webview/export/internal/setup/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 251
    const/16 v0, 0x13e

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 252
    sget-boolean v0, Lcom/uc/webview/export/internal/setup/af;->b:Z

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->a(Landroid/content/Context;)V

    .line 256
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->c()V

    .line 257
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->d()V

    .line 258
    const/16 v0, 0x13f

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method
