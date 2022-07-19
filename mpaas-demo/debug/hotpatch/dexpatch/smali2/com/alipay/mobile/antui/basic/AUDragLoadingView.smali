.class public Lcom/alipay/mobile/antui/basic/AUDragLoadingView;
.super Lcom/alipay/mobile/antui/load/AbsLoadMoreView;
.source "AUDragLoadingView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# instance fields
.field private isLoadingMore:Z

.field private leftDivide:Landroid/view/View;

.field private mFinishedTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mLoadingTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private rightDivide:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->isLoadingMore:Z

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->isLoadingMore:Z

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->isLoadingMore:Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 44
    if-eqz p2, :cond_0

    .line 45
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->AUDragLoadingView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    .local v1, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->initStyleByTheme(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .end local v1    # "array":Landroid/content/res/TypedArray;
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->initStyleByTheme(Landroid/content/Context;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getFinishedText()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mFinishedTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingText()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mLoadingTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProgressBar()Lcom/alipay/mobile/antui/lottie/AULottieLayout;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_drag_loading_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    sget v0, Lcom/alipay/mobile/antui/R$id;->progress_right_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mLoadingTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 60
    sget v0, Lcom/alipay/mobile/antui/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 61
    invoke-static {p1}, Lcom/alipay/mobile/antui/utils/AULottieFileUtils;->getLoadingAnimation(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 63
    sget v0, Lcom/alipay/mobile/antui/R$id;->drag_loading_finished_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mFinishedTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 64
    sget v0, Lcom/alipay/mobile/antui/R$id;->left_divide:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->leftDivide:Landroid/view/View;

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$id;->right_divide:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->rightDivide:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->setLoadingText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->no_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->setFinishedText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 87
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 73
    if-eqz p3, :cond_0

    .line 74
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUDragLoadingView_progressText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->setLoadingText(Ljava/lang/CharSequence;)V

    .line 75
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUDragLoadingView_finishedText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->setFinishedText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    return-void
.end method

.method public isLoadingMore()Ljava/lang/Boolean;
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->isLoadingMore:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadingFinished(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .line 115
    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->onShowNoMoreText()V

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->onLoadFinish()V

    .line 120
    return-void
.end method

.method public onLoadFinish()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 150
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->setVisibility(I)V

    .line 151
    return-void
.end method

.method public onLoadMore()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->startLoading()V

    .line 145
    return-void
.end method

.method public onShowNoMoreText()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mLoadingTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->leftDivide:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->rightDivide:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mFinishedTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 162
    return-void
.end method

.method public setFinishedText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mFinishedTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 95
    if-nez p1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mLoadingTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setProgressVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public startLoading()V
    .locals 2

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mProgressBar:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mLoadingTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->leftDivide:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->rightDivide:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->mFinishedTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->isLoadingMore:Z

    .line 111
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 92
    return-void
.end method
