.class final Lcom/uc/webview/export/extension/b;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/uc/webview/export/extension/b;->a:Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 95
    check-cast p1, Landroid/os/Bundle;

    .line 1098
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    const-string v1, "format"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1100
    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1101
    iget-object v2, p0, Lcom/uc/webview/export/extension/b;->a:Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;

    invoke-interface {v2, v0, v1, p1}, Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;->onDecode(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    return-void
.end method
