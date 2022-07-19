.class final Lcom/uc/webview/export/extension/a;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/uc/webview/export/extension/a;->a:Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 89
    check-cast p1, Ljava/lang/Integer;

    .line 1092
    iget-object v0, p0, Lcom/uc/webview/export/extension/a;->a:Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;->onInit(I)V

    .line 89
    return-void
.end method
