.class public Lcom/alipay/mobile/antui/pop/AUPopBar;
.super Landroid/widget/FrameLayout;
.source "AUPopBar.java"


# instance fields
.field private cancelButton:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private context:Landroid/content/Context;

.field private leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mBackground:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mContentView:Landroid/widget/FrameLayout;

.field private rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

.field private tipsDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private tipsTextContainer:Landroid/view/View;

.field private tipsTextView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 45
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 46
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->mContentView:Landroid/widget/FrameLayout;

    .line 47
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 48
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v1

    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 50
    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/ViewUtils;->isNavBarVisible(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/antui/utils/ViewUtils;->getNavBarHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v1, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 57
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/pop/AUPopBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 62
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopBar;->initView(Landroid/content/Context;)V

    .line 63
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AUPopBar \u6784\u9020\u65b9\u6cd5\u53c2\u6570\u9700\u8981 Activity \u5b9e\u4f8b"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->context:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_pop_bar_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->pop_bar_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->mBackground:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 70
    sget v1, Lcom/alipay/mobile/antui/R$id;->left_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 71
    sget v1, Lcom/alipay/mobile/antui/R$id;->tips_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 72
    sget v1, Lcom/alipay/mobile/antui/R$id;->tip_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 73
    sget v1, Lcom/alipay/mobile/antui/R$id;->tips_text_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextContainer:Landroid/view/View;

    .line 75
    sget v1, Lcom/alipay/mobile/antui/R$id;->cancel_ly:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->cancelButton:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 76
    sget v1, Lcom/alipay/mobile/antui/R$id;->right_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->cancelButton:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    new-instance v2, Lcom/alipay/mobile/antui/pop/AUPopBar$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/pop/AUPopBar$1;-><init>(Lcom/alipay/mobile/antui/pop/AUPopBar;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    new-instance v2, Lcom/alipay/mobile/antui/pop/AUPopBar$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/pop/AUPopBar$2;-><init>(Lcom/alipay/mobile/antui/pop/AUPopBar;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->setTipsTextViewLeftPadding()V

    .line 90
    return-void
.end method

.method private setTipsTextViewLeftPadding()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextContainer:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    return-void
.end method


# virtual methods
.method public disappearAction()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->context:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/antui/R$anim;->au_pop_bar_zoom_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 209
    .local v0, "mHiddenAction":Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 211
    return-void
.end method

.method public getCancleButton()Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->cancelButton:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    return-object v0
.end method

.method public getLeftImageView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setBackgroundColor(I)V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->setTipsTextViewLeftPadding()V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public getRightBotton()Lcom/alipay/mobile/antui/basic/AUButton;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method public getTipsDescTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getTipsTextView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public hideLeftImageView(Z)V
    .locals 2
    .param p1, "isHide"    # Z

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->leftImageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->setTipsTextViewLeftPadding()V

    .line 122
    return-void
.end method

.method public hideRightButton(Z)V
    .locals 2
    .param p1, "isHide"    # Z

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 201
    return-void
.end method

.method public setPopBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->mBackground:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->mBackground:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 216
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public setRightBottonText(Ljava/lang/String;)V
    .locals 2
    .param p1, "rightBottonText"    # Ljava/lang/String;

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->rightBotton:Lcom/alipay/mobile/antui/basic/AUButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 172
    return-void
.end method

.method public setTipsDescText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "tipsDescText"    # Ljava/lang/CharSequence;

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsDescTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public setTipsText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "tipsString"    # Ljava/lang/CharSequence;

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->tipsTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 144
    return-void
.end method

.method public show()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method
