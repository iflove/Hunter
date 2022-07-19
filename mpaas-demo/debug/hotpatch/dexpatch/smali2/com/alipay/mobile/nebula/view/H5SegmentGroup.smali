.class public Lcom/alipay/mobile/nebula/view/H5SegmentGroup;
.super Landroid/widget/RadioGroup;
.source "H5SegmentGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;,
        Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;
    }
.end annotation


# instance fields
.field private activitColor:I

.field private checkedId:I

.field private cornerRadius:F

.field private itemCheckedChangeListener:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;

.field private lastCheckedId:I

.field private layoutSelector:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;

.field private marginDp:I

.field private normalColor:I

.field private onCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->activitColor:I

    .line 26
    const v0, -0xff0100

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->normalColor:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->lastCheckedId:I

    .line 31
    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checkedId:I

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_nav_segment_stroke_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->marginDp:I

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_nav_segment_conner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->cornerRadius:F

    .line 43
    new-instance v1, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;-><init>(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;F)V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->layoutSelector:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;-><init>(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->onCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 61
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->itemCheckedChangeListener:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    .line 23
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->lastCheckedId:I

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5SegmentGroup;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checkedId:I

    return p1
.end method

.method private updateBackground()V
    .locals 8

    .line 95
    invoke-super {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 96
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 97
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->updateBackground(Landroid/view/View;)V

    .line 99
    add-int/lit8 v3, v0, -0x1

    if-eq v1, v3, :cond_1

    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup$LayoutParams;

    .line 104
    .local v3, "initParams":Landroid/widget/RadioGroup$LayoutParams;
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    iget v5, v3, Landroid/widget/RadioGroup$LayoutParams;->width:I

    iget v6, v3, Landroid/widget/RadioGroup$LayoutParams;->height:I

    iget v7, v3, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 106
    .local v4, "params":Landroid/widget/RadioGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getOrientation()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 107
    iget v5, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->marginDp:I

    neg-int v5, v5

    invoke-virtual {v4, v6, v6, v5, v6}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 109
    :cond_0
    iget v5, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->marginDp:I

    neg-int v5, v5

    invoke-virtual {v4, v6, v6, v6, v5}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 111
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "initParams":Landroid/widget/RadioGroup$LayoutParams;
    .end local v4    # "params":Landroid/widget/RadioGroup$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateBackground(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->layoutSelector:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->getChecked()I

    move-result v0

    .line 147
    .local v0, "checked":I
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->layoutSelector:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->getUnChecked()I

    move-result v1

    .line 148
    .local v1, "unchecked":I
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/4 v7, 0x0

    const v8, -0x10100a0

    aput v8, v6, v7

    aput-object v6, v4, v7

    new-array v6, v5, [I

    const v9, 0x10100a0

    aput v9, v6, v7

    aput-object v6, v4, v5

    new-array v3, v3, [I

    iget v6, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->activitColor:I

    aput v6, v3, v7

    iget v6, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->normalColor:I

    aput v6, v3, v5

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 152
    .local v2, "colorStateList":Landroid/content/res/ColorStateList;
    move-object v3, p1

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x0

    move-object v4, v3

    .local v4, "uncheckedDrawable":Landroid/graphics/drawable/Drawable;
    move-object v6, v3

    .line 157
    .local v6, "checkedDrawable":Landroid/graphics/drawable/Drawable;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-le v10, v11, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 159
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 165
    :goto_0
    move-object v10, v6

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    iget v11, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->activitColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 166
    move-object v10, v6

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    iget v11, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->marginDp:I

    iget v12, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->normalColor:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 167
    move-object v10, v6

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    iget-object v11, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->layoutSelector:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;

    invoke-virtual {v11, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->getChildRadii(Landroid/view/View;)[F

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 169
    move-object v10, v4

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    iget v11, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->normalColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 170
    move-object v10, v4

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    iget v11, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->marginDp:I

    iget v12, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->normalColor:I

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 171
    move-object v10, v4

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    iget-object v11, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->layoutSelector:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;

    invoke-virtual {v11, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->getChildRadii(Landroid/view/View;)[F

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 173
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 174
    .local v3, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object v3, v10

    new-array v11, v5, [I

    aput v9, v11, v7

    invoke-virtual {v10, v11, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 175
    new-array v5, v5, [I

    aput v8, v5, v7

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 177
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v5, v7, :cond_1

    .line 178
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 180
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method


# virtual methods
.method public addItems([Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 8
    .param p1, "titles"    # [Ljava/lang/String;
    .param p2, "widths"    # [Ljava/lang/Integer;

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$array;->h5_segment_item_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v4

    .line 79
    .local v4, "width":I
    new-instance v5, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 80
    .local v3, "rb":Landroid/widget/RadioButton;
    move-object v3, v5

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 82
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setMaxLines(I)V

    .line 85
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 86
    const/4 v6, 0x2

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v3, v6, v7}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 87
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 88
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v4, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 89
    .local v5, "lp":Landroid/widget/RadioGroup$LayoutParams;
    invoke-virtual {p0, v3, v5}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .end local v3    # "rb":Landroid/widget/RadioButton;
    .end local v4    # "width":I
    .end local v5    # "lp":Landroid/widget/RadioGroup$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "index":I
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->updateBackground()V

    .line 92
    return-void
.end method

.method public checked(IZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "notify"    # Z

    .line 126
    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->check(I)V

    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->check(I)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->onCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 133
    return-void
.end method

.method public clearCheck(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->clearCheck()V

    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->clearCheck()V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->onCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 123
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->updateBackground()V

    .line 68
    return-void
.end method

.method public performLastItemChecked(Z)V
    .locals 3
    .param p1, "prevent"    # Z

    .line 186
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 187
    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->lastCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 188
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checked(IZ)V

    return-void

    .line 191
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checkedId:I

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checked(IZ)V

    .line 192
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checkedId:I

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->lastCheckedId:I

    .line 194
    :cond_1
    return-void
.end method

.method public setDefaultChecked(I)V
    .locals 3
    .param p1, "index"    # I

    .line 136
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    .line 137
    .local v1, "rb":Landroid/widget/RadioButton;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 139
    .local v0, "resId":I
    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->lastCheckedId:I

    .line 140
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checked(IZ)V

    .line 142
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 198
    invoke-super {p0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getChildCount()I

    move-result v0

    .line 200
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setItemChangeListener(Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;

    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->itemCheckedChangeListener:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;

    .line 207
    return-void
.end method

.method public setSegmentColor(II)V
    .locals 0
    .param p1, "normalColor"    # I
    .param p2, "activityColor"    # I

    .line 71
    iput p2, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->activitColor:I

    .line 72
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->normalColor:I

    .line 73
    return-void
.end method
