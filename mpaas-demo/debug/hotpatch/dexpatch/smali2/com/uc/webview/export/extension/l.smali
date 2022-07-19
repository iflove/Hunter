.class final Lcom/uc/webview/export/extension/l;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/download/UpdateTask;

.field final synthetic b:Lcom/uc/webview/export/extension/k;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/extension/k;Lcom/uc/webview/export/utility/download/UpdateTask;)V
    .locals 0

    .line 1522
    iput-object p1, p0, Lcom/uc/webview/export/extension/l;->b:Lcom/uc/webview/export/extension/k;

    iput-object p2, p0, Lcom/uc/webview/export/extension/l;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/uc/webview/export/extension/l;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1526
    return-void
.end method
