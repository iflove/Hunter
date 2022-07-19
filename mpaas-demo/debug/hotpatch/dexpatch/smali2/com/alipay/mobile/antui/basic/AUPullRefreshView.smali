.class public Lcom/alipay/mobile/antui/basic/AUPullRefreshView;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "AUPullRefreshView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;,
        Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;,
        Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;
    }
.end annotation


# static fields
.field private static final STATE_CLOSE:B = 0x0t

.field private static final STATE_OPEN:B = 0x1t

.field private static final STATE_OPEN_RELEASE:B = 0x3t

.field private static final STATE_OVER:B = 0x2t

.field private static final STATE_OVER_RELEASE:B = 0x4t

.field private static final STATE_REFRESH:B = 0x5t

.field private static final STATE_REFRESH_RELEASE:B = 0x6t


# instance fields
.field private heightChangeListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;

.field private mEnablePull:Z

.field private mFlinger:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastY:I

.field protected mMaxMagin:I

.field protected mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

.field private mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

.field private mState:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mEnablePull:Z

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mEnablePull:Z

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mEnablePull:Z

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPullRefreshView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->moveDown(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->finishInternal()V

    return-void
.end method

.method private finishInternal()V
    .locals 5

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, "head":Landroid/view/View;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->onFinish()V

    .line 363
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->setState(B)V

    .line 364
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lez v2, :cond_0

    .line 365
    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->release(I)V

    return-void

    .line 368
    :cond_0
    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    .line 369
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->heightChangeListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;

    if-eqz v2, :cond_1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshFinished childTop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isRefreshing:false"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AUPullRefreshView"

    invoke-static {v4, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->heightChangeListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;->onChangeHeight(IZ)V

    .line 374
    :cond_1
    return-void
.end method

.method private init()V
    .locals 1

    .line 72
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 73
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;-><init>(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mFlinger:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;

    .line 74
    return-void
.end method

.method private initListener()V
    .locals 4

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->setClipChildren(Z)V

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    invoke-interface {v1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;->getOverView()Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    .line 80
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    return-void
.end method

.method private moveDown(IZ)Z
    .locals 11
    .param p1, "dis"    # I
    .param p2, "changeState"    # Z

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 284
    .local v1, "head":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 286
    .local v4, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, p1

    .line 288
    .local v3, "childTop":I
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    if-lez v5, :cond_0

    if-eqz p2, :cond_0

    .line 290
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    int-to-double v7, v3

    int-to-double v9, v5

    div-double/2addr v7, v9

    iget-byte v5, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    invoke-virtual {v6, v7, v8, v5}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->onPullto(DB)V

    .line 293
    :cond_0
    const/4 v5, 0x5

    if-gtz v3, :cond_2

    .line 294
    if-gez v3, :cond_1

    .line 295
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int p1, v6

    .line 296
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 297
    invoke-virtual {v4, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 298
    iget-byte v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    if-eq v6, v5, :cond_7

    .line 299
    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    goto :goto_0

    .line 300
    :cond_2
    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    const/4 v7, 0x2

    if-gt v3, v6, :cond_5

    .line 301
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v6}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->getState()B

    move-result v6

    if-ne v6, v7, :cond_3

    .line 302
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v6}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->onOpen()V

    .line 303
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->setState(B)V

    .line 305
    :cond_3
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 306
    invoke-virtual {v4, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 307
    if-eqz p2, :cond_4

    iget-byte v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    if-eq v6, v5, :cond_4

    .line 308
    iput-byte v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    goto :goto_0

    .line 309
    :cond_4
    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    if-gt v3, v6, :cond_7

    iget-byte v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 310
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->refresh()V

    goto :goto_0

    .line 312
    :cond_5
    iget-byte v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    if-eq v6, v5, :cond_7

    .line 313
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v6}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->getState()B

    move-result v6

    if-eq v6, v7, :cond_6

    .line 314
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v6}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->onOver()V

    .line 315
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->setState(B)V

    .line 317
    :cond_6
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 318
    invoke-virtual {v4, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 319
    if-eqz p2, :cond_7

    .line 320
    iput-byte v7, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    .line 323
    :cond_7
    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->heightChangeListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;

    if-eqz v6, :cond_9

    .line 324
    iget-byte v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    if-ne v6, v5, :cond_8

    const/4 v0, 0x1

    .line 325
    .local v0, "isRefreshing":Z
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "childTop:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isRefreshing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AUPullRefreshView"

    invoke-static {v6, v5}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->heightChangeListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-interface {v5, v6, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;->onChangeHeight(IZ)V

    .line 328
    .end local v0    # "isRefreshing":Z
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->invalidate()V

    .line 329
    return v2
.end method

.method private refresh()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->onLoad()V

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->setState(B)V

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    invoke-interface {v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;->onRefresh()V

    .line 342
    :cond_0
    return-void
.end method

.method private release(I)V
    .locals 2
    .param p1, "dis"    # I

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    if-le p1, v0, :cond_0

    .line 145
    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mFlinger:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a(I)V

    return-void

    .line 148
    :cond_0
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mFlinger:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a(I)V

    .line 151
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "views"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 402
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->addTouchables(Ljava/util/ArrayList;)V

    .line 403
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public autoRefresh()V
    .locals 2

    .line 407
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->onLoad()V

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->setState(B)V

    .line 410
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->requestLayout()V

    .line 411
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 165
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mEnablePull:Z

    if-nez v0, :cond_0

    .line 166
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mFlinger:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 168
    return v1

    .line 169
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "head":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-eq v2, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v6, 0x106

    if-eq v2, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v6, 0x206

    if-ne v2, v6, :cond_4

    .line 172
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lez v2, :cond_4

    .line 173
    iget-byte v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    if-ne v2, v5, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    if-le v2, v6, :cond_3

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->release(I)V

    .line 175
    return v1

    .line 176
    :cond_3
    iget-byte v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    if-eq v2, v5, :cond_4

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->release(I)V

    .line 178
    return v1

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 184
    .local v1, "bool":Z
    move v1, v2

    if-nez v2, :cond_5

    iget-byte v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 186
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 189
    :cond_6
    if-eqz v1, :cond_7

    .line 190
    return v4

    .line 192
    :cond_7
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public getRefreshListener()Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "evn"    # Landroid/view/MotionEvent;

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, "head":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 240
    .local v4, "child":Landroid/view/View;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 241
    const-string v0, "APPullRefreshView"

    const-string v2, "child is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 244
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 246
    .local v2, "adapterViewTop":I
    iget-byte v5, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 250
    const/4 v5, 0x1

    .line 251
    .local v5, "reqestRelayout":Z
    const/4 v6, 0x0

    .line 252
    .local v6, "listChild":Landroid/widget/AdapterView;
    instance-of v7, v4, Landroid/widget/AdapterView;

    if-eqz v7, :cond_1

    .line 253
    move-object v6, v4

    check-cast v6, Landroid/widget/AdapterView;

    goto :goto_0

    .line 254
    :cond_1
    instance-of v7, v4, Landroid/widget/AdapterView;

    if-nez v7, :cond_2

    .line 255
    move-object v7, v4

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 256
    .local v3, "subChild":Landroid/view/View;
    move-object v3, v7

    if-eqz v7, :cond_2

    instance-of v7, v3, Landroid/widget/AdapterView;

    if-eqz v7, :cond_2

    .line 257
    move-object v6, v3

    check-cast v6, Landroid/widget/AdapterView;

    .line 261
    .end local v3    # "subChild":Landroid/view/View;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 262
    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    const/4 v5, 0x0

    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_4

    .line 265
    const/4 v5, 0x0

    .line 270
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 271
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v1, v0, v3, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 272
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v0, v3, p4, v7}, Landroid/view/View;->layout(IIII)V

    .line 275
    .end local v5    # "reqestRelayout":Z
    .end local v6    # "listChild":Landroid/widget/AdapterView;
    :cond_5
    return-void

    .line 276
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v0, v3, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 277
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v0, v2, p4, v3}, Landroid/view/View;->layout(IIII)V

    .line 280
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .line 106
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "disX"    # F
    .param p4, "disY"    # F

    .line 110
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 111
    return v2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;->canRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    return v2

    .line 115
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "head":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 118
    .local v4, "child":Landroid/view/View;
    move-object v4, v3

    instance-of v3, v3, Landroid/widget/AdapterView;

    if-eqz v3, :cond_3

    .line 119
    move-object v3, v4

    check-cast v3, Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v4

    check-cast v3, Landroid/widget/AdapterView;

    .line 120
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v4

    check-cast v3, Landroid/widget/AdapterView;

    .line 121
    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v3, v4

    check-cast v3, Landroid/widget/AdapterView;

    .line 122
    invoke-virtual {v3, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_4

    .line 123
    :cond_2
    return v2

    .line 124
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_4

    .line 125
    return v2

    .line 128
    :cond_4
    iget-byte v3, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-ne v3, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v3, :cond_5

    cmpl-float v3, p4, v6

    if-gtz v3, :cond_6

    .line 129
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    if-gtz v3, :cond_7

    cmpl-float v3, p4, v6

    if-lez v3, :cond_7

    .line 130
    :cond_6
    return v2

    .line 132
    :cond_7
    iget-byte v3, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mState:B

    const/4 v5, 0x3

    if-eq v3, v5, :cond_a

    const/4 v5, 0x4

    if-eq v3, v5, :cond_a

    const/4 v5, 0x6

    if-ne v3, v5, :cond_8

    goto :goto_0

    .line 135
    :cond_8
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mLastY:I

    .line 136
    .local v2, "speed":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-ltz v3, :cond_9

    .line 137
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mLastY:I

    div-int/lit8 v2, v3, 0x2

    .line 138
    :cond_9
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->moveDown(IZ)Z

    move-result v1

    .line 139
    .local v1, "bool":Z
    neg-float v3, p4

    float-to-int v3, v3

    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mLastY:I

    .line 140
    return v1

    .line 134
    .end local v1    # "bool":Z
    .end local v2    # "speed":I
    :cond_a
    :goto_0
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .line 155
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public refreshFinished()V
    .locals 3

    .line 350
    const-string v0, "AUPullRefreshView"

    const-string/jumbo v1, "refreshFinished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->getRemainedLoadingDuration()J

    move-result-wide v0

    .line 352
    .local v0, "delay":J
    new-instance v2, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$2;-><init>(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method public setEnablePull(Z)V
    .locals 0
    .param p1, "enablePull"    # Z

    .line 382
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mEnablePull:Z

    .line 383
    return-void
.end method

.method public setLoadingHeightChangeListener(Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;

    .line 443
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->heightChangeListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$LoadingHeightChangeListener;

    .line 444
    return-void
.end method

.method public setRefreshListener(Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;)V
    .locals 1
    .param p1, "refreshListener"    # Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->removeView(Landroid/view/View;)V

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mRefreshListener:Lcom/alipay/mobile/antui/basic/AUPullRefreshView$RefreshListener;

    .line 393
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->initListener()V

    .line 394
    return-void
.end method
