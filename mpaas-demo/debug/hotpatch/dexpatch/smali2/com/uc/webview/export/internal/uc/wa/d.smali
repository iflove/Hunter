.class public final Lcom/uc/webview/export/internal/uc/wa/d;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/uc/wa/a;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/d;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->c(Lcom/uc/webview/export/internal/uc/wa/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    return-void

    .line 545
    :catchall_0
    move-exception v0

    .line 546
    const-string v1, "SDKWaStat"

    const-string v2, "update"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    return-void
.end method
