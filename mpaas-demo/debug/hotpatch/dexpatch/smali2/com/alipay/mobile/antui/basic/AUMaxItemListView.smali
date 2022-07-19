.class public Lcom/alipay/mobile/antui/basic/AUMaxItemListView;
.super Lcom/alipay/mobile/antui/basic/AUListView;
.source "AUMaxItemListView.java"


# static fields
.field public static final DEFAULT_MAX_ITEMS:I = 0x5


# instance fields
.field private maxItems:I

.field private singleItemHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->MaxItemsHeightListView_maxItems:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->maxItems:I

    .line 32
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->MaxItemsHeightListView_singleItemHeight:I

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->singleItemHeight:F

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 40
    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->maxItems:I

    int-to-float v2, v1

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->singleItemHeight:F

    mul-float v2, v2, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUMaxItemListView;->getDividerHeight()I

    move-result v3

    mul-int v1, v1, v3

    int-to-float v1, v1

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 41
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 42
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUListView;->onMeasure(II)V

    .line 43
    return-void
.end method
