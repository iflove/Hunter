.class final Lcom/uc/webview/export/internal/setup/bb;
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

.field final synthetic b:Lcom/uc/webview/export/internal/setup/az$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/az$a;Landroid/content/Context;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bb;->b:Lcom/uc/webview/export/internal/setup/az$a;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bb;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bb;->b:Lcom/uc/webview/export/internal/setup/az$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/az$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bb;->a:Landroid/content/Context;

    const-class v2, Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bb;->b:Lcom/uc/webview/export/internal/setup/az$a;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/az$a;->b:Lcom/uc/webview/export/internal/setup/az;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/az;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/g;->a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 106
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
