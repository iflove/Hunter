.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;
.super Ljava/lang/Object;
.source "TinyMenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

.field final synthetic val$finalCanvas:Landroid/graphics/Canvas;

.field final synthetic val$finalScreenShotHeight:I

.field final synthetic val$finalScreenShotWidth:I

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$screenShot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;Landroid/graphics/Canvas;Landroid/view/View;IILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

    .line 519
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->this$1:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$finalCanvas:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$rootView:Landroid/view/View;

    iput p4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$finalScreenShotWidth:I

    iput p5, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$finalScreenShotHeight:I

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$screenShot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 522
    const-string/jumbo v0, "screen capture failed"

    const-string v1, "TinyMenuPopupWindow"

    const/4 v2, 0x0

    .line 524
    .local v2, "captureFailed":Z
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$finalCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_0

    .line 525
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$rootView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 527
    :cond_0
    const/4 v2, 0x1

    .line 528
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    goto :goto_0

    .line 530
    :catchall_0
    move-exception v3

    .line 531
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v2, 0x1

    .line 535
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    move v0, v2

    .line 536
    .local v0, "finalCaptureFailed":Z
    const-string v1, "URGENT_DISPLAY"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;Z)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method
