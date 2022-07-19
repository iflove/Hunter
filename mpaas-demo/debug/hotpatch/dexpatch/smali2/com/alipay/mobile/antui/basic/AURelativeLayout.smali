.class public Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AURelativeLayout.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private isAP:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->attrs:Landroid/util/AttributeSet;

    .line 44
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 46
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApMinMax(Landroid/view/View;Landroid/content/Context;)V

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->attrs:Landroid/util/AttributeSet;

    .line 58
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 60
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApMinMax(Landroid/view/View;Landroid/content/Context;)V

    .line 62
    :cond_0
    return-void
.end method

.method private extendAP(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 113
    instance-of v0, p1, Lcom/alipay/mobile/antui/basic/AUViewInterface;

    if-eqz v0, :cond_0

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUViewInterface;

    const/4 v1, 0x0

    .line 115
    .local v1, "auViewInterface":Lcom/alipay/mobile/antui/basic/AUViewInterface;
    move-object v1, v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->isAP()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->isAP()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->setAP(Ljava/lang/Boolean;)V

    .line 119
    .end local v1    # "auViewInterface":Lcom/alipay/mobile/antui/basic/AUViewInterface;
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 108
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->extendAP(Landroid/view/View;)V

    .line 109
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->extendAP(Landroid/view/View;)V

    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 125
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->extendAP(Landroid/view/View;)V

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 131
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 141
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->extendAP(Landroid/view/View;)V

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 135
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->extendAP(Landroid/view/View;)V

    .line 136
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getSuggestedMinimumHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getSuggestedMinimumHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getSuggestedMinimumHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->handleAttrs(Landroid/util/AttributeSet;)Ljava/util/Map;

    move-result-object v0

    .line 73
    .local v0, "property":Ljava/util/Map;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->getViewSizeAndMargin(Landroid/content/Context;Ljava/util/Map;)[I

    move-result-object v1

    .line 75
    .local v1, "sizeAndMargin":[I
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 76
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->replaceLayoutParam(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;[I)V

    .line 77
    return-object v2

    .line 79
    .end local v0    # "property":Ljava/util/Map;
    .end local v1    # "sizeAndMargin":[I
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getApFromPx(I)I
    .locals 2
    .param p1, "px"    # I

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->attrs:Landroid/util/AttributeSet;

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v0

    return v0

    .line 154
    :cond_0
    return p1
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getDefaultSize(II)I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getDefaultSize(II)I

    move-result v1

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setMeasuredDimension(II)V

    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APRelativeLayout:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "msg":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getChildCount()I

    move-result v2

    .line 96
    .local v2, "viewCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 97
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 98
    .local v4, "view":Landroid/view/View;
    move-object v4, v5

    if-eqz v5, :cond_1

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->isAP:Ljava/lang/Boolean;

    .line 167
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 147
    invoke-static {p1}, Lcom/alipay/mobile/antui/basic/AUViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method
