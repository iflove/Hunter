.class final Lcom/uc/webview/export/internal/setup/bx;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bx;->a:Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 179
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1182
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setup callback."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 179
    :cond_0
    return-void
.end method
