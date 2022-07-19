.class public Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;
.super Lcom/alipay/mobile/antui/basic/AUCornerListView;
.source "AUMaxItemCornerListView.java"


# instance fields
.field private maxItems:F

.field private singleItemHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUCornerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->AUInputBox:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->MaxItemsHeightListView_maxItems:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->maxItems:F

    .line 32
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->MaxItemsHeightListView_singleItemHeight:I

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->singleItemHeight:F

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
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 40
    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->maxItems:F

    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->singleItemHeight:F

    mul-float v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->getDividerHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 41
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 42
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->onMeasure(II)V

    .line 43
    return-void
.end method

.method public setMaxItems(F)V
    .locals 0
    .param p1, "maxItems"    # F

    .line 52
    iput p1, p0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->maxItems:F

    .line 54
    return-void
.end method

.method public setSingleItemHeight(F)V
    .locals 0
    .param p1, "singleItemHeight"    # F

    .line 62
    iput p1, p0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->singleItemHeight:F

    .line 64
    return-void
.end method
