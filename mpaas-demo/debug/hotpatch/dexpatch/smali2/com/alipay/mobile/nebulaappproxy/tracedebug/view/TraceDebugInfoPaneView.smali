.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;
.super Landroid/widget/LinearLayout;
.source "TraceDebugInfoPaneView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/ViewGroup;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->h:I

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->h:I

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->h:I

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a()V

    .line 54
    return-void
.end method

.method private static a(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 167
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 170
    .local v0, "titleBarHeight":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 172
    iget v2, v1, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .local v2, "statusBarHeight":I
    float-to-int v3, v0

    add-int/2addr v3, v2

    return v3

    .line 174
    .end local v0    # "titleBarHeight":F
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v2    # "statusBarHeight":I
    :catchall_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTitleAndStatusBarHeight...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteDebugInfoPanelView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x49

    return v1
.end method

.method private a()V
    .locals 10

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->c:Landroid/view/ViewGroup;

    .line 60
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a:Landroid/widget/ImageView;

    .line 61
    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 62
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getDensity(Landroid/content/Context;)F

    move-result v1

    .line 63
    .local v1, "density":F
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v4, v1, v3

    float-to-int v4, v4

    mul-float v3, v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 65
    .local v4, "imageViewLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v4, v2

    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 66
    const/16 v2, 0x19

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    .line 70
    const-string/jumbo v8, "\u6027\u80fd\u8c03\u8bd5\u5df2\u8fde\u63a5"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getDensity(Landroid/content/Context;)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 72
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v9, v3

    .line 75
    .local v9, "textViewLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v9, v7

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {v9, v6, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 77
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v5, v3

    .line 88
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v5, v2

    const/4 v7, 0x5

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    const/16 v2, 0x14

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 90
    move-object v7, v0

    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a(Landroid/app/Activity;)I

    move-result v7

    add-int/2addr v7, v2

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->addView(Landroid/view/View;)V

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->setOrientation(I)V

    .line 95
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 96
    .local v3, "drawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v3, v2

    const-string v6, "#CC606066"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 97
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->h:I

    .line 101
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method private b()V
    .locals 4

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 135
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->d:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 136
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->e:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 140
    .local v0, "parentWidth":I
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-gtz v2, :cond_0

    .line 141
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 142
    :cond_0
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 146
    :cond_1
    :goto_0
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->h:I

    if-ge v2, v3, :cond_2

    .line 147
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 148
    :cond_2
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 152
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0    # "parentWidth":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    return-void

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateViewPosition...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->f:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->d:F

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->e:F

    .line 116
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b()V

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 121
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->g:F

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->f:F

    .line 122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b()V

    .line 125
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->g:F

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->f:F

    .line 126
    return v1

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->f:F

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->g:F

    .line 112
    nop

    .line 128
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setStateConnectFailed()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a:Landroid/widget/ImageView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6027\u80fd\u8c03\u8bd5\u4e2d\u65ad"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method public setStateConnected()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a:Landroid/widget/ImageView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6027\u80fd\u8c03\u8bd5\u5df2\u8fde\u63a5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public setStateConnecting()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->a:Landroid/widget/ImageView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6027\u80fd\u8c03\u8bd5\u8fde\u63a5\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method
