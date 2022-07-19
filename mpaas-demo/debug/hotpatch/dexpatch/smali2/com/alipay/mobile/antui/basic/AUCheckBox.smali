.class public Lcom/alipay/mobile/antui/basic/AUCheckBox;
.super Landroid/widget/CheckBox;
.source "AUCheckBox.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# instance fields
.field private defalutTextSize:F

.field private dynamicTextSize:Z

.field private isAP:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->dynamicTextSize:Z

    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->defalutTextSize:F

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->setScaleSize()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->dynamicTextSize:Z

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->dynamicTextSize:Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->TextAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->TextAttr_dynamicTextSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->dynamicTextSize:Z

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->defalutTextSize:F

    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->setScaleSize()V

    .line 63
    return-void
.end method

.method private setScaleSize()V
    .locals 4

    .line 73
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->dynamicTextSize:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 75
    .local v0, "gear":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->defalutTextSize:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 76
    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getTextSize(FI)F

    move-result v1

    .line 77
    .local v1, "scaleSize":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->getTextSize()F

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v2

    .line 78
    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x2

    invoke-super {p0, v2, v1}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 82
    .end local v0    # "gear":I
    .end local v1    # "scaleSize":F
    :cond_0
    return-void
.end method


# virtual methods
.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/CheckBox;->onLayout(ZIIII)V

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->setScaleSize()V

    .line 47
    return-void
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->isAP:Ljava/lang/Boolean;

    .line 94
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 51
    invoke-static {p1}, Lcom/alipay/mobile/antui/basic/AUViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCheckBox;->defalutTextSize:F

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCheckBox;->setScaleSize()V

    .line 70
    return-void
.end method
