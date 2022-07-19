.class public Lcom/alipay/mobile/antui/status/FlowStepView;
.super Landroid/widget/RelativeLayout;
.source "FlowStepView.java"


# instance fields
.field private bottomLineView:Landroid/view/View;

.field private forthInfoTextView:Landroid/widget/TextView;

.field private indicatorImageView:Landroid/widget/ImageView;

.field private mainInfoTextView:Landroid/widget/TextView;

.field private secondaryInfoTextView:Landroid/widget/TextView;

.field private thirdInfoTextView:Landroid/widget/TextView;

.field private topLineView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/status/FlowStepView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/status/FlowStepView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/status/FlowStepView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private getIndicatorBgColor(I)I
    .locals 2
    .param p1, "status"    # I

    .line 46
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_TEXT_DISABLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_APP_GREEN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_ERROR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_TEXT_DISABLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR16:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getIndicatorIconId(Lcom/alipay/mobile/antui/status/ResultStatusIcon;)I
    .locals 2
    .param p1, "statusIcon"    # Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    .line 81
    sget-object v0, Lcom/alipay/mobile/antui/status/FlowStepView$1;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/status/ResultStatusIcon;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->result_status_pending:I

    return v0

    .line 89
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->result_status_no:I

    return v0

    .line 87
    :cond_2
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->result_status_yes:I

    return v0

    .line 85
    :cond_3
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->result_status_calc:I

    return v0

    .line 83
    :cond_4
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->result_status_rmb:I

    return v0
.end method

.method private getMainTextColor(I)I
    .locals 2
    .param p1, "status"    # I

    .line 63
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_APP_GREEN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_ERROR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 65
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_MAIN_CONTENT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_flow_step:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    sget v0, Lcom/alipay/mobile/antui/R$id;->top_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/FlowStepView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    .line 101
    sget v0, Lcom/alipay/mobile/antui/R$id;->bottom_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/FlowStepView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    .line 102
    sget v0, Lcom/alipay/mobile/antui/R$id;->flow_indicator:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/FlowStepView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->indicatorImageView:Landroid/widget/ImageView;

    .line 103
    sget v0, Lcom/alipay/mobile/antui/R$id;->main_info_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/FlowStepView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->mainInfoTextView:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/alipay/mobile/antui/R$id;->flow_secondary_info:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/FlowStepView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->secondaryInfoTextView:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/alipay/mobile/antui/R$id;->flow_third_info:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/FlowStepView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->thirdInfoTextView:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/alipay/mobile/antui/R$id;->flow_forth_info:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/status/FlowStepView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->forthInfoTextView:Landroid/widget/TextView;

    .line 107
    return-void
.end method


# virtual methods
.method public setFlowResult(Lcom/alipay/mobile/antui/status/FlowResult;Z)V
    .locals 11
    .param p1, "flowResult"    # Lcom/alipay/mobile/antui/status/FlowResult;
    .param p2, "lengthen"    # Z

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "isBottom":Z
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/status/FlowResult;->getPosition()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    iget v6, p1, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/status/FlowStepView;->getIndicatorBgColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/status/FlowResult;->getPosition()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    iget v6, p1, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/status/FlowStepView;->getIndicatorBgColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    iget v6, p1, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/status/FlowStepView;->getIndicatorBgColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/status/FlowResult;->getPosition()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 121
    const/4 v0, 0x1

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    iget v6, p1, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/status/FlowStepView;->getIndicatorBgColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/status/FlowResult;->getPosition()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_3

    .line 126
    const/4 v0, 0x1

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 131
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v7, v1

    .line 132
    .local v7, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v7, v6

    if-nez v6, :cond_4

    .line 133
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/alipay/mobile/antui/R$dimen;->flow_step_line_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/alipay/mobile/antui/R$dimen;->flow_step_line_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v7, v6

    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/alipay/mobile/antui/R$dimen;->flow_step_line_width:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    :goto_1
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->topLineView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 130
    .end local v7    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object v7, v1

    .line 141
    :goto_2
    iget v6, p1, Lcom/alipay/mobile/antui/status/FlowResult;->statusIconId:I

    if-eqz v6, :cond_6

    .line 142
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->indicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 143
    .local v7, "indicatorBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 144
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->indicatorImageView:Landroid/widget/ImageView;

    iget v8, p1, Lcom/alipay/mobile/antui/status/FlowResult;->statusIconId:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    .end local v7    # "indicatorBackground":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_3

    .line 146
    :cond_6
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->indicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 147
    .restart local v7    # "indicatorBackground":Landroid/graphics/drawable/GradientDrawable;
    iget v8, p1, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    invoke-direct {p0, v8}, Lcom/alipay/mobile/antui/status/FlowStepView;->getIndicatorBgColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 148
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->indicatorImageView:Landroid/widget/ImageView;

    iget-object v8, p1, Lcom/alipay/mobile/antui/status/FlowResult;->statusIcon:Lcom/alipay/mobile/antui/status/ResultStatusIcon;

    invoke-direct {p0, v8}, Lcom/alipay/mobile/antui/status/FlowStepView;->getIndicatorIconId(Lcom/alipay/mobile/antui/status/ResultStatusIcon;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    .end local v7    # "indicatorBackground":Landroid/graphics/drawable/GradientDrawable;
    :goto_3
    iget-object v6, p1, Lcom/alipay/mobile/antui/status/FlowResult;->mainInfoText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 151
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->mainInfoTextView:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/alipay/mobile/antui/status/FlowResult;->mainInfoText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->mainInfoTextView:Landroid/widget/TextView;

    iget v7, p1, Lcom/alipay/mobile/antui/status/FlowResult;->resultStatus:I

    invoke-direct {p0, v7}, Lcom/alipay/mobile/antui/status/FlowStepView;->getMainTextColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->mainInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 155
    :cond_7
    iget-object v6, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->mainInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_4
    const/4 v6, 0x0

    .local v6, "secondaryInfoText":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "thirdInfoText":Ljava/lang/String;
    const/4 v8, 0x0

    .line 158
    .local v8, "forthInfoText":Ljava/lang/String;
    iget-object v9, p1, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    if-eqz v9, :cond_a

    .line 159
    iget-object v9, p1, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 160
    iget-object v9, p1, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Ljava/lang/String;

    .line 162
    :cond_8
    iget-object v9, p1, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v3, :cond_9

    .line 163
    iget-object v9, p1, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 165
    :cond_9
    iget-object v3, p1, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_a

    .line 166
    iget-object v3, p1, Lcom/alipay/mobile/antui/status/FlowResult;->subTitles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 169
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_b

    .line 170
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->secondaryInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->secondaryInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 173
    :cond_b
    if-eqz v0, :cond_c

    .line 174
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->secondaryInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 176
    :cond_c
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->secondaryInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->secondaryInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 181
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->thirdInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->thirdInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 184
    :cond_d
    if-eqz v0, :cond_e

    .line 185
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->thirdInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 187
    :cond_e
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->thirdInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->thirdInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 192
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->forthInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->forthInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 195
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v2

    if-nez v2, :cond_f

    .line 196
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->flow_step_line_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 198
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE8:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    goto :goto_7

    .line 200
    :cond_f
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/status/FlowStepView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->flow_step_line_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    :goto_7
    iget-object v2, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->bottomLineView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    return-void

    .line 204
    :cond_10
    if-eqz v0, :cond_11

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->forthInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 207
    :cond_11
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->forthInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/antui/status/FlowStepView;->forthInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    return-void
.end method
