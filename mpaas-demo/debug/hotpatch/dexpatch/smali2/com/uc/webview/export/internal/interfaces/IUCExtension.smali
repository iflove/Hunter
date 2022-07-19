.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IUCExtension;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# virtual methods
.method public abstract getCoreStatus(ILandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
.end method

.method public abstract getUCSettings()Lcom/uc/webview/export/extension/UCSettings;
.end method

.method public abstract setClient(Lcom/uc/webview/export/extension/UCClient;)V
.end method

.method public abstract setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V
.end method

.method public abstract setIsPreRender(Z)V
.end method

.method public abstract setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V
.end method

.method public abstract setTextSelectionClient(Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
