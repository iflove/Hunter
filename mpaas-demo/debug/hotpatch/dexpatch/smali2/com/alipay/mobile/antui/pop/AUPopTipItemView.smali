.class public Lcom/alipay/mobile/antui/pop/AUPopTipItemView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUPopTipItemView.java"


# static fields
.field public static final TRIANGLE_VISIBLE_BOTTOM:I = -0x1

.field public static final TRIANGLE_VISIBLE_NONE:I = 0x0

.field public static final TRIANGLE_VISIBLE_TOP:I = 0x1


# instance fields
.field private arrowWidth:I

.field private mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mCloseBtn:Landroid/view/View;

.field private mContentTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mContext:Landroid/content/Context;

.field private mLeftIcon:Lcom/alipay/mobile/antui/basic/AURoundImageView;

.field private mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private mTipDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private triangleVisible:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->triangleVisible:I

    .line 40
    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->arrowWidth:I

    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->triangleVisible:I

    .line 40
    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->arrowWidth:I

    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mContext:Landroid/content/Context;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->setOrientation(I)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$layout;->au_tip_pop_item_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 57
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 58
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mContentTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 59
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 60
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 61
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_up_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 62
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_down_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 63
    sget v0, Lcom/alipay/mobile/antui/R$id;->cancel_ly:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mCloseBtn:Landroid/view/View;

    .line 64
    sget v0, Lcom/alipay/mobile/antui/R$id;->tip_desc:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$id;->left_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURoundImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mLeftIcon:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_arrow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->arrowWidth:I

    .line 68
    iget v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->triangleVisible:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->setTriangleVisible(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getCloseButton()Landroid/view/View;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mCloseBtn:Landroid/view/View;

    return-object v0
.end method

.method public getLeftIcon()Lcom/alipay/mobile/antui/basic/AURoundImageView;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mLeftIcon:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    return-object v0
.end method

.method public getTipButton()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getTipDescTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getTipTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getTitleTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getTriangleVisible()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->triangleVisible:I

    return v0
.end method

.method public setBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 310
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 313
    return-void
.end method

.method public setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mCloseBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mCloseBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mCloseBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    return-void
.end method

.method public setLeftIconBgStyle(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "radius"    # I

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mLeftIcon:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    .line 299
    .local v1, "drawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v1, v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 300
    int-to-float v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 301
    return-void
.end method

.method public setTipButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "actionText"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method public setTipDescText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "tipText"    # Ljava/lang/CharSequence;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public setTipOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method

.method public setTipText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "tipText"    # Ljava/lang/CharSequence;

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setTitleAndContent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mContentTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTipDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mContentTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mContentTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setTriangleLeftMargin(I)V
    .locals 5
    .param p1, "left"    # I

    .line 110
    iget v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->arrowWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 111
    .local v0, "position":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    move-object v3, v2

    .line 112
    .local v3, "bottomLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    const/4 v1, 0x0

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 114
    const/16 v4, 0x33

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 116
    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .local v2, "topLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v4

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 118
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 119
    const/16 v1, 0x53

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->requestLayout()V

    .line 121
    return-void
.end method

.method public setTriangleRightMargin(I)V
    .locals 5
    .param p1, "right"    # I

    .line 129
    iget v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->arrowWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 130
    .local v0, "position":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    move-object v3, v2

    .line 131
    .local v3, "bottomLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 132
    const/4 v1, 0x0

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 133
    const/16 v4, 0x35

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 135
    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .local v2, "topLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v4

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 137
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 138
    const/16 v1, 0x55

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->requestLayout()V

    .line 140
    return-void
.end method

.method public setTriangleVisible(I)V
    .locals 6
    .param p1, "triangleVisible"    # I

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_arrow_margin_top_or_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 81
    .local v0, "marginTopOrBottom":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    move-object v3, v2

    .line 82
    .local v3, "bottomLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 83
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x30

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    .local v2, "topLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 87
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 89
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 90
    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 91
    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 92
    iput p1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->triangleVisible:I

    return-void

    .line 93
    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    .line 94
    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 96
    iput p1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->triangleVisible:I

    return-void

    .line 97
    :cond_1
    if-nez p1, :cond_2

    .line 98
    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mTopIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 99
    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->mBottomIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 100
    iput p1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipItemView;->triangleVisible:I

    .line 102
    :cond_2
    return-void
.end method
