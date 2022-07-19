.class public Lcom/alipay/mobile/nebula/view/H5WebLoadingView;
.super Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;
.source "H5WebLoadingView.java"


# instance fields
.field private mBackButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mDarkAnim:Landroid/animation/ValueAnimator;

.field private mDarkColor:I

.field private mDarkDotX:I

.field private mDarkDotY:I

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotSize:I

.field private mIsAnimating:Z

.field private mLightColor:I

.field private mLightDotX:I

.field private mLoadingIcon:Landroid/widget/ImageView;

.field private mLoadingTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->initView()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    .line 33
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I

    return p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;
    .param p1, "x1"    # I

    .line 33
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightDotX:I

    return p1
.end method

.method private getDimen(I)I
    .locals 1
    .param p1, "id"    # I

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static makeMeasureSpec(I)I
    .locals 1
    .param p0, "size"    # I

    .line 251
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 178
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 179
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightDotX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 185
    :cond_0
    return-void
.end method

.method public getBackButton()Landroid/widget/TextView;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public initView()V
    .locals 6

    .line 108
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 109
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->default_loading_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 112
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->addView(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    .line 121
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "h5iconfont"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "h5titlebar.ttf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    const-string/jumbo v2, "\ue608"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    const v2, -0xef7117

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_dot_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkColor:I

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_dot_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightColor:I

    .line 131
    sget v0, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_dot_size:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    .line 133
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_default_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setBackgroundColor(I)V

    .line 136
    return-void
.end method

.method public initViewAfterSetContent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 72
    const-string v0, "appIcon"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    .local v1, "logo":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$2;-><init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public initViewBeforeSetContent(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 57
    const-string v0, "appName"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "appName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setLoadingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getBackButton()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;-><init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 162
    .local v0, "offsetX":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 163
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 163
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 167
    .end local v0    # "offsetX":I
    .local v2, "offsetX":I
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_title_margin_top:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 169
    .end local v1    # "offsetY":I
    .local v0, "offsetY":I
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 170
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 169
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_dot_margin_top:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotY:I

    .line 174
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 141
    .local v0, "size":I
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v2

    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 143
    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_title_width:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v1

    .line 144
    .local v1, "width":I
    sget v2, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_title_height:I

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v2

    .line 145
    .local v2, "height":I
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v4

    invoke-static {v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 147
    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_back_button_width:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v1

    .line 148
    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v4

    invoke-static {v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setMeasuredDimension(II)V

    .line 153
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->startLoadingAnimation()V

    .line 89
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->stopLoadingAnimation()V

    .line 94
    return-void
.end method

.method public sendToWebFail()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->stopLoadingAnimation()V

    .line 104
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_network_poor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setLoadingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    return-void
.end method

.method public setLoadingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "bgColorStr"    # Ljava/lang/String;
    .param p3, "themeColorStr"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "bgColor":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setBackgroundColor(I)V

    .line 195
    .end local v0    # "bgColor":I
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "themeColor":I
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .end local v0    # "themeColor":I
    :cond_1
    return-void
.end method

.method public startLoadingAnimation()V
    .locals 8

    .line 206
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 209
    .local v0, "centerX":I
    sget v2, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_dot_margin_center:I

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v2

    .line 210
    .local v2, "margin":I
    iget v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    sub-int/2addr v4, v2

    .line 211
    .local v4, "darkDotOffsetX":I
    add-int v5, v0, v2

    div-int/2addr v3, v1

    add-int/2addr v5, v3

    .line 213
    .local v5, "lightDotOffsetX":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    .line 214
    new-array v6, v1, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    aput v5, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    .line 215
    const-wide/16 v6, 0x190

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    const/16 v6, 0x5a

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 217
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$3;-><init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 231
    return-void
.end method

.method public stopLoadingAnimation()V
    .locals 1

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    .line 240
    :cond_0
    return-void
.end method
