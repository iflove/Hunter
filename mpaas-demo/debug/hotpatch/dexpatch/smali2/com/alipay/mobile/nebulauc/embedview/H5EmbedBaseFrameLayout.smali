.class public Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "H5EmbedBaseFrameLayout.java"


# instance fields
.field private borderDrawable:Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

.field private borderRadius:F

.field private borderWidth:F

.field private tmpPath:Landroid/graphics/Path;

.field private tmpRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpPath:Landroid/graphics/Path;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpPath:Landroid/graphics/Path;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpPath:Landroid/graphics/Path;

    .line 41
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 62
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "needClip":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderWidth:F

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderWidth:F

    div-float/2addr v7, v3

    sub-float/2addr v6, v7

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderDrawable:Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->drawBackground(Landroid/graphics/Canvas;)V

    .line 74
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderDrawable:Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->drawBorder(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderDrawable:Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->drawBackground(Landroid/graphics/Canvas;)V

    .line 84
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderDrawable:Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;->drawBorder(Landroid/graphics/Canvas;)V

    .line 89
    :cond_4
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onReceivedRender(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 50
    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->generateBackgroundDrawable(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;I)Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderDrawable:Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    .line 51
    const-string v0, "borderWidth"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderWidth:F

    .line 52
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 53
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderWidth:F

    .line 55
    const-string v0, "borderRadius"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderRadius:F

    .line 56
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedBaseFrameLayout;->borderRadius:F

    .line 58
    :cond_0
    return-void
.end method
