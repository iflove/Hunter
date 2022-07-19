.class final Lcom/uc/webview/export/internal/setup/aq;
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

    .line 64
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1067
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ap;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "switch callback do nothing."

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
