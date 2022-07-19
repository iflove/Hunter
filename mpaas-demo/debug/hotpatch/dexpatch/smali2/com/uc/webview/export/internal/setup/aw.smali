.class final Lcom/uc/webview/export/internal/setup/aw;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/av;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/av;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aw;->a:Lcom/uc/webview/export/internal/setup/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 156
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/j;->a(Landroid/content/Context;)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method
