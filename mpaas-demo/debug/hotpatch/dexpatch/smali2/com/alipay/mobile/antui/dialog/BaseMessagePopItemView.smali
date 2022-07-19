.class public abstract Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "BaseMessagePopItemView.java"


# instance fields
.field private horizonPadding:I

.field protected mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

.field protected mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field protected mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private makeTitleMax:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->makeTitleMax:Z

    .line 42
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->initView(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->getHorizonPadding(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->horizonPadding:I

    .line 44
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->setPadding(IIII)V

    .line 45
    return-void
.end method

.method private setBadgeInfo(Ljava/util/HashMap;)V
    .locals 4
    .param p1, "ext"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->dismiss()V

    .line 157
    if-eqz p1, :cond_3

    .line 158
    const-string v0, "badgeType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    .local v1, "badgeType":Ljava/lang/Object;
    move-object v1, v0

    instance-of v0, v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "badgeText"

    if-eqz v0, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 161
    const-string/jumbo v0, "msg_redpoint"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setRedPoint(Z)V

    return-void

    .line 163
    :cond_0
    const-string/jumbo v0, "msg_text"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "badgeText":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    sget-object v3, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndMsgText(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 166
    .end local v0    # "badgeText":Ljava/lang/String;
    return-void

    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .restart local v0    # "badgeText":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    sget-object v3, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndMsgText(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 169
    .end local v0    # "badgeText":Ljava/lang/String;
    return-void

    .line 170
    :cond_2
    instance-of v0, v1, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v1    # "badgeType":Ljava/lang/Object;
    :cond_3
    return-void

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBadgeInfo ext : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMessagePopItemView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private setIconView(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V
    .locals 5
    .param p1, "imageView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "iconInfo"    # Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    .line 122
    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 123
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 124
    return-void

    .line 126
    :cond_0
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 127
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->iconRes:I

    if-eqz v1, :cond_1

    .line 128
    iget v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->iconRes:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 129
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    return-void

    .line 130
    :cond_1
    iget-object v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 131
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 132
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    return-void

    .line 134
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    return-void

    .line 136
    :cond_3
    iget v1, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 137
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 138
    iget-object v0, p2, Lcom/alipay/mobile/antui/iconfont/model/IconInfo;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 139
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 140
    .local v2, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    move-object v2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_ICON_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v1

    .line 141
    .local v3, "iconfontColor":Ljava/lang/Integer;
    move-object v3, v0

    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_ICON_SIZE:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimension(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 145
    .local v1, "iconfontSize":Ljava/lang/Float;
    move-object v1, v0

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 148
    .end local v1    # "iconfontSize":Ljava/lang/Float;
    .end local v2    # "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    .end local v3    # "iconfontColor":Ljava/lang/Integer;
    :cond_5
    return-void

    .line 149
    :cond_6
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 151
    return-void
.end method


# virtual methods
.method protected abstract getHorizonPadding(Landroid/content/Context;)I
.end method

.method protected abstract initView(Landroid/content/Context;)V
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->makeTitleMax:Z

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 58
    .local v2, "mWidth":I
    move v2, v0

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "spec":I
    move v3, v1

    .line 59
    .local v3, "badgeWidth":I
    const/4 v4, 0x0

    .line 61
    .local v4, "iconWidth":I
    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->measure(II)V

    .line 62
    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    move-object v7, v6

    .line 63
    .local v7, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    move-object v7, v5

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getMeasuredWidth()I

    move-result v5

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v8

    .end local v3    # "badgeWidth":I
    .local v5, "badgeWidth":I
    goto :goto_0

    .line 66
    .end local v5    # "badgeWidth":I
    .restart local v3    # "badgeWidth":I
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getMeasuredWidth()I

    move-result v5

    .line 69
    .end local v3    # "badgeWidth":I
    .restart local v5    # "badgeWidth":I
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->measure(II)V

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    move-object v3, v6

    .line 72
    .local v3, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getMeasuredWidth()I

    move-result v1

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v6

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v4, v1, v6

    goto :goto_1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getMeasuredWidth()I

    move-result v4

    .line 79
    .end local v3    # "lp2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    sub-int v3, v2, v5

    sub-int/2addr v3, v4

    iget v6, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->horizonPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMaxWidth(I)V

    .line 80
    .end local v0    # "spec":I
    .end local v2    # "mWidth":I
    .end local v4    # "iconWidth":I
    .end local v5    # "badgeWidth":I
    .end local v7    # "lp1":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_2

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMaxWidth(I)V

    .line 85
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->onMeasure(II)V

    .line 86
    return-void
.end method

.method public setIconfontSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method public setMakeTitleMax(Z)V
    .locals 0
    .param p1, "makeTitleMax"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->makeTitleMax:Z

    .line 50
    return-void
.end method

.method public setPopItem(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V
    .locals 2
    .param p1, "item"    # Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    .line 89
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v1, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->icon:Lcom/alipay/mobile/antui/iconfont/model/IconInfo;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->setIconView(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/model/IconInfo;)V

    .line 97
    iget-object v0, p1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->externParam:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->setBadgeInfo(Ljava/util/HashMap;)V

    .line 98
    return-void

    .line 90
    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 119
    return-void
.end method

.method public setTitleTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 107
    return-void
.end method
