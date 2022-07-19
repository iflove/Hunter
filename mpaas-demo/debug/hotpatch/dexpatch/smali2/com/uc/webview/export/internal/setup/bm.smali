.class final Lcom/uc/webview/export/internal/setup/bm;
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

    .line 214
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bm;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bm;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bm;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bm;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget v3, v3, Lcom/uc/webview/export/internal/setup/bf$a;->a:I

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/g;->a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    .line 219
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
