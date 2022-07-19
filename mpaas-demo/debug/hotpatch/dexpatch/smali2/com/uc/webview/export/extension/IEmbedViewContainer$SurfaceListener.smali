.class public interface abstract Lcom/uc/webview/export/extension/IEmbedViewContainer$SurfaceListener;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/IEmbedViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceListener"
.end annotation


# virtual methods
.method public abstract onSurfaceAvailable(Landroid/view/Surface;IILandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "II",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSurfaceDestroyed(Landroid/view/Surface;)Z
.end method

.method public abstract onSurfaceSizeChanged(Landroid/view/Surface;II)V
.end method
