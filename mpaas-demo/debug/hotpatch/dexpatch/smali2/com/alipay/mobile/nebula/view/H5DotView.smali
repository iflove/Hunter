.class public Lcom/alipay/mobile/nebula/view/H5DotView;
.super Landroid/view/View;
.source "H5DotView.java"


# static fields
.field private static final DEF_COLOR:I


# instance fields
.field private context:Landroid/content/Context;

.field private dotColor:I

.field private dotWidth:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "#FD3737"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebula/view/H5DotView;->DEF_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/view/H5DotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebula/view/H5DotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object v0, Lcom/alipay/mobile/nebula/R$styleable;->H5DotView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "array":Landroid/content/res/TypedArray;
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->context:Landroid/content/Context;

    .line 39
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5DotView_dotColor:I

    sget v2, Lcom/alipay/mobile/nebula/view/H5DotView;->DEF_COLOR:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->dotColor:I

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->paint:Landroid/graphics/Paint;

    .line 41
    iget v2, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->dotColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->dotWidth:I

    .line 43
    return-void
.end method

.method private getDotRadius()I
    .locals 2

    .line 61
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->dotWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5DotView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->dotWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5DotView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5DotView;->getDotRadius()I

    move-result v0

    .line 48
    .local v0, "radius":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5DotView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 49
    .local v1, "centerX":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5DotView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 50
    .local v2, "centerY":I
    int-to-float v3, v1

    int-to-float v4, v2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method public setDotColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 54
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5DotView;->invalidate()V

    .line 58
    :cond_0
    return-void
.end method

.method public setDotWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5DotView;->dotWidth:I

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5DotView;->invalidate()V

    .line 71
    return-void
.end method
