.class final Lcom/uc/webview/export/internal/setup/bh;
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

    .line 94
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bh;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 97
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bh;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget v1, v1, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bh;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 97
    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 99
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
