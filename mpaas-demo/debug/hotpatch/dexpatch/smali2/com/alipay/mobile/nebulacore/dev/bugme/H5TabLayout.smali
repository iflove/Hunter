.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "H5TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

.field private final d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

.field private e:I

.field private final f:I

.field private g:I

.field private final h:I

.field private final i:I

.field private j:I

.field private k:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setFillViewport(Z)V

    .line 112
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    .line 113
    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addView(Landroid/view/View;II)V

    .line 115
    sget-object v3, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout:[I

    sget v4, Lcom/alipay/mobile/nebula/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 118
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabIndicatorHeight:I

    .line 119
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 118
    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->b(I)V

    .line 120
    sget v4, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabIndicatorColor:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->a(I)V

    .line 121
    sget v4, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabIndicatorScrollable:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->a(Z)V

    .line 123
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabTextAppearance:I

    sget v2, Lcom/alipay/mobile/nebula/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->f:I

    .line 126
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabPadding:I

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->e:I

    .line 128
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabSelectedTextColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabSelectedTextColor:I

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->g:I

    .line 132
    :cond_0
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabMinWidth:I

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->i:I

    .line 133
    sget v1, Lcom/alipay/mobile/nebula/R$styleable;->H5TabLayout_tabBackground:I

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->h:I

    .line 134
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c()V

    .line 138
    return-void
.end method

.method static a(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .line 819
    sub-float v0, p1, p0

    mul-float v0, v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private a(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 448
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, "selectedChild":Landroid/view/View;
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    add-int/lit8 v2, p1, 0x1

    .line 450
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 452
    .local v1, "nextChild":Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 453
    .local v3, "selectedWidth":I
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 455
    .local v2, "nextWidth":I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-int v5, v3, v2

    int-to-float v5, v5

    mul-float v5, v5, p2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 458
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 455
    return v4
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->h:I

    return v0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "position"    # I

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;

    const/4 v1, 0x0

    .line 318
    .local v1, "view":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->a()V

    .line 321
    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1
    .param p0, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 341
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;I)V
    .locals 3
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .param p2, "position"    # I

    .line 307
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->a(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 311
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->a(I)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .param p2, "setSelected"    # Z

    .line 324
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;

    move-result-object v0

    .line 325
    .local v0, "tabView":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    if-eqz p2, :cond_0

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setSelected(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(I)V

    return-void
.end method

.method static synthetic a(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/animation/Animation;

    .line 40
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(Landroid/view/animation/Animation;)Z

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 2
    .param p1, "dps"    # I

    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->e:I

    return v0
.end method

.method private static b()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 332
    const/4 v0, 0x0

    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    move-object v0, v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 335
    return-object v0
.end method

.method private b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    .locals 3
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 290
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;Landroid/content/Context;Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    const/4 v1, 0x0

    .line 291
    .local v1, "tabView":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setFocusable(Z)V

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->l:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->l:Landroid/view/View$OnClickListener;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    return-object v1
.end method

.method private static b(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .line 414
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->j:I

    return v0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    .line 464
    .local v0, "paddingStart":I
    iget v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->e:I

    const/4 v2, 0x0

    rsub-int/lit8 v1, v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-static {v1, v0, v2, v2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->setGravity(I)V

    .line 469
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d()V

    .line 470
    return-void
.end method

.method private c(I)V
    .locals 6
    .param p1, "newPosition"    # I

    .line 370
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->clearAnimation()V

    .line 372
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 373
    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getScrollX()I

    move-result v0

    .line 384
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(IF)I

    move-result v1

    .line 387
    .local v1, "targetScrollX":I
    if-eq v0, v1, :cond_2

    .line 388
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;II)V

    const/4 v3, 0x0

    .line 395
    .local v3, "animation":Landroid/view/animation/Animation;
    move-object v3, v2

    sget-object v4, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 396
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 397
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 401
    .end local v3    # "animation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->c(I)V

    .line 402
    return-void

    .line 379
    .end local v0    # "startScrollX":I
    .end local v1    # "targetScrollX":I
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setScrollPosition(IF)V

    .line 380
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->i:I

    return v0
.end method

.method private d()V
    .locals 3

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 475
    .local v1, "child":Landroid/view/View;
    move-object v1, v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 476
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 473
    .end local v1    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->f:I

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->g:I

    return v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 40
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(I)I

    move-result v0

    return v0
.end method

.method private setSelectedTabView(I)V
    .locals 4
    .param p1, "position"    # I

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    .line 406
    .local v0, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 407
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 408
    .local v2, "child":Landroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 409
    .local v3, "isSelected":Z
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 406
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "isSelected":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-ne v0, p1, :cond_1

    .line 419
    if-eqz v0, :cond_6

    .line 420
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->k:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;->onTabReselected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 423
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c(I)V

    return-void

    .line 426
    :cond_1
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 427
    .local v1, "newPosition":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setSelectedTabView(I)V

    .line 429
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v0, :cond_4

    :cond_3
    if-eq v1, v0, :cond_4

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setScrollPosition(IF)V

    goto :goto_1

    .line 434
    :cond_4
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c(I)V

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->k:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    if-eqz v2, :cond_5

    .line 438
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 440
    :cond_5
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 441
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->k:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_6

    .line 442
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;->onTabSelected(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 445
    .end local v1    # "newPosition":I
    :cond_6
    return-void
.end method

.method public addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V

    .line 242
    return-void
.end method

.method public addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .param p2, "setSelected"    # Z

    .line 251
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;Z)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;I)V

    .line 257
    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->select()V

    .line 260
    :cond_0
    return-void

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->newTab()Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addTab(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    return-void
.end method

.method public getTabAt(I)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .locals 1
    .param p1, "index"    # I

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    return-object v0
.end method

.method public newTab()Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;
    .locals 1

    .line 279
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 351
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/16 v3, 0x2d

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 353
    :cond_1
    nop

    .line 354
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 353
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 356
    nop

    .line 364
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 366
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x38

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->j:I

    .line 367
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    .line 268
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->k:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;

    .line 269
    return-void
.end method

.method public setScrollPosition(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->b(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->d:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$SlidingTabStrip;->a(IF)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->a(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->scrollTo(II)V

    .line 159
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setSelectedTabView(I)V

    .line 160
    return-void

    .line 151
    :cond_2
    :goto_0
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 175
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    .local v1, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->addTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 180
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 181
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setOnTabSelectedListener(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$OnTabSelectedListener;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->c:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->getTabAt(I)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->select()V

    .line 187
    :cond_1
    return-void

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
