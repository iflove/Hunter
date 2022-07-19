.class public Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;
.source "AUCheckBoxListItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;->initSelfViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private initSelfViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;->initCheckIcon()V

    .line 44
    const/4 v0, 0x2

    .line 45
    .local v0, "iconState":I
    if-eqz p2, :cond_0

    .line 46
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->AUCheckIcon:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    .local v2, "array":Landroid/content/res/TypedArray;
    move-object v2, v1

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->AUCheckIcon_checkIconState:I

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 48
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .end local v2    # "array":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;->setCheckstatus(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getIconState()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->getIconState()I

    move-result v0

    return v0
.end method

.method protected getImageVerticalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public getLeftCheckIcon()Lcom/alipay/mobile/antui/common/AUCheckIcon;
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;->getLeftCheckIcon()Lcom/alipay/mobile/antui/common/AUCheckIcon;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftImageSize(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckstatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUCheckBoxListItem;->mLeftCheckIcon:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setIconState(I)V

    .line 68
    return-void
.end method
