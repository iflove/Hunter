.class final Lcom/uc/webview/export/internal/setup/ad;
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
.field final synthetic a:Lcom/uc/webview/export/internal/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/o;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ad;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 640
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSwitchCB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkSetupTask"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ad;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    .line 1647
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/ad;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/o;->j(Lcom/uc/webview/export/internal/setup/o;)V

    .line 1653
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/ad;->a:Lcom/uc/webview/export/internal/setup/o;

    const-string v0, "switch"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/o;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    .line 1654
    if-eqz p1, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ad;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 640
    :cond_0
    return-void
.end method
