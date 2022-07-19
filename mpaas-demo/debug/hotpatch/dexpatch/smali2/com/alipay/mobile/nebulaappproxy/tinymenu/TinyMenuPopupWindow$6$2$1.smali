.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;
.super Ljava/lang/Object;
.source "TinyMenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

.field final synthetic val$finalCaptureFailed:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;Z)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    .line 536
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->val$finalCaptureFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 539
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 540
    .local v2, "blurFactor":Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->sampling:I

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iget v0, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$finalScreenShotWidth:I

    iput v0, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->width:I

    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iget v0, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$finalScreenShotHeight:I

    iput v0, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->height:I

    .line 543
    const/16 v0, 0xe6

    const/16 v3, 0xf5

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->color:I

    .line 545
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->val$finalCaptureFailed:Z

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->this$1:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->this$1:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->val$screenShot:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/Blur;->of(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;)Landroid/graphics/Bitmap;

    move-result-object v3

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mBlurMenuBg:Landroid/graphics/Bitmap;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1402(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :cond_0
    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "TinyMenuPopupWindow"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    const-string v4, "create menu blur failed"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;->this$2:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;->this$1:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mBlurMenuBg:Landroid/graphics/Bitmap;
    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1402(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 553
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2$1;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method
