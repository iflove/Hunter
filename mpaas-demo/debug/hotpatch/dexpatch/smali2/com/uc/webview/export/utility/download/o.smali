.class final Lcom/uc/webview/export/utility/download/o;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/download/DownloadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/uc/webview/export/utility/download/UpdateTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/utility/download/UpdateTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/uc/webview/export/utility/download/o;->b:Lcom/uc/webview/export/utility/download/UpdateTask;

    iput-object p2, p0, Lcom/uc/webview/export/utility/download/o;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 314
    nop

    .line 1317
    iget-object p1, p0, Lcom/uc/webview/export/utility/download/o;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 314
    return-void
.end method
