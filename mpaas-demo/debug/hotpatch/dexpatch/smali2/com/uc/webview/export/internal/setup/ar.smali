.class final Lcom/uc/webview/export/internal/setup/ar;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/ap;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ap;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 55
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1058
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ap;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setup callback."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v0, "csc_ddstp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 55
    return-void
.end method
