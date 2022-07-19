.class public Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;
.super Lcom/alipay/mobile/antui/load/AbsLoadingView;
.source "AUDefaultLoadingView.java"


# instance fields
.field private smilenceView:Lcom/alipay/mobile/antui/load/LoadingAnimationView;

.field private titleView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/load/AbsLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->init()V

    .line 19
    return-void
.end method

.method private init()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->smilence_refresh:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    sget v0, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 69
    sget v0, Lcom/alipay/mobile/antui/R$id;->smile:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/load/LoadingAnimationView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->smilenceView:Lcom/alipay/mobile/antui/load/LoadingAnimationView;

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->setMode(I)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->smilenceView:Lcom/alipay/mobile/antui/load/LoadingAnimationView;

    new-instance v1, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView$1;-><init>(Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->setLoadingAppearedListener(Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public finishLoading()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->smilenceView:Lcom/alipay/mobile/antui/load/LoadingAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->setMode(I)V

    .line 59
    return-void
.end method

.method public onPullOver(II)V
    .locals 0
    .param p1, "distance"    # I
    .param p2, "maxDistance"    # I

    .line 48
    return-void
.end method

.method public pause()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->smilenceView:Lcom/alipay/mobile/antui/load/LoadingAnimationView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->pause()V

    .line 64
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->titleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public startLoading()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->smilenceView:Lcom/alipay/mobile/antui/load/LoadingAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->setMode(I)V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->smilenceView:Lcom/alipay/mobile/antui/load/LoadingAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/LoadingAnimationView;->setAlpha(F)V

    .line 54
    return-void
.end method
