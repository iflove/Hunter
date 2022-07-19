.class final Lcom/uc/webview/export/internal/setup/ci;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/download/UpdateTask;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/ch;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ch;Lcom/uc/webview/export/utility/download/UpdateTask;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ci;->b:Lcom/uc/webview/export/internal/setup/ch;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/ci;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ci;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 267
    return-void
.end method
