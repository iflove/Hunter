.class final Lcom/alipay/mobile/antui/picker/AUWheelView$1;
.super Landroid/graphics/drawable/Drawable;
.source "AUWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUWheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUWheelView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 268
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUWheelView;->obtainSelectedAreaBorder()[I
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$100(Lcom/alipay/mobile/antui/picker/AUWheelView;)[I

    move-result-object v0

    .line 272
    .local v0, "areaBorder":[I
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$200(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v3, v1

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v4, v2

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$200(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    int-to-float v5, v2

    aget v1, v0, v1

    int-to-float v6, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->paint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$300(Lcom/alipay/mobile/antui/picker/AUWheelView;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$200(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v3, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v4, v2

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->viewWidth:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$200(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    int-to-float v5, v2

    aget v1, v0, v1

    int-to-float v6, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->paint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$300(Lcom/alipay/mobile/antui/picker/AUWheelView;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 274
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 279
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 284
    return-void
.end method
