.class public Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;
.super Landroid/widget/LinearLayout;
.source "AUFilterTabContainerView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private initWidth:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/FilterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroid/view/View$OnClickListener;

.field private mMargin:I

.field private maxLine:I

.field private paddingLeft:I

.field private paddingRight:I

.field private res:Landroid/content/res/Resources;

.field private row:I

.field tagWidth:I

.field private tvBgDrawable:Landroid/graphics/drawable/Drawable;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->maxLine:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->mMargin:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->initWidth:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->row:I

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->maxLine:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->mMargin:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->initWidth:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->row:I

    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->init(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->res:Landroid/content/res/Resources;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->maxLine:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->mMargin:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->initWidth:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->row:I

    .line 74
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->init(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->res:Landroid/content/res/Resources;

    .line 76
    return-void
.end method

.method private checkSelect(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 219
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    move-object v2, v1

    .line 220
    .local v2, "child":Landroid/widget/LinearLayout;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 222
    .local v0, "lineItemCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 223
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 224
    .local v1, "childView":Landroid/view/View;
    move-object v1, v4

    instance-of v4, v4, Lcom/alipay/mobile/antui/filter/FilterMenuItemLayout;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/model/FilterItemData;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v5

    iput-boolean v5, v4, Lcom/alipay/mobile/antui/model/FilterItemData;->isSelect:Z

    .line 222
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "childView":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private getTabWidth(II)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "margin"    # I

    .line 174
    iget v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->width:I

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 176
    .local v0, "sWidth":I
    iget v1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->initWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 177
    iget v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->initWidth:I

    .line 179
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->paddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->paddingRight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->width:I

    .line 181
    .end local v0    # "sWidth":I
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->width:I

    add-int/lit8 v1, p1, -0x1

    mul-int v1, v1, p2

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->context:Landroid/content/Context;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->setOrientation(I)V

    .line 87
    return-void
.end method

.method private initTabs()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "FilterTabContainerView: e"

    const-string v3, "FilterTabContainerView"

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->removeAllViews()V

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "contentLength":I
    iget v4, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->mMargin:I

    .line 114
    .local v4, "margin":I
    const/4 v5, 0x0

    .line 115
    .local v5, "margin_v":I
    const/4 v6, 0x0

    .line 116
    .local v6, "lineContainer":Landroid/widget/LinearLayout;
    iget-object v7, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 117
    .local v7, "size":I
    iget v8, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->maxLine:I

    if-lez v8, :cond_1

    .line 118
    iget-object v8, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->maxLine:I

    iget v10, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->row:I

    mul-int v11, v9, v10

    if-le v8, v11, :cond_0

    mul-int v9, v9, v10

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    move v7, v9

    .line 123
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    move-object v10, v9

    move v9, v8

    move-object v8, v6

    move v6, v5

    move v5, v0

    move-object v0, v10

    .end local v0    # "contentLength":I
    .local v5, "contentLength":I
    .local v6, "margin_v":I
    .local v8, "lineContainer":Landroid/widget/LinearLayout;
    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_5

    .line 124
    iget-object v11, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->res:Landroid/content/res/Resources;

    sget v12, Lcom/alipay/mobile/antui/R$layout;->filter_tab_view:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 125
    .local v11, "layout":Landroid/content/res/XmlResourceParser;
    iget-object v12, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->context:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v1, v13}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 126
    .local v0, "itemView":Landroid/view/View;
    move-object v14, v12

    .end local v0    # "itemView":Landroid/view/View;
    .local v14, "itemView":Landroid/view/View;
    iget-object v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    sget v0, Lcom/alipay/mobile/antui/R$id;->tv_menu_name:I

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 130
    .local v12, "textView":Landroid/widget/TextView;
    iget-object v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->res:Landroid/content/res/Resources;

    sget v15, Lcom/alipay/mobile/antui/R$drawable;->search_tag_text_bound:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 131
    .local v15, "bgDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->res:Landroid/content/res/Resources;

    sget v13, Lcom/alipay/mobile/antui/R$xml;->search_menu_filter_text:I

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 133
    .local v13, "xrp":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->res:Landroid/content/res/Resources;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, v13}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 134
    .local v0, "cl":Landroid/content/res/ColorStateList;
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .end local v0    # "cl":Landroid/content/res/ColorStateList;
    move/from16 v16, v7

    goto :goto_3

    .line 135
    :catch_0
    move-exception v0

    move/from16 v16, v7

    goto :goto_2

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    move/from16 v16, v7

    .end local v7    # "size":I
    .local v16, "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "size":I
    .restart local v7    # "size":I
    :catch_2
    move-exception v0

    move/from16 v16, v7

    .line 136
    .end local v7    # "size":I
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "size":I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 140
    :goto_3
    iget-object v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->tvBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 143
    :cond_2
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_4
    iget-object v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/model/FilterItemData;

    iget-object v0, v0, Lcom/alipay/mobile/antui/model/FilterItemData;->name:Ljava/lang/String;

    .line 147
    .local v0, "itemName":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v14, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    iget v7, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->tagWidth:I

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 150
    iget-object v7, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/antui/model/FilterItemData;

    iget-boolean v7, v7, Lcom/alipay/mobile/antui/model/FilterItemData;->isSelect:Z

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    iget-object v7, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/antui/model/FilterItemData;

    iget-boolean v7, v7, Lcom/alipay/mobile/antui/model/FilterItemData;->isSelect:Z

    invoke-virtual {v14, v7}, Landroid/view/View;->setSelected(Z)V

    .line 153
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v0

    .end local v0    # "itemName":Ljava/lang/String;
    .local v17, "itemName":Ljava/lang/String;
    const/4 v0, -0x2

    invoke-direct {v7, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v7, "textLp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_4

    iget v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->tagWidth:I

    add-int/2addr v0, v5

    move-object/from16 v18, v2

    iget v2, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->width:I

    if-le v0, v2, :cond_3

    goto :goto_5

    .line 162
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v7, v4, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v19, v3

    goto :goto_6

    .line 155
    :cond_4
    move-object/from16 v18, v2

    .line 156
    :goto_5
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .end local v8    # "lineContainer":Landroid/widget/LinearLayout;
    .local v0, "lineContainer":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    move-object/from16 v19, v3

    const/4 v3, -0x2

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v10

    .line 158
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/4 v5, 0x0

    .line 161
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v8, v0

    move-object v10, v3

    .line 164
    .end local v0    # "lineContainer":Landroid/widget/LinearLayout;
    .restart local v8    # "lineContainer":Landroid/widget/LinearLayout;
    :goto_6
    iget v6, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->mMargin:I

    .line 165
    invoke-virtual {v8, v14, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget v0, v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->tagWidth:I

    add-int/2addr v0, v4

    add-int/2addr v5, v0

    .line 123
    .end local v7    # "textLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "layout":Landroid/content/res/XmlResourceParser;
    .end local v13    # "xrp":Landroid/content/res/XmlResourceParser;
    .end local v15    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v17    # "itemName":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object v0, v14

    move/from16 v7, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_1

    .line 171
    .end local v9    # "i":I
    .end local v12    # "textView":Landroid/widget/TextView;
    .end local v14    # "itemView":Landroid/view/View;
    .end local v16    # "size":I
    .local v7, "size":I
    :cond_5
    return-void
.end method

.method private updatelayout(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 198
    instance-of v0, p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 200
    .local v2, "child":Landroid/widget/LinearLayout;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 201
    .local v0, "countSub":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 202
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 203
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->updatelayout(Landroid/view/View;)V

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "countSub":I
    .end local v2    # "child":Landroid/widget/LinearLayout;
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 208
    return-void
.end method


# virtual methods
.method public clearSelect()V
    .locals 4

    .line 190
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getChildCount()I

    move-result v0

    .line 191
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 192
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->updatelayout(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 81
    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 2
    .param p1, "datas"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/FilterItemData;",
            ">;)V"
        }
    .end annotation

    .line 94
    if-nez p1, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->paddingLeft:I

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->paddingRight:I

    .line 102
    iget v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->row:I

    iget v1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->mMargin:I

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getTabWidth(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->tagWidth:I

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->initTabs()V

    .line 104
    return-void
.end method

.method public setInitWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 90
    iput p1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->initWidth:I

    .line 91
    return-void
.end method

.method public setMaxLine(I)V
    .locals 0
    .param p1, "maxLine"    # I

    .line 35
    iput p1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->maxLine:I

    .line 36
    return-void
.end method

.method public setOnTagClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 185
    iput-object p1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->listener:Landroid/view/View$OnClickListener;

    .line 186
    return-void
.end method

.method public setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 53
    iput p1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->row:I

    .line 54
    return-void
.end method

.method public setTextBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bgDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->tvBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    return-void
.end method

.method public setmMargin(I)V
    .locals 0
    .param p1, "mMargin"    # I

    .line 43
    iput p1, p0, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->mMargin:I

    .line 44
    return-void
.end method

.method public updateSelectDatas()V
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getChildCount()I

    move-result v0

    .line 213
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->checkSelect(Landroid/view/View;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
