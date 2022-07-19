.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/Blur;
.super Ljava/lang/Object;
.source "Blur.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static javaBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 80
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v0

    .line 81
    .local v2, "stackBlurManager":Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;->process(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    return-object v0

    .line 83
    .end local v2    # "stackBlurManager":Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/StackBlurManager;
    :catchall_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "blur"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static declared-synchronized of(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "factor"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;

    const-class v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/Blur;

    monitor-enter v0

    .line 38
    :try_start_0
    iget v1, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->width:I

    iget v2, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->sampling:I

    div-int/2addr v1, v2

    .line 39
    .local v1, "width":I
    iget v2, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->height:I

    iget v3, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->sampling:I

    div-int/2addr v2, v3

    .line 41
    .local v2, "height":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/Helper;->hasZero([I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 42
    monitor-exit v0

    return-object v5

    .line 45
    :cond_0
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 47
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v5

    .line 48
    .local v7, "canvas":Landroid/graphics/Canvas;
    move-object v7, v6

    iget v8, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->sampling:I

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v8, v9, v8

    iget v10, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->sampling:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 49
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    move-object v8, v5

    .line 50
    .local v8, "paint":Landroid/graphics/Paint;
    move-object v8, v6

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFlags(I)V

    .line 51
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget v9, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->color:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    .local v6, "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    const/4 v9, 0x0

    invoke-virtual {v7, p1, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v10, 0x12

    if-lt v9, v10, :cond_1

    .line 58
    :try_start_2
    iget v9, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->radius:I

    invoke-static {p0, v3, v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/Blur;->rs(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v9

    .line 61
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v9

    .line 63
    :cond_1
    :try_start_3
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/Blur;->javaBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v3, v9

    .line 66
    :goto_0
    iget v9, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->sampling:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v9, v4, :cond_2

    .line 67
    monitor-exit v0

    return-object v3

    .line 69
    :cond_2
    if-eqz v3, :cond_3

    .line 70
    :try_start_4
    iget v5, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->width:I

    iget v9, p2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->height:I

    invoke-static {v3, v5, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 71
    .local v4, "scaled":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    monitor-exit v0

    return-object v4

    .line 74
    .end local v4    # "scaled":Landroid/graphics/Bitmap;
    :cond_3
    monitor-exit v0

    return-object v5

    .line 37
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "filter":Landroid/graphics/PorterDuffColorFilter;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "source":Landroid/graphics/Bitmap;
    .end local p2    # "factor":Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static rs(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "rs":Landroid/renderscript/RenderScript;
    const/4 v1, 0x0

    .line 94
    .local v1, "input":Landroid/renderscript/Allocation;
    const/4 v2, 0x0

    .line 95
    .local v2, "output":Landroid/renderscript/Allocation;
    const/4 v3, 0x0

    .line 97
    .local v3, "blur":Landroid/renderscript/ScriptIntrinsicBlur;
    :try_start_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 98
    move-object v0, v4

    new-instance v5, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {v5}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {v4, v5}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 99
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v5, 0x1

    invoke-static {v0, p1, v4, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v4

    move-object v1, v4

    .line 101
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v4

    move-object v2, v4

    .line 102
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 104
    move-object v3, v4

    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 105
    int-to-float v4, p2

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 106
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 107
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 112
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 115
    :cond_1
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 118
    :cond_2
    if-eqz v3, :cond_3

    .line 119
    invoke-virtual {v3}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 123
    :cond_3
    return-object p1

    .line 109
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 112
    :cond_4
    if-eqz v1, :cond_5

    .line 113
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 115
    :cond_5
    if-eqz v2, :cond_6

    .line 116
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 118
    :cond_6
    if-eqz v3, :cond_7

    .line 119
    invoke-virtual {v3}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_7
    throw v4
.end method
