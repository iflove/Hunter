.class public Lcom/alipay/mobile/antui/status/AUFlowResultView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUFlowResultView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->init()V

    .line 28
    return-void
.end method

.method private addFlow(Lcom/alipay/mobile/antui/status/FlowResult;ZZ)V
    .locals 4
    .param p1, "flowResult"    # Lcom/alipay/mobile/antui/status/FlowResult;
    .param p2, "needTopMargin"    # Z
    .param p3, "lengthen"    # Z

    .line 80
    new-instance v0, Lcom/alipay/mobile/antui/status/FlowStepView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/status/FlowStepView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 81
    .local v1, "flowView":Lcom/alipay/mobile/antui/status/FlowStepView;
    move-object v1, v0

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/antui/status/FlowStepView;->setFlowResult(Lcom/alipay/mobile/antui/status/FlowResult;Z)V

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_1

    .line 86
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->flow_step_view_lengthen_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->flow_step_view_normal_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 91
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method private init()V
    .locals 3

    .line 31
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 36
    .local v1, "padding":I
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->setPadding(IIII)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->setOrientation(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public clearFlows()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->removeAllViews()V

    .line 46
    return-void
.end method

.method public setFlows(Ljava/util/List;)V
    .locals 6
    .param p1, "flowResultList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/status/FlowResult;",
            ">;)V"
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_6

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/status/FlowResult;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/status/FlowResult;->setPosition(I)V

    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/status/FlowResult;

    invoke-direct {p0, v0, v2, v2}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->addFlow(Lcom/alipay/mobile/antui/status/FlowResult;ZZ)V

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/status/FlowResult;

    .line 61
    .local v4, "flowResult":Lcom/alipay/mobile/antui/status/FlowResult;
    if-nez v0, :cond_1

    .line 62
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/antui/status/FlowResult;->setPosition(I)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v0, v5, :cond_2

    .line 64
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/status/FlowResult;->setPosition(I)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/antui/status/FlowResult;->setPosition(I)V

    .line 68
    :goto_1
    if-lez v0, :cond_4

    add-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/status/FlowResult;

    iget-object v5, v5, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    if-eqz v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    .line 69
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/status/FlowResult;

    iget-object v5, v5, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v1, :cond_4

    .line 70
    if-lez v0, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-direct {p0, v4, v5, v3}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->addFlow(Lcom/alipay/mobile/antui/status/FlowResult;ZZ)V

    goto :goto_4

    .line 72
    :cond_4
    if-lez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    invoke-direct {p0, v4, v5, v2}, Lcom/alipay/mobile/antui/status/AUFlowResultView;->addFlow(Lcom/alipay/mobile/antui/status/FlowResult;ZZ)V

    .line 59
    .end local v4    # "flowResult":Lcom/alipay/mobile/antui/status/FlowResult;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_6
    return-void
.end method
