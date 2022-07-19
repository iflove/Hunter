.class public Lcom/alipay/mobile/antui/pop/AUPopTipContainer;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUPopTipContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AUPopTipContainer"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mIsDown:Z

.field private mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTipWindow:Landroid/widget/PopupWindow;

.field private mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private getAnchorViewCenterX(II)I
    .locals 1
    .param p1, "viewX"    # I
    .param p2, "viewWidth"    # I

    .line 136
    div-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 188
    nop

    .line 189
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 190
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    nop

    .line 196
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 197
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private getTipContainerWidth()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 61
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .local v0, "mTipContainerWidth":I
    goto :goto_0

    .line 63
    .end local v0    # "mTipContainerWidth":I
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 64
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 65
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 66
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_btn_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_btn_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    .restart local v0    # "mTipContainerWidth":I
    :goto_0
    return v0
.end method

.method private getWindowMargin()I
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private isLeftScreen(I)Z
    .locals 1
    .param p1, "anchorViewCenterX"    # I

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setArrowLocationX(Lcom/alipay/mobile/antui/iconfont/AUIconView;IIIZ)V
    .locals 7
    .param p1, "iconView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "gravity"    # I
    .param p3, "viewX"    # I
    .param p4, "viewWidth"    # I
    .param p5, "isDown"    # Z

    .line 154
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_arrow_margin_top_or_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 157
    .local v1, "marginTopOrBottom":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p2, v2, :cond_2

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    .line 170
    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getAnchorViewCenterX(II)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_arrow_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 172
    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getWindowMargin()I

    move-result v5

    sub-int/2addr v4, v5

    .line 173
    .local v4, "margin":I
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 174
    if-eqz p5, :cond_0

    .line 175
    invoke-virtual {v0, v3, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0, v3, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    goto :goto_0

    .line 181
    .end local v4    # "margin":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Gravity must have be LEFT, RIGHT."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getAnchorViewCenterX(II)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/antui/R$dimen;->au_tip_pop_arrow_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 161
    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getWindowMargin()I

    move-result v5

    sub-int/2addr v4, v5

    .line 162
    .restart local v4    # "margin":I
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    if-eqz p5, :cond_3

    .line 164
    invoke-virtual {v0, v4, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {v0, v4, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    nop

    .line 183
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method private setTipContainerLocationX(III)V
    .locals 7
    .param p1, "gravity"    # I
    .param p2, "tipContainerWidth"    # I
    .param p3, "anchorViewCenterX"    # I

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    div-int/lit8 v1, p2, 0x2

    .line 103
    .local v1, "mTipTextViewHalfWidth":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, p3

    .line 105
    .local v2, "anchorViewRightWidth":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 116
    if-ge v2, v1, :cond_0

    .line 117
    const/4 v5, 0x0

    .local v5, "margin":I
    goto :goto_0

    .line 119
    .end local v5    # "margin":I
    :cond_0
    sub-int v5, v2, v1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getWindowMargin()I

    move-result v6

    sub-int/2addr v5, v6

    .line 121
    .restart local v5    # "margin":I
    :goto_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    invoke-virtual {v0, v4, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    goto :goto_2

    .line 125
    .end local v5    # "margin":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Gravity must have be LEFT, RIGHT."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_2
    if-ge p3, v1, :cond_3

    .line 108
    const/4 v5, 0x0

    .restart local v5    # "margin":I
    goto :goto_1

    .line 110
    .end local v5    # "margin":I
    :cond_3
    sub-int v5, p3, v1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getWindowMargin()I

    move-result v6

    sub-int/2addr v5, v6

    .line 112
    .restart local v5    # "margin":I
    :goto_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    nop

    .line 128
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method

.method private setTipLocate(Landroid/view/View;ZI)V
    .locals 11
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "isDown"    # Z
    .param p3, "tipContainerWidth"    # I

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 76
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location: x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AUPopTipContainer"

    invoke-static {v4, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    aget v1, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getAnchorViewCenterX(II)I

    move-result v1

    .line 81
    .local v1, "anchorViewCenterX":I
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->isLeftScreen(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    .line 82
    .local v4, "gravity":I
    :goto_0
    invoke-direct {p0, v4, p3, v1}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->setTipContainerLocationX(III)V

    .line 84
    const/16 v5, 0x8

    if-nez p2, :cond_1

    .line 85
    iget-object v6, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 86
    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 87
    iget-object v6, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    aget v8, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v5, p0

    move v7, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->setArrowLocationX(Lcom/alipay/mobile/antui/iconfont/AUIconView;IIIZ)V

    .line 88
    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    aget v3, v0, v3

    sub-int/2addr v5, v3

    .line 89
    .local v5, "locationY":I
    or-int/lit8 v3, v4, 0x50

    invoke-direct {p0, p1, v3, v2, v5}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->tipWindowShow(Landroid/view/View;III)V

    return-void

    .line 91
    .end local v5    # "locationY":I
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 92
    iget-object v6, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 93
    iget-object v6, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    aget v8, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v5, p0

    move v7, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->setArrowLocationX(Lcom/alipay/mobile/antui/iconfont/AUIconView;IIIZ)V

    .line 94
    aget v3, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 95
    .local v3, "locationY":I
    or-int/lit8 v5, v4, 0x30

    invoke-direct {p0, p1, v5, v2, v3}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->tipWindowShow(Landroid/view/View;III)V

    .line 97
    return-void
.end method

.method private tipWindowShow(Landroid/view/View;III)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 204
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public setTipLocate(Landroid/content/Context;Landroid/widget/PopupWindow;Lcom/alipay/mobile/antui/basic/AULinearLayout;Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/AUIconView;Landroid/view/View;ZLcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/basic/AUTextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tipWindow"    # Landroid/widget/PopupWindow;
    .param p3, "tipContainer"    # Lcom/alipay/mobile/antui/basic/AULinearLayout;
    .param p4, "upIcon"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p5, "downIcon"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p6, "anchorView"    # Landroid/view/View;
    .param p7, "isDown"    # Z
    .param p8, "tipTextView"    # Lcom/alipay/mobile/antui/basic/AUTextView;
    .param p9, "tipButton"    # Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipWindow:Landroid/widget/PopupWindow;

    .line 47
    iput-object p3, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 48
    iput-object p4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 49
    iput-object p5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 50
    iput-object p6, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mAnchorView:Landroid/view/View;

    .line 51
    iput-boolean p7, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mIsDown:Z

    .line 52
    iput-object p8, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 53
    iput-object p9, p0, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getTipContainerWidth()I

    move-result v0

    invoke-direct {p0, p6, p7, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->setTipLocate(Landroid/view/View;ZI)V

    .line 55
    return-void
.end method
