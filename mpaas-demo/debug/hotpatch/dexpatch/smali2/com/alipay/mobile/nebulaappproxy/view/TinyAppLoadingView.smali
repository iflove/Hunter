.class public Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;
.super Lcom/alipay/mobile/base/loading/DefaultLoadingView;
.source "TinyAppLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

.field private c:I

.field private d:F

.field private e:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;)Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->e:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;

    return-object v0
.end method


# virtual methods
.method protected getTitleLeftMargin()F
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public initView()V
    .locals 8

    .line 45
    invoke-super {p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->initView()V

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->a:Ljava/lang/String;

    const-string v1, "TinyAppLoadingView...initView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->mBackButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 52
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->c:I

    .line 54
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 55
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getDensity(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->d:F

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->addView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->mBottomTip:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->mBottomTip:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->mBottomTip:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->mBottomTip:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->mBottomTip:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebulaappproxy/R$dimen;->bottom_tip_offset:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 77
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 81
    return-void
.end method

.method protected isBackButtonVisible()Z
    .locals 1

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 95
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->onLayout(ZIIII)V

    .line 98
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->c:I

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->d:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 100
    .local v0, "offsetX":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 101
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 102
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getMeasuredHeight()I

    move-result v3

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->layout(IIII)V

    .line 103
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 85
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 89
    .local v0, "titleBarHeight":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->b:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 90
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->measure(II)V

    .line 91
    return-void
.end method

.method public setOnCloseBtnClickedListener(Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;

    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView;->e:Lcom/alipay/mobile/nebulaappproxy/view/TinyAppLoadingView$OnCloseBtnClickedListener;

    .line 112
    return-void
.end method
