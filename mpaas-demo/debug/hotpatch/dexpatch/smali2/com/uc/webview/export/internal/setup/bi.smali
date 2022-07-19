.class final Lcom/uc/webview/export/internal/setup/bi;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bf$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bf$a;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 121
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/g;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-boolean v3, v3, Lcom/uc/webview/export/internal/setup/bf$a;->b:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/uc/webview/export/internal/setup/g;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;ZZZ)V

    .line 126
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
