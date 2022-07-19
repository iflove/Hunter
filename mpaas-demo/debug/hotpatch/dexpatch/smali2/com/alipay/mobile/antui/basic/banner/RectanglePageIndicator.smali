.class public Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;
.super Landroid/widget/LinearLayout;
.source "RectanglePageIndicator.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/banner/PageIndicator;


# instance fields
.field private mBigWidth:I

.field private mHeight:I

.field private mLastPosition:I

.field private mSmallWidth:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private margin:I

.field private realCount:I

.field private selectColor:I

.field private unSelectColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mLastPosition:I

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mLastPosition:I

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private addIndicator(ILandroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "rectDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isSelect"    # Z

    .line 111
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 112
    .local v1, "indicator":Landroid/view/View;
    move-object v1, v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    if-eqz p3, :cond_0

    .line 114
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mBigWidth:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 116
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mSmallWidth:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->addView(Landroid/view/View;II)V

    .line 118
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setMargin(ILandroid/view/View;)V

    .line 119
    return-void
.end method

.method private createIndicators()V
    .locals 7

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->removeAllViews()V

    .line 95
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 99
    .local v0, "currentItem":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->getOrientation()I

    move-result v2

    .line 101
    .local v2, "orientation":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    if-ge v3, v4, :cond_2

    .line 102
    if-ne v0, v3, :cond_1

    .line 103
    iget v4, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->selectColor:I

    iget v5, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    iget v6, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mBigWidth:I

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/antui/basic/banner/RectDrawable;->createBigRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v2, v4, v1}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->addIndicator(ILandroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 105
    :cond_1
    iget v4, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->unSelectColor:I

    iget v5, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    iget v6, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mSmallWidth:I

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/antui/basic/banner/RectDrawable;->createSmallRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->addIndicator(ILandroid/graphics/drawable/Drawable;Z)V

    .line 101
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setGravity(I)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_indicator_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_indicator_small_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mSmallWidth:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_indicator_big_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mBigWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->indicator_select_style_bright:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->selectColor:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->indicator_unselect_style_bright:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->unSelectColor:I

    .line 48
    return-void
.end method

.method private setMargin(ILandroid/view/View;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "indicator"    # Landroid/view/View;

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 185
    iget v1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 186
    iget v1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 188
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 189
    iget v1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 191
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-void
.end method

.method private setMargin(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 197
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-void

    .line 199
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 200
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->margin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 202
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 0

    .line 134
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .line 207
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .line 139
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 144
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 148
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    rem-int/2addr p1, v0

    .line 151
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mLastPosition:I

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .local v1, "currentIndicator":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 152
    iget v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->unSelectColor:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mSmallWidth:I

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/antui/basic/banner/RectDrawable;->createSmallRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 157
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mSmallWidth:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 160
    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mSmallWidth:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 161
    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 162
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 165
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "currentIndicator":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v0, "selectedIndicator":Landroid/view/View;
    move-object v0, v1

    if-eqz v1, :cond_4

    .line 167
    iget v1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->selectColor:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mBigWidth:I

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/antui/basic/banner/RectDrawable;->createBigRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_2

    .line 172
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mBigWidth:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->setMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 175
    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mBigWidth:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 176
    iget v2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mHeight:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mLastPosition:I

    .line 180
    return-void

    .line 145
    .end local v0    # "selectedIndicator":Landroid/view/View;
    :cond_5
    :goto_3
    return-void
.end method

.method public refreshIndicators()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/antui/api/AdapterCount;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/api/AdapterCount;

    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/AdapterCount;->getRealCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    .line 86
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mLastPosition:I

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->createIndicators()V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->onPageSelected(I)V

    .line 91
    return-void

    .line 80
    :cond_2
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0
    .param p1, "item"    # I

    .line 124
    return-void
.end method

.method public setIndicatorColor(II)V
    .locals 0
    .param p1, "selectColor"    # I
    .param p2, "unSelectColor"    # I

    .line 232
    iput p1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->selectColor:I

    .line 233
    iput p2, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->unSelectColor:I

    .line 234
    return-void
.end method

.method public setIndicatorStyleBrightOrDark(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDark"    # Z

    .line 216
    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->indicator_select_style_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->selectColor:I

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->indicator_unselect_style_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->unSelectColor:I

    return-void

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->indicator_select_style_bright:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->selectColor:I

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->indicator_unselect_style_bright:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->unSelectColor:I

    .line 223
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 129
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroidx/viewpager/widget/ViewPager;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 60
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/antui/api/AdapterCount;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/api/AdapterCount;

    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/AdapterCount;->getRealCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->realCount:I

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mLastPosition:I

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->createIndicators()V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/banner/RectanglePageIndicator;->onPageSelected(I)V

    .line 72
    :cond_2
    return-void

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RectanglePageIndicator ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "initialPosition"    # I

    .line 77
    return-void
.end method
