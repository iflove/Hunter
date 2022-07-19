.class public Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;
.super Landroid/widget/LinearLayout;
.source "RemoteDebugInfoPanelView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->j:I

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->j:I

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->j:I

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a()V

    .line 65
    return-void
.end method

.method private static a(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 200
    .local v0, "titleBarHeight":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 202
    iget v2, v1, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .local v2, "statusBarHeight":I
    float-to-int v3, v0

    add-int/2addr v3, v2

    return v3

    .line 204
    .end local v0    # "titleBarHeight":F
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v2    # "statusBarHeight":I
    :catchall_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTitleAndStatusBarHeight...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteDebugInfoPanelView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x49

    return v1
.end method

.method private a()V
    .locals 12

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->d:Landroid/view/ViewGroup;

    .line 71
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a:Landroid/widget/ImageView;

    .line 72
    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 73
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getDensity(Landroid/content/Context;)F

    move-result v1

    .line 74
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

    .line 76
    .local v4, "imageViewLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v4, v2

    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 77
    const/16 v2, 0x19

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    .line 81
    sget v8, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_remote_debug_connected:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getDensity(Landroid/content/Context;)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 83
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v10, v3

    .line 86
    .local v10, "textViewLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v10, v7

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 87
    invoke-virtual {v10, v6, v6, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    new-instance v11, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$1;

    invoke-direct {v11, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->c:Landroid/widget/TextView;

    .line 98
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->c:Landroid/widget/TextView;

    const-string/jumbo v8, "\u9000\u51fa"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->c:Landroid/widget/TextView;

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$2;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v3

    .line 112
    .local v7, "exitViewLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object v7, v2

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v5, v3

    .line 117
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v5, v2

    const/4 v8, 0x5

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 118
    const/16 v2, 0x14

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 119
    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a(Landroid/app/Activity;)I

    move-result v8

    add-int/2addr v8, v2

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 121
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->addView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->addView(Landroid/view/View;)V

    .line 123
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->setOrientation(I)V

    .line 125
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 126
    .local v3, "drawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v3, v2

    const-string v6, "#CC606066"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 127
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 128
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->j:I

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    return-object v0
.end method

.method private b()V
    .locals 4

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 165
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->f:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 166
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->g:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 170
    .local v0, "parentWidth":I
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-gtz v2, :cond_0

    .line 171
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 172
    :cond_0
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 176
    :cond_1
    :goto_0
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->j:I

    if-ge v2, v3, :cond_2

    .line 177
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 178
    :cond_2
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 182
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0, v1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0    # "parentWidth":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    return-void

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Throwable;
    const-class v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateViewPosition...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->h:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->f:F

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->i:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->g:F

    .line 146
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b()V

    .line 147
    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->f:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->g:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 151
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->i:F

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->h:F

    .line 152
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b()V

    .line 155
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->i:F

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->h:F

    .line 156
    return v1

    .line 140
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->h:F

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->i:F

    .line 142
    nop

    .line 158
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setActionEventListener(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    .line 211
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    .line 212
    return-void
.end method

.method public setStateConnectFailed()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a:Landroid/widget/ImageView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_remote_debug_disconnected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    return-void
.end method

.method public setStateConnected()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a:Landroid/widget/ImageView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_remote_debug_connected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    return-void
.end method

.method public setStateConnecting()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a:Landroid/widget/ImageView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8fde\u63a5\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method
