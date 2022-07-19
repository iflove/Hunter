.class public Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;
.super Landroid/widget/LinearLayout;
.source "EllipsizeGroupLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public containTextView(Landroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 103
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 105
    .local v2, "view":Landroid/view/View;
    move-object v2, v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 106
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->containTextView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    return v4

    .line 109
    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 111
    return v4

    .line 103
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected onMeasure(II)V
    .locals 17

    .line 38
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_8

    .line 40
    nop

    .line 43
    nop

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->getChildCount()I

    move-result v7

    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 47
    nop

    .line 48
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 49
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v11, v7, :cond_4

    if-nez v12, :cond_4

    .line 50
    invoke-virtual {v6, v11}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 51
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 53
    if-nez v0, :cond_0

    instance-of v1, v15, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 54
    move-object v1, v15

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->containTextView(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    move-object/from16 v16, v1

    goto :goto_1

    .line 60
    :cond_0
    move-object/from16 v16, v0

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v9

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 63
    nop

    .line 64
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    if-eqz v0, :cond_2

    .line 66
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    or-int/2addr v12, v14

    .line 67
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    add-int/2addr v13, v1

    move-object/from16 v0, v16

    goto :goto_3

    .line 70
    :cond_2
    move-object/from16 v0, v16

    const/4 v12, 0x1

    .line 49
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 75
    :cond_4
    if-eqz v0, :cond_6

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :cond_6
    :goto_4
    or-int v1, v12, v14

    .line 76
    if-nez v1, :cond_8

    if-le v13, v8, :cond_8

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v13, v8

    sub-int/2addr v1, v13

    .line 80
    if-gez v1, :cond_7

    .line 81
    goto :goto_5

    .line 80
    :cond_7
    move v10, v1

    .line 83
    :goto_5
    invoke-virtual {v6, v0, v10}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->setChildTextViewMaxWidth(Landroid/view/ViewGroup;I)V

    .line 86
    :cond_8
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 87
    return-void
.end method

.method public setChildTextViewMaxWidth(Landroid/view/ViewGroup;I)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "maxWidth"    # I

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 91
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 92
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 93
    .local v2, "view":Landroid/view/View;
    move-object v2, v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 94
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3, p2}, Lcom/alipay/mobile/nebula/view/EllipsizeGroupLayout;->setChildTextViewMaxWidth(Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 95
    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 96
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 91
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
