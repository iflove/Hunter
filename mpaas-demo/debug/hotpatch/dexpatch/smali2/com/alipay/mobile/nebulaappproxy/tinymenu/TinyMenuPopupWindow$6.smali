.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;
.super Ljava/lang/Object;
.source "TinyMenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->showMenu(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    .line 478
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "TinyMenuPopupWindow"

    .line 481
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, "temp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;->access$1200(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 485
    .local v3, "rootView":Landroid/view/View;
    move-object v6, v2

    .end local v3    # "rootView":Landroid/view/View;
    .local v6, "rootView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 487
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 488
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v3, 0x0

    .line 489
    .local v3, "screenShotWidth":I
    const/4 v4, 0x0

    .line 490
    .local v4, "screenShotHeight":I
    if-eqz v2, :cond_0

    .line 491
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 492
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move v10, v3

    move v11, v4

    goto :goto_0

    .line 490
    :cond_0
    move v10, v3

    move v11, v4

    .line 495
    .end local v3    # "screenShotWidth":I
    .end local v4    # "screenShotHeight":I
    .local v10, "screenShotWidth":I
    .local v11, "screenShotHeight":I
    :goto_0
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 499
    goto :goto_1

    .line 497
    :catchall_0
    move-exception v3

    .line 498
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    if-nez v1, :cond_1

    .line 501
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 507
    return-void

    .line 509
    :cond_1
    move-object v12, v1

    .line 510
    .local v12, "screenShot":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 512
    .local v3, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 515
    move-object v0, v3

    goto :goto_2

    .line 513
    :catchall_1
    move-exception v4

    .line 514
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 516
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "e":Ljava/lang/Throwable;
    .local v0, "canvas":Landroid/graphics/Canvas;
    :goto_2
    move-object v5, v0

    .line 517
    .local v5, "finalCanvas":Landroid/graphics/Canvas;
    move v7, v10

    .line 518
    .local v7, "finalScreenShotWidth":I
    move v8, v11

    .line 519
    .local v8, "finalScreenShotHeight":I
    new-instance v13, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;

    move-object v3, v13

    move-object v4, p0

    move-object v9, v12

    invoke-direct/range {v3 .. v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuPopupWindow$6;Landroid/graphics/Canvas;Landroid/view/View;IILandroid/graphics/Bitmap;)V

    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 565
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "temp":Landroid/graphics/Bitmap;
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "finalCanvas":Landroid/graphics/Canvas;
    .end local v6    # "rootView":Landroid/view/View;
    .end local v7    # "finalScreenShotWidth":I
    .end local v8    # "finalScreenShotHeight":I
    .end local v10    # "screenShotWidth":I
    .end local v11    # "screenShotHeight":I
    .end local v12    # "screenShot":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method
