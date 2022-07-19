.class public Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
.super Lcom/alipay/mobile/antui/basic/AUTextView;
.source "AUBubbleView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# static fields
.field public static final POSITION_TOP_LEFT:I = 0x0

.field public static final POSITION_TOP_MID:I = 0x2

.field public static final POSITION_TOP_RIGHT:I = 0x1


# instance fields
.field private mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/alipay/mobile/antui/R$style;->bubbleViewStyle:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/alipay/mobile/antui/R$style;->bubbleViewStyle:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/alipay/mobile/antui/R$style;->bubbleViewStyle:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, "position":I
    const-string v1, "#FF3B30"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "color":I
    if-eqz p2, :cond_0

    .line 48
    sget-object v2, Lcom/alipay/mobile/antui/R$styleable;->AUBubbleView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 50
    .local v3, "ta":Landroid/content/res/TypedArray;
    move-object v3, v2

    sget v4, Lcom/alipay/mobile/antui/R$styleable;->AUBubbleView_bubblePosition:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 51
    sget v2, Lcom/alipay/mobile/antui/R$styleable;->AUBubbleView_bubbleColor:I

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 53
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-direct {v2}, Lcom/alipay/mobile/antui/badge/bubble/a;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    .line 58
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/badge/bubble/a;->c(I)V

    .line 59
    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/badge/bubble/a;->d(I)V

    .line 61
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :goto_0
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setGravity(I)V

    .line 69
    return-void
.end method

.method private setExtraPadding()V
    .locals 9

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400199999999999aL    # 2.2

    div-double/2addr v0, v2

    .line 82
    .local v0, "extraPaddingWidth":D
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->getTextSize()F

    move-result v2

    const/high16 v3, 0x41500000    # 13.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 84
    .local v2, "extraPaddingHeight":D
    double-to-int v4, v0

    double-to-int v5, v2

    double-to-int v6, v0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double v7, v7, v2

    double-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setPadding(IIII)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/badge/bubble/a;->a()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 92
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AUTextView;->onLayout(ZIIII)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/badge/bubble/a;->a(I)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/badge/bubble/a;->b(I)V

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->setExtraPadding()V

    .line 74
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->onMeasure(II)V

    .line 75
    return-void
.end method

.method public setBubbleColor(I)Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    .locals 1
    .param p1, "color"    # I

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/badge/bubble/a;->d(I)V

    .line 127
    return-object p0
.end method

.method public setBubblePosition(I)Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;
    .locals 2
    .param p1, "position"    # I

    .line 112
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "position \u5fc5\u987b\u662f POSITION_TOP_LEFT\u3001POSITION_TOP_RIGHT\u3001POSITION_TOP_MID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/bubble/AUBubbleView;->mDrawable:Lcom/alipay/mobile/antui/badge/bubble/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/badge/bubble/a;->c(I)V

    .line 116
    return-object p0
.end method
