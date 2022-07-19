.class public Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "EnlargeDragShadowBuilder.java"


# instance fields
.field private mScaleFactor:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->mScaleFactor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->mScaleFactor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 7
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "touch"    # Landroid/graphics/Point;

    .line 29
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 32
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v4, v1

    mul-double v4, v4, v2

    double-to-int v1, v4

    .line 36
    .local v1, "height":I
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;->mScaleFactor:Landroid/graphics/Point;

    .line 42
    sget v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionX:F

    int-to-float v3, v0

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 43
    .local v2, "i":I
    sget v3, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionY:F

    int-to-float v4, v1

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 45
    .local v3, "j":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " i:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionX:F

    int-to-float v6, v0

    mul-float v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\r\n  j:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionY:F

    int-to-float v6, v1

    mul-float v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ItemDragCallback"

    invoke-static {v5, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 47
    return-void
.end method
