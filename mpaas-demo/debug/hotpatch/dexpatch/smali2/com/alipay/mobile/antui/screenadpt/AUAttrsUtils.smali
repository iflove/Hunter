.class public Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;
.super Ljava/lang/Object;
.source "AUAttrsUtils.java"


# static fields
.field public static final HEIGHT:I = 0x1

.field public static final MARGINBOTTOM:I = 0x5

.field public static final MARGINLEFT:I = 0x2

.field public static final MARGINRIGHT:I = 0x4

.field public static final MARGINTOP:I = 0x3

.field public static final TAG:Ljava/lang/String; = "AUAttrsUtils"

.field public static final WIDTH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adptApMinMax(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v0

    .line 160
    .local v0, "minHeight":I
    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 162
    .end local v0    # "minHeight":I
    :cond_0
    return-void
.end method

.method public static adptApPadding(Landroid/view/View;Landroid/content/Context;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v0

    .line 150
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v1

    .line 151
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v2

    .line 152
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v3

    .line 153
    .local v3, "paddingBottom":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    .end local v0    # "paddingLeft":I
    .end local v1    # "paddingTop":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingBottom":I
    :cond_0
    return-void
.end method

.method public static chooseSizeAndMargin(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I
    .param p2, "des"    # I

    .line 119
    if-gtz p2, :cond_0

    if-lez p1, :cond_0

    .line 120
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromPx(Landroid/content/Context;F)I

    move-result v0

    return v0

    .line 121
    :cond_0
    if-gtz p2, :cond_1

    .line 122
    return p1

    .line 124
    :cond_1
    return p2
.end method

.method public static getViewSizeAndMargin(Landroid/content/Context;Ljava/util/Map;)[I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "property"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    .line 48
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "layout_width"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "widthStr":Ljava/lang/String;
    const-string v3, "layout_height"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, "heightStr":Ljava/lang/String;
    const-string v4, "layout_margin"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    .local v4, "marginStr":Ljava/lang/String;
    const-string v5, "layout_marginLeft"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 52
    .local v5, "marginLeftStr":Ljava/lang/String;
    const-string v6, "layout_marginTop"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 53
    .local v6, "marginTopStr":Ljava/lang/String;
    const-string v7, "layout_marginRight"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 54
    .local v7, "marginRightStr":Ljava/lang/String;
    const-string v8, "layout_marginBottom"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 58
    .local v8, "marginBottomStr":Ljava/lang/String;
    const-string v9, "-1"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "-2"

    if-eqz v10, :cond_0

    .line 59
    const/4 v10, -0x1

    .local v10, "width":I
    goto :goto_0

    .line 60
    .end local v10    # "width":I
    :cond_0
    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 61
    const/4 v10, -0x2

    .restart local v10    # "width":I
    goto :goto_0

    .line 63
    .end local v10    # "width":I
    :cond_1
    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 66
    .restart local v10    # "width":I
    :goto_0
    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 67
    const/4 v9, -0x1

    .local v9, "height":I
    goto :goto_1

    .line 68
    .end local v9    # "height":I
    :cond_2
    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 69
    const/4 v9, -0x2

    .restart local v9    # "height":I
    goto :goto_1

    .line 71
    .end local v9    # "height":I
    :cond_3
    invoke-static {v0, v3}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 74
    .restart local v9    # "height":I
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_4

    .line 75
    invoke-static {v0, v4}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    move v13, v12

    .line 76
    .local v13, "margin":I
    move v13, v11

    .line 77
    .local v11, "marginLeft":I
    move v14, v13

    .line 78
    .local v14, "marginTop":I
    move v15, v13

    .line 79
    .local v15, "marginRight":I
    nop

    .line 80
    .local v13, "marginBottom":I
    goto :goto_5

    .line 81
    .end local v11    # "marginLeft":I
    .end local v13    # "marginBottom":I
    .end local v14    # "marginTop":I
    .end local v15    # "marginRight":I
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 82
    invoke-static {v0, v5}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    .restart local v11    # "marginLeft":I
    goto :goto_2

    .line 84
    .end local v11    # "marginLeft":I
    :cond_5
    const/4 v11, 0x0

    .line 87
    .restart local v11    # "marginLeft":I
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 88
    invoke-static {v0, v6}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    move v14, v13

    .local v13, "marginTop":I
    goto :goto_3

    .line 90
    .end local v13    # "marginTop":I
    :cond_6
    const/4 v13, 0x0

    move v14, v13

    .line 93
    .restart local v14    # "marginTop":I
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 94
    invoke-static {v0, v7}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    move v15, v13

    .local v13, "marginRight":I
    goto :goto_4

    .line 96
    .end local v13    # "marginRight":I
    :cond_7
    const/4 v13, 0x0

    move v15, v13

    .line 99
    .restart local v15    # "marginRight":I
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 100
    invoke-static {v0, v8}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromAttrsStr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .local v13, "marginBottom":I
    goto :goto_5

    .line 102
    .end local v13    # "marginBottom":I
    :cond_8
    const/4 v13, 0x0

    .line 106
    .restart local v13    # "marginBottom":I
    :goto_5
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v10, v0, v12

    const/4 v12, 0x1

    aput v9, v0, v12

    const/4 v12, 0x2

    aput v11, v0, v12

    const/4 v12, 0x3

    aput v14, v0, v12

    const/4 v12, 0x4

    aput v15, v0, v12

    const/4 v12, 0x5

    aput v13, v0, v12

    return-object v0
.end method

.method public static handleAttrs(Landroid/util/AttributeSet;)Ljava/util/Map;
    .locals 6
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "property":Ljava/util/Map;
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    .line 132
    .local v2, "attrsCount":I
    move v2, v1

    if-gez v1, :cond_0

    .line 133
    return-object v0

    .line 136
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 137
    invoke-interface {p0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v3, "value":Ljava/lang/String;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 142
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static isAP(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AUScreenAdapt:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$styleable;->AUScreenAdapt_isAP:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 42
    .local v0, "isAp":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public static replaceLayoutParam(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;[I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "sizeAndMargin"    # [I

    .line 110
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->chooseSizeAndMargin(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 111
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->chooseSizeAndMargin(Landroid/content/Context;II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 112
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v1, 0x2

    aget v1, p2, v1

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->chooseSizeAndMargin(Landroid/content/Context;II)I

    move-result v0

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x3

    aget v2, p2, v2

    .line 113
    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->chooseSizeAndMargin(Landroid/content/Context;II)I

    move-result v1

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v3, 0x4

    aget v3, p2, v3

    .line 114
    invoke-static {p0, v2, v3}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->chooseSizeAndMargin(Landroid/content/Context;II)I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v4, 0x5

    aget v4, p2, v4

    .line 115
    invoke-static {p0, v3, v4}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->chooseSizeAndMargin(Landroid/content/Context;II)I

    move-result v3

    .line 112
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 116
    return-void
.end method
