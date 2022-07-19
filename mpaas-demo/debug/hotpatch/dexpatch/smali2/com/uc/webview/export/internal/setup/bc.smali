.class final Lcom/uc/webview/export/internal/setup/bc;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/uc/webview/export/internal/setup/az$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/az$a;Landroid/content/Context;Z)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bc;->c:Lcom/uc/webview/export/internal/setup/az$a;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bc;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/uc/webview/export/internal/setup/bc;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bc;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bc;->c:Lcom/uc/webview/export/internal/setup/az$a;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/az$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bc;->c:Lcom/uc/webview/export/internal/setup/az$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/az$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/g;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bc;->c:Lcom/uc/webview/export/internal/setup/az$a;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/az$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bc;->c:Lcom/uc/webview/export/internal/setup/az$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/az$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v3, p0, Lcom/uc/webview/export/internal/setup/bc;->b:Z

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Lcom/uc/webview/export/internal/setup/g;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;ZZZ)V

    .line 120
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
