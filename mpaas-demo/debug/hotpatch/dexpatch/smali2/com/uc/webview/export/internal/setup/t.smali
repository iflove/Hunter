.class final Lcom/uc/webview/export/internal/setup/t;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/o;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/o;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/t;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1068
    nop

    .line 2071
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/t;->a:Lcom/uc/webview/export/internal/setup/o;

    .line 2072
    const-string v0, "be_del_fi"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    .line 2074
    if-eqz p1, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/t;->a:Lcom/uc/webview/export/internal/setup/o;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1068
    :cond_0
    return-void
.end method
