.class final Lcom/uc/webview/export/internal/setup/bd;
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

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/uc/webview/export/internal/setup/az$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/az$a;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bd;->c:Lcom/uc/webview/export/internal/setup/az$a;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bd;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/bd;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bd;->c:Lcom/uc/webview/export/internal/setup/az$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/az$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bd;->a:Landroid/content/Context;

    const-class v2, Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bd;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/g;->a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    .line 144
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
