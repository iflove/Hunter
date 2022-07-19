.class public Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUEmptyPageLoadingView.java"


# instance fields
.field private lottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private tipView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->setOrientation(I)V

    .line 38
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->setGravity(I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$layout;->au_empty_page_loading:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    sget v1, Lcom/alipay/mobile/antui/R$id;->loading_animation:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->lottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 42
    sget v1, Lcom/alipay/mobile/antui/R$id;->empty_page_tips:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->tipView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->lottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getRefreshAnimation(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->lottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x0

    const v2, 0x3f2e147b    # 0.68f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setMinAndMaxProgress(FF)V

    .line 46
    return-void
.end method


# virtual methods
.method public getLottieLayout()Lcom/alipay/mobile/antui/lottie/AULottieLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->lottieLayout:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    return-object v0
.end method

.method public getTipView()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->tipView:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUEmptyPageLoadingView;->tipView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
