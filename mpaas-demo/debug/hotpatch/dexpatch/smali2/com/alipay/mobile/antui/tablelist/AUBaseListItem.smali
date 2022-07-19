.class public abstract Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUBaseListItem.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AULineGroupItemInterface;


# instance fields
.field private bottomDivider:Landroid/view/View;

.field protected imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private isAP:Ljava/lang/Boolean;

.field protected isShowArrow:Z

.field private listContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field protected mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field protected mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private topDivider:Landroid/view/View;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private addBottomDivider(Z)V
    .locals 3
    .param p1, "hasLeftMargin"    # Z

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->bottomDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->bottomDivider:Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->bottomDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->bottomDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->getBottomParams(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 140
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->bottomDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method

.method private addTopDivider()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->topDivider:Landroid/view/View;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->topDivider:Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->topDivider:Landroid/view/View;

    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->getTopParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->topDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void
.end method

.method private cleanTopDivider()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->topDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private getBottomParams(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "hasLeftMargin"    # Z

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 157
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const/4 v0, 0x5

    sget v2, Lcom/alipay/mobile/antui/R$id;->listContainer:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    :cond_0
    return-object v1
.end method

.method private getTopParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 165
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 166
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_base_list_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    sget v0, Lcom/alipay/mobile/antui/R$id;->listContainer:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->listContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 55
    sget v0, Lcom/alipay/mobile/antui/R$id;->leftImageContainer:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 56
    sget v0, Lcom/alipay/mobile/antui/R$id;->list_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 57
    sget v0, Lcom/alipay/mobile/antui/R$id;->list_arrow:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 58
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->inflateLayout(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->inflateImageLayout()V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->isShowArrow:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->setArrowVisibility(Z)V

    .line 62
    iget v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->type:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->setItemPositionStyle(I)V

    .line 63
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->au_list_item_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->setBackgroundResource(I)V

    .line 64
    return-void
.end method

.method private initContent(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->listItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listItemType:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->type:I

    .line 74
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->listItem_listShowArrow:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->isShowArrow:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method public attachFlagToArrow(Landroid/view/View;)V
    .locals 3
    .param p1, "flagView"    # Landroid/view/View;

    .line 197
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 198
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 199
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE17:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->listContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void
.end method

.method public cleanBottomDivider()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->bottomDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 151
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public getArrowImage()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method protected inflateImageLayout()V
    .locals 0

    .line 69
    return-void
.end method

.method protected abstract inflateLayout(Landroid/content/Context;)V
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 81
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 82
    .local v0, "mHeightMeasureSpec":I
    invoke-super {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->onMeasure(II)V

    .line 83
    return-void
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->isAP:Ljava/lang/Boolean;

    .line 217
    return-void
.end method

.method public setArrowVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->mArrowView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_1

    .line 181
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 183
    :cond_1
    return-void
.end method

.method public setImageContainerVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->imageContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    if-eqz v0, :cond_1

    .line 187
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setVisibility(I)V

    .line 189
    :cond_1
    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 2
    .param p1, "positionStyle"    # I

    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->cleanTopDivider()V

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->cleanBottomDivider()V

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->cleanTopDivider()V

    .line 112
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addBottomDivider(Z)V

    .line 113
    return-void

    .line 106
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->cleanTopDivider()V

    .line 107
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addBottomDivider(Z)V

    .line 108
    return-void

    .line 102
    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->cleanTopDivider()V

    .line 103
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addBottomDivider(Z)V

    .line 104
    return-void

    .line 98
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addTopDivider()V

    .line 99
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addBottomDivider(Z)V

    .line 100
    return-void

    .line 94
    :pswitch_5
    invoke-direct {p0}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addTopDivider()V

    .line 95
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUBaseListItem;->addBottomDivider(Z)V

    .line 96
    return-void

    .line 121
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVisualStyle(I)V
    .locals 0
    .param p1, "visualStyle"    # I

    .line 172
    return-void
.end method
