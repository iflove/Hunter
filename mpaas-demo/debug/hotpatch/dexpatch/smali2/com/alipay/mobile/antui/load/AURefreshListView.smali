.class public Lcom/alipay/mobile/antui/load/AURefreshListView;
.super Lcom/alipay/mobile/antui/basic/AUListView;
.source "AURefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayActionCallback;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$a;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$c;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$STYLE;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$b;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$e;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$f;,
        Lcom/alipay/mobile/antui/load/AURefreshListView$d;
    }
.end annotation


# static fields
.field private static final CLOSE_STAY_ANIM_DURATION:J = 0x64L

.field private static final MOVE_SHAKE:F = 36.0f

.field private static final OPEN_STAY_ANIM_DURATION:J = 0x64L

.field public static final STYLE_DEFAULT:I = 0x0

.field public static final STYLE_STAY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AURefreshListView"

.field private static final THRESHOLD:F = 0.2f


# instance fields
.field private closeAnim:Landroid/animation/ValueAnimator;

.field private currentStyle:Ljava/lang/String;

.field private delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

.field private firstMotionY:F

.field private firstX:F

.field private firstY:F

.field private fixedHeaderHeight:I

.field private fixedHeaderView:Landroid/view/View;

.field private hasMore:Z

.field private headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

.field private heightSum:I

.field isAutoOpen:Z

.field isFirstClose:Z

.field isFirstLayout:Z

.field isFullClose:Z

.field private isIndex1:Z

.field private isMove:Z

.field private isRefreshing:Z

.field private isRemoveRefresh:Z

.field private isShowLoad:Z

.field private isStayShowPre:Z

.field private isTouching:Z

.field private isUserOperate:Z

.field private loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

.field private loadingViewTopMargin:I

.field private mActionCallback:Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayActionCallback;

.field private mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

.field private mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mOnLoadMoreListener:Lcom/alipay/mobile/antui/load/OnLoadMoreListener;

.field private mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

.field private mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOpen2FullClosedListener:Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;

.field private maxPullDistance:I

.field private openAnim:Landroid/animation/ValueAnimator;

.field private refreshDistance:I

.field private refreshFinishAnimationListener:Lcom/alipay/mobile/antui/load/AURefreshListView$d;

.field private refreshFinished:Z

.field private releaseToRefreshAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private secondMotionY:F

.field private stayCloseDistance:I

.field private stayDistance:I

.field private stayMaxDistance:I

.field private stayOpenDistance:I

.field private stayOpenedFlag:Z

.field private stayViewTopMargin:I

.field private style:I

.field private vibrator:Landroid/os/Vibrator;

.field private willShowFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->hasMore:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isShowLoad:Z

    .line 56
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    .line 57
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 58
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 61
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    .line 69
    const-string v2, "_BLUE"

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->currentStyle:Ljava/lang/String;

    .line 71
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    .line 387
    new-instance v2, Lcom/alipay/mobile/antui/load/AURefreshListView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/load/AURefreshListView$1;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->releaseToRefreshAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 760
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->style:I

    .line 877
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    .line 878
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstY:F

    .line 879
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstX:F

    .line 935
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFullClose:Z

    .line 994
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstClose:Z

    .line 1267
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isAutoOpen:Z

    .line 79
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->hasMore:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isShowLoad:Z

    .line 56
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    .line 57
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 58
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 61
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    .line 69
    const-string v2, "_BLUE"

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->currentStyle:Ljava/lang/String;

    .line 71
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    .line 387
    new-instance v2, Lcom/alipay/mobile/antui/load/AURefreshListView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/load/AURefreshListView$1;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->releaseToRefreshAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 760
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->style:I

    .line 877
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    .line 878
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstY:F

    .line 879
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstX:F

    .line 935
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFullClose:Z

    .line 994
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstClose:Z

    .line 1267
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isAutoOpen:Z

    .line 85
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->hasMore:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isShowLoad:Z

    .line 56
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    .line 57
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 58
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 61
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    .line 69
    const-string v2, "_BLUE"

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->currentStyle:Ljava/lang/String;

    .line 71
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    .line 387
    new-instance v2, Lcom/alipay/mobile/antui/load/AURefreshListView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/load/AURefreshListView$1;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->releaseToRefreshAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 760
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->style:I

    .line 877
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    .line 878
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstY:F

    .line 879
    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstX:F

    .line 935
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFullClose:Z

    .line 994
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstClose:Z

    .line 1267
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isAutoOpen:Z

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/alipay/mobile/antui/load/AURefreshListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayCloseDistance:I

    return p1
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/alipay/mobile/antui/load/AURefreshListView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;
    .param p1, "x1"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/antui/load/AURefreshListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/antui/load/AURefreshListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->animStayView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/antui/load/AURefreshListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayViewTopMargin:I

    return v0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/antui/load/AURefreshListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isUserOperate:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/antui/load/AURefreshListView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeStayReal(ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/antui/load/AURefreshListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/load/AURefreshListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinishLayoutAction()V

    return-void
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/antui/load/AURefreshListView;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->openStayReal(ZZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/AbsLoadingView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/load/AURefreshListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/load/AURefreshListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/antui/load/AURefreshListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinished:Z

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/antui/load/AURefreshListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 40
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayDistance:I

    return v0
.end method

.method static synthetic access$802(Lcom/alipay/mobile/antui/load/AURefreshListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayDistance:I

    return p1
.end method

.method static synthetic access$902(Lcom/alipay/mobile/antui/load/AURefreshListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenDistance:I

    return p1
.end method

.method private animStayView()V
    .locals 3

    .line 1239
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isAutoOpen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFullClose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 1240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 1242
    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setShowLine(Z)V

    .line 1244
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayViewTopMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onPullOver(II)V

    .line 1245
    return-void
.end method

.method private callAction(I)V
    .locals 1
    .param p1, "action"    # I

    .line 990
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mActionCallback:Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayActionCallback;

    if-nez v0, :cond_0

    return-void

    .line 991
    :cond_0
    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayActionCallback;->onAction(I)V

    .line 992
    return-void
.end method

.method private callOpen2FullClosedListener(Z)V
    .locals 2
    .param p1, "isUserOperate"    # Z

    .line 1231
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenedFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOpen2FullClosedListener:Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;

    if-eqz v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenedFlag:Z

    .line 1233
    const-string v0, "AURefreshListView"

    const-string/jumbo v1, "stay closed."

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOpen2FullClosedListener:Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;->onStayOpen2FullClosed(Z)V

    .line 1236
    :cond_0
    return-void
.end method

.method private cancelAnim()V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->openAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 874
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 875
    return-void
.end method

.method private closeStayReal(ZZ)V
    .locals 3
    .param p1, "isAnim"    # Z
    .param p2, "isUserOperate"    # Z

    .line 1216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setSelection(I)V

    .line 1217
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    .line 1218
    iput-boolean p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isUserOperate:Z

    .line 1219
    if-eqz p1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1222
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_1

    return-void

    .line 1223
    :cond_1
    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayViewTopMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1224
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onPullOver(II)V

    .line 1226
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callOpen2FullClosedListener(Z)V

    .line 1228
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;

    .line 419
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    .line 421
    new-instance v0, Lcom/alipay/mobile/antui/load/AntLoadingView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/load/AntLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 422
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->initLoadingListener()V

    .line 423
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 426
    .local v2, "progressLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 431
    .local v0, "headerLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 434
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 436
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->pull_refresh_max_distance:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->maxPullDistance:I

    .line 437
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->pull_refresh_distance:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    .line 438
    return-void
.end method

.method private initAnim()V
    .locals 6

    .line 814
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->openAnim:Landroid/animation/ValueAnimator;

    .line 815
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 816
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->openAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 817
    new-instance v1, Lcom/alipay/mobile/antui/load/AURefreshListView$c;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/alipay/mobile/antui/load/AURefreshListView$c;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;B)V

    .line 818
    .local v1, "openStayAnimationListener":Lcom/alipay/mobile/antui/load/AURefreshListView$c;
    iget-object v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->openAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 819
    iget-object v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->openAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 821
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeAnim:Landroid/animation/ValueAnimator;

    .line 822
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 823
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$a;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/antui/load/AURefreshListView$a;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;B)V

    .line 824
    .local v0, "closeStayAnimationListener":Lcom/alipay/mobile/antui/load/AURefreshListView$a;
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 825
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 826
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initLoadingListener()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    new-instance v1, Lcom/alipay/mobile/antui/load/AURefreshListView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/load/AURefreshListView$2;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLoadingListener(Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;)V

    .line 457
    return-void
.end method

.method private initLoadingView(Lcom/alipay/mobile/antui/load/AbsLoadingView;)V
    .locals 1
    .param p1, "loadingView"    # Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 799
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$3;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Lcom/alipay/mobile/antui/load/AbsLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->post(Ljava/lang/Runnable;)Z

    .line 811
    return-void
.end method

.method private invokeReleaseAnimation()V
    .locals 5

    .line 375
    const-string v0, "AURefreshListView"

    const-string v1, "invokeReleaseAnimation"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v1, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Landroid/view/View;I)V

    const/4 v2, 0x0

    .line 377
    .local v2, "animation":Lcom/alipay/mobile/antui/load/AURefreshListView$e;
    move-object v2, v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->setDuration(J)V

    .line 378
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinishAnimationListener:Lcom/alipay/mobile/antui/load/AURefreshListView$d;

    if-nez v1, :cond_0

    .line 379
    const-string/jumbo v1, "refreshFinishAnimationListener is null "

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView$d;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinishAnimationListener:Lcom/alipay/mobile/antui/load/AURefreshListView$d;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinishAnimationListener:Lcom/alipay/mobile/antui/load/AURefreshListView$d;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 383
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 385
    return-void
.end method

.method private onLayoutStay()V
    .locals 5

    .line 1052
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    .line 1053
    .local v0, "previousFixedHeaderHeight":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1054
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    .line 1056
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v1

    if-lez v1, :cond_5

    .line 1057
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayViewTopMargin:I

    .line 1058
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstLayout:Z

    const-string v2, "AURefreshListView"

    if-eqz v1, :cond_1

    .line 1059
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstLayout:Z

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stayViewTopMargin 0 :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayViewTopMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1062
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onPullOver(II)V

    return-void

    .line 1064
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isTouching:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->openAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1065
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stayViewTopMargin 1 :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1068
    :cond_3
    if-eqz v0, :cond_4

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-eq v0, v1, :cond_4

    .line 1069
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stayViewTopMargin 3 :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1073
    :cond_4
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-eq v0, v1, :cond_5

    .line 1074
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayViewTopMargin:I

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1075
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stayViewTopMargin 4 :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    :cond_5
    return-void
.end method

.method private onScrollStateChangedStyle(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 1083
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1084
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isShowLoad:Z

    if-eqz v0, :cond_1

    .line 1085
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->hasMore:Z

    if-nez v0, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;->loadingFinished(Z)V

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;->startLoading()V

    .line 1089
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnLoadMoreListener:Lcom/alipay/mobile/antui/load/OnLoadMoreListener;

    if-eqz v0, :cond_2

    .line 1090
    invoke-interface {v0}, Lcom/alipay/mobile/antui/load/OnLoadMoreListener;->onLoadMore()V

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;->loadingFinished(Z)V

    .line 1095
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 1099
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1100
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    .line 1101
    invoke-interface {v2, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1102
    goto :goto_1

    .line 1105
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v0, :cond_4

    .line 1106
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setSelection(I)V

    .line 1108
    :cond_4
    return-void
.end method

.method private onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I

    .line 639
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    return-void

    .line 641
    :cond_0
    if-nez p2, :cond_1

    .line 642
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 645
    :cond_1
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x0

    .line 619
    .local v1, "i":I
    move v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 621
    :cond_0
    if-nez v1, :cond_1

    .line 622
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 623
    .local v0, "motionY":F
    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    iput v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    goto :goto_0

    .line 625
    .end local v0    # "motionY":F
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 626
    .restart local v0    # "motionY":F
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 628
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    .line 630
    .end local v0    # "motionY":F
    :cond_2
    return-void
.end method

.method private onTouchMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->currentStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->initAnimation(Ljava/lang/String;)V

    .line 566
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    .line 567
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 568
    .local v3, "pointCount":I
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 569
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    .line 570
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 571
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 572
    :cond_1
    const/4 v1, 0x2

    if-lt v3, v1, :cond_4

    .line 573
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    .line 574
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 575
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    .line 576
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 577
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    .line 578
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v7, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    sub-float/2addr v5, v7

    div-float/2addr v5, v4

    add-float/2addr v1, v5

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 582
    :cond_4
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-gt v0, v1, :cond_5

    .line 583
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 584
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    if-gt v1, v4, :cond_6

    .line 585
    return v2

    .line 587
    :cond_5
    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->maxPullDistance:I

    add-int v4, v1, v2

    if-lt v0, v4, :cond_6

    .line 588
    add-int v0, v1, v2

    goto :goto_1

    .line 587
    :cond_6
    nop

    .line 590
    :goto_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setLoadingViewLoc(I)V

    .line 591
    return v6
.end method

.method private onTouchMoveEventStay(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    .line 997
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    .line 998
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 999
    .local v3, "pointCount":I
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 1000
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    .line 1001
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 1003
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 1004
    :cond_1
    const/4 v1, 0x2

    if-lt v3, v1, :cond_4

    .line 1005
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_2

    .line 1006
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 1008
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    .line 1009
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 1011
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    .line 1012
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v7, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    sub-float/2addr v5, v7

    div-float/2addr v5, v4

    add-float/2addr v1, v5

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1015
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v1, :cond_5

    .line 1016
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 1018
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v1

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenDistance:I

    if-lt v1, v4, :cond_7

    .line 1020
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->willShowFlag:Z

    if-eqz v1, :cond_8

    .line 1021
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->willShowFlag:Z

    .line 1022
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->vibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_6

    .line 1023
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->vibrator:Landroid/os/Vibrator;

    .line 1025
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->vibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_8

    .line 1026
    const-wide/16 v4, 0xa

    invoke-virtual {v1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .line 1031
    :cond_7
    iput-boolean v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->willShowFlag:Z

    .line 1034
    :cond_8
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    const-string v4, "AURefreshListView"

    if-gt v0, v1, :cond_a

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onTouchMoveEventStay: 2: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstClose:Z

    if-eqz v1, :cond_9

    .line 1037
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstClose:Z

    .line 1038
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setLoadingViewLocStay(I)V

    .line 1040
    :cond_9
    return v2

    .line 1041
    :cond_a
    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayMaxDistance:I

    add-int v5, v1, v2

    if-lt v0, v5, :cond_b

    .line 1043
    add-int v0, v1, v2

    .line 1045
    :cond_b
    iput-boolean v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFirstClose:Z

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onTouchMoveEventStay: 1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setLoadingViewLocStay(I)V

    .line 1048
    return v6
.end method

.method private openStayReal(ZZZ)V
    .locals 3
    .param p1, "isAnim"    # Z
    .param p2, "isCall"    # Z
    .param p3, "isUserOperate"    # Z

    .line 1200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setSelection(I)V

    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenedFlag:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    .line 1202
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    if-eqz v1, :cond_0

    .line 1203
    invoke-interface {v1}, Lcom/alipay/mobile/antui/load/OnPullRefreshListener;->onRefresh()V

    .line 1205
    :cond_0
    if-eqz p1, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->openAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1208
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_2

    return-void

    .line 1209
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1210
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1211
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1, v0, v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onPullOver(II)V

    .line 1213
    return-void
.end method

.method private processStayEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    .line 829
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->cancelAnim()V

    .line 830
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 831
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 833
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 864
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 861
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 862
    goto :goto_0

    .line 841
    :cond_3
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isTouching:Z

    .line 842
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v0, :cond_4

    .line 843
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onTouchMoveEventStay(Landroid/view/MotionEvent;)Z

    .line 844
    return v1

    .line 846
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-lt v0, v2, :cond_8

    .line 847
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onTouchMoveEventStay(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 848
    return v1

    .line 855
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isTouching:Z

    .line 856
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    sub-float/2addr v0, v1

    .line 857
    .local v0, "moveDistance":F
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->upToRefreshStay(F)V

    .line 858
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->reset()V

    .line 859
    goto :goto_0

    .line 835
    .end local v0    # "moveDistance":F
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-lt v0, v2, :cond_7

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 838
    :cond_7
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isTouching:Z

    .line 839
    nop

    .line 869
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private refreshFinishLayoutAction()V
    .locals 2

    .line 683
    const-string v0, "AURefreshListView"

    const-string/jumbo v1, "refreshFinishLayoutAction"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->removeDelayInvoke()V

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->finishLoading()V

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 689
    .local v1, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 690
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 691
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    .end local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method private releaseToRefreshPosition()V
    .locals 4

    .line 411
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$e;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    add-int/2addr v2, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Landroid/view/View;I)V

    const/4 v1, 0x0

    .line 412
    .local v1, "animation":Lcom/alipay/mobile/antui/load/AURefreshListView$e;
    move-object v1, v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->setDuration(J)V

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->releaseToRefreshAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView$e;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setFirstLoadingAppeared(Z)V

    .line 416
    return-void
.end method

.method private removeDelayInvoke()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "AURefreshListView"

    const-string/jumbo v1, "removeDelayInvoke"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 729
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->heightSum:I

    .line 442
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 443
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->secondMotionY:F

    .line 444
    return-void
.end method

.method private setLoadingViewLoc(I)V
    .locals 3
    .param p1, "height"    # I

    .line 702
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    if-eqz v0, :cond_0

    .line 703
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onPullOver(II)V

    .line 704
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 705
    .local v1, "loadingLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v2

    sub-int v2, p1, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    .end local v1    # "loadingLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method private setLoadingViewLocStay(I)V
    .locals 2
    .param p1, "height"    # I

    .line 1111
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1113
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadingViewLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->animStayView()V

    .line 1116
    :cond_0
    return-void
.end method

.method private upToRefresh()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->releaseToRefreshPosition()V

    .line 600
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinished:Z

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0}, Lcom/alipay/mobile/antui/load/OnPullRefreshListener;->onRefresh()V

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRefresh, thread : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AURefreshListView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-le v0, v1, :cond_2

    .line 607
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->finishRefresh(Z)V

    .line 610
    :cond_2
    return-void
.end method

.method private upToRefreshStay(F)V
    .locals 6
    .param p1, "moveDistance"    # F

    .line 943
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShow()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AURefreshListView"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 944
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v0, :cond_0

    .line 945
    invoke-direct {p0, v3, v1, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->openStayReal(ZZZ)V

    .line 946
    const-string/jumbo v0, "upToRefreshStay 1"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 948
    :cond_0
    invoke-direct {p0, v3, v3, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->openStayReal(ZZZ)V

    .line 949
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V

    .line 950
    const-string/jumbo v0, "upToRefreshStay 2"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 953
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v0, :cond_4

    .line 955
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayCloseDistance:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_2

    .line 956
    invoke-direct {p0, v3, v1, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->openStayReal(ZZZ)V

    .line 957
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V

    .line 958
    const-string/jumbo v0, "upToRefreshStay 3"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 961
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayCloseDistance:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    .line 962
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_3

    .line 963
    iput-boolean v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFullClose:Z

    .line 964
    invoke-direct {p0, v3, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeStayReal(ZZ)V

    .line 965
    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V

    .line 966
    const-string/jumbo v0, "upToRefreshStay 4"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 968
    :cond_3
    iput-boolean v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isFullClose:Z

    .line 969
    invoke-direct {p0, v3, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeStayReal(ZZ)V

    .line 970
    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V

    .line 971
    const-string/jumbo v0, "upToRefreshStay 5"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 975
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenDistance:I

    if-lt v0, v4, :cond_5

    .line 976
    invoke-direct {p0, v3, v3, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->openStayReal(ZZZ)V

    .line 977
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V

    .line 978
    const-string/jumbo v0, "upToRefreshStay 6"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 979
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 981
    invoke-direct {p0, v3, v3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->closeStayReal(ZZ)V

    .line 982
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V

    .line 983
    const-string/jumbo v0, "upToRefreshStay 7"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_6
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public closeStay(Z)V
    .locals 1
    .param p1, "isShowAnim"    # Z

    .line 1257
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1258
    :cond_0
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$4;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->post(Ljava/lang/Runnable;)Z

    .line 1265
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 886
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v0, :cond_a

    .line 887
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstY:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->pointToPosition(II)I

    move-result v0

    .line 888
    .local v0, "curPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstY:F

    .line 890
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstX:F

    .line 891
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isMove:Z

    .line 892
    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isIndex1:Z

    .line 893
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_3

    .line 894
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    const-string v5, "horizontalSlide"

    if-ne v1, v4, :cond_6

    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstX:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 896
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstY:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 897
    .local v4, "deltaY":F
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isMove:Z

    if-nez v6, :cond_4

    .line 898
    const/high16 v6, 0x42100000    # 36.0f

    cmpl-float v7, v4, v6

    if-gez v7, :cond_3

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isMove:Z

    .line 899
    if-eqz v6, :cond_4

    .line 900
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 901
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setPressed(Z)V

    .line 902
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setEnabled(Z)V

    .line 903
    iget-object v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setPressed(Z)V

    .line 906
    :cond_4
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isIndex1:Z

    if-eqz v6, :cond_5

    if-ne v0, v3, :cond_5

    .line 907
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 908
    const-string v2, "dispatchTouchEvent0"

    invoke-static {v5, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 910
    :cond_5
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isIndex1:Z

    .line 911
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 913
    .end local v1    # "deltaX":F
    .end local v4    # "deltaY":F
    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 914
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isMove:Z

    if-nez v1, :cond_7

    .line 915
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3

    .line 917
    :cond_7
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isIndex1:Z

    if-eqz v1, :cond_8

    if-ne v0, v3, :cond_8

    .line 918
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 919
    const-string v1, "dispatchTouchEvent1"

    invoke-static {v5, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 921
    :cond_8
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 923
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 924
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setEnabled(Z)V

    .line 925
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 928
    :cond_9
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 930
    :goto_3
    return v3

    .line 932
    .end local v0    # "curPos":I
    :cond_a
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finishRefresh()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRemoveRefresh:Z

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView$b;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->delayRunnable:Lcom/alipay/mobile/antui/load/AURefreshListView$b;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->finishRefresh(Z)V

    return-void

    .line 215
    :cond_1
    const-string v0, "AURefreshListView"

    const-string/jumbo v1, "refresh is removed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_2
    return-void
.end method

.method public finishRefresh(Z)V
    .locals 3
    .param p1, "afterLoadingAppeared"    # Z

    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRemoveRefresh:Z

    const-string v1, "AURefreshListView"

    if-nez v0, :cond_2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshFinished, afterLoadingAppeared:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",firstLoadingAppeared:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 224
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isFirstLoadingAppeared()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isFirstLoadingAppeared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->invokeReleaseAnimation()V

    .line 228
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinished:Z

    return-void

    .line 230
    :cond_2
    const-string/jumbo v0, "refresh is removed"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_3
    return-void
.end method

.method public getCloseStayAnimDuration()J
    .locals 2

    .line 1299
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getLoadingView()Lcom/alipay/mobile/antui/load/AbsLoadingView;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    return-object v0
.end method

.method public getOnPullRefreshListener()Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 1308
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->style:I

    return v0
.end method

.method public isDefaultStyle()Z
    .locals 1

    .line 1332
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->style:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStayExpose()Z
    .locals 5

    .line 1354
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getLoadingView()Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    .line 1356
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    if-nez v0, :cond_1

    return v1

    .line 1357
    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1358
    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    iget-object v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isStayShow()Z
    .locals 4

    .line 1341
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1342
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getLoadingView()Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    .line 1343
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    if-nez v0, :cond_1

    return v1

    .line 1344
    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1345
    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-lt v0, v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 462
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AURefreshListView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "paramBoolean"    # Z
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .param p4, "paramInt3"    # I
    .param p5, "paramInt4"    # I

    .line 471
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AUListView;->onLayout(ZIIII)V

    .line 472
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    .line 477
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    .line 478
    .local v0, "previousFixedHeaderHeight":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v1

    if-lez v1, :cond_4

    .line 482
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    .line 483
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    .line 484
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v2, v1

    const-string v3, "AURefreshListView"

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isTouching:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    if-nez v1, :cond_2

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    if-eq v1, v4, :cond_2

    .line 487
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "loadingViewTopMargin 1 :"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 491
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-eq v0, v1, :cond_3

    .line 494
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    sub-int/2addr v4, v0

    add-int/2addr v1, v4

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "loadingViewTopMargin 2 :"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 498
    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-eq v0, v1, :cond_4

    .line 501
    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    add-int/2addr v1, v4

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "loadingViewTopMargin 3 :"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    .end local v0    # "previousFixedHeaderHeight":I
    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    return-void

    .line 507
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onLayoutStay()V

    .line 509
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 286
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 287
    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isStayShowPre:Z

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setSelection(I)V

    .line 292
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 255
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    if-nez v0, :cond_2

    .line 257
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isShowLoad:Z

    if-eqz v0, :cond_1

    .line 258
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->hasMore:Z

    if-nez v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;->loadingFinished(Z)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;->startLoading()V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnLoadMoreListener:Lcom/alipay/mobile/antui/load/OnLoadMoreListener;

    if-eqz v0, :cond_2

    .line 263
    invoke-interface {v0}, Lcom/alipay/mobile/antui/load/OnLoadMoreListener;->onLoadMore()V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadMoreView;->loadingFinished(Z)V

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 272
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 274
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 275
    goto :goto_1

    :cond_3
    return-void

    .line 278
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onScrollStateChangedStyle(Landroid/widget/AbsListView;I)V

    .line 280
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    .line 512
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 513
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 514
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 522
    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isTouching:Z

    goto :goto_1

    .line 518
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isTouching:Z

    .line 519
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->reset()V

    .line 524
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    if-eqz v0, :cond_5

    .line 525
    const-string v0, "AURefreshListView"

    const-string/jumbo v1, "onTouch, isRefreshing = true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 528
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 548
    :cond_6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 545
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 546
    goto :goto_3

    .line 535
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-lt v0, v1, :cond_d

    .line 536
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->onTouchMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    return v3

    :cond_a
    :goto_2
    return v4

    .line 541
    :cond_b
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->reset()V

    .line 542
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->upToRefresh()V

    .line 543
    goto :goto_3

    .line 530
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderHeight:I

    if-lt v0, v1, :cond_d

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->firstMotionY:F

    .line 552
    :cond_d
    :goto_3
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 554
    :cond_e
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->processStayEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openStay(Z)V
    .locals 1
    .param p1, "isShowAnim"    # Z

    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->openStay(ZZ)V

    .line 1271
    return-void
.end method

.method public openStay(ZZ)V
    .locals 1
    .param p1, "isShowAnim"    # Z
    .param p2, "isCall"    # Z

    .line 1280
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1281
    :cond_0
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/antui/load/AURefreshListView$5;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;ZZ)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->post(Ljava/lang/Runnable;)Z

    .line 1291
    return-void
.end method

.method public removeRefresh()V
    .locals 1

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRemoveRefresh:Z

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->removeHeaderView(Landroid/view/View;)Z

    .line 122
    return-void
.end method

.method public setActionCallback(Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayActionCallback;)V
    .locals 0
    .param p1, "actionCallback"    # Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayActionCallback;

    .line 1362
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mActionCallback:Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayActionCallback;

    .line 1363
    return-void
.end method

.method public setFixedHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "headerView"    # Landroid/view/View;

    .line 295
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->fixedHeaderView:Landroid/view/View;

    .line 296
    if-eqz p1, :cond_0

    .line 297
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 299
    .local v0, "imageLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .end local v0    # "imageLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setLoadMore(Lcom/alipay/mobile/antui/load/AbsLoadMoreView;)V
    .locals 1
    .param p1, "loadMoreView"    # Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mLoadMoreView:Lcom/alipay/mobile/antui/load/AbsLoadMoreView;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isShowLoad:Z

    .line 134
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->addFooterView(Landroid/view/View;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setLoadMore(Z)V
    .locals 2
    .param p1, "loadMore"    # Z

    .line 125
    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setLoadMore(Lcom/alipay/mobile/antui/load/AbsLoadMoreView;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "loadingText"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->setLoadingText(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setLoadingView(IILcom/alipay/mobile/antui/load/AbsLoadingView;)V
    .locals 4
    .param p1, "backgroundColor"    # I
    .param p2, "style"    # I
    .param p3, "loadingView"    # Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 768
    if-eqz p3, :cond_1

    .line 769
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->removeView(Landroid/view/View;)V

    .line 770
    iput-object p3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 772
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->setStyle(I)V

    .line 773
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 777
    .local v0, "progressLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->initLoadingListener()V

    .line 778
    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 779
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v2, v3, v1, v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 781
    .end local v0    # "progressLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 784
    .restart local v0    # "progressLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->pull_stay_max_distance:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayMaxDistance:I

    .line 785
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->pull_stay_distance:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayOpenDistance:I

    .line 786
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->pull_stay_distance:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayDistance:I

    .line 787
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->pull_stay_close_distance:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->stayCloseDistance:I

    .line 788
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->initAnim()V

    .line 789
    invoke-direct {p0, p3}, Lcom/alipay/mobile/antui/load/AURefreshListView;->initLoadingView(Lcom/alipay/mobile/antui/load/AbsLoadingView;)V

    .line 790
    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    iget-object v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v2, v3, v1, v0}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 793
    .end local v0    # "progressLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->setBackgroundColor(I)V

    .line 796
    :cond_2
    return-void
.end method

.method public setLoadingView(ILcom/alipay/mobile/antui/load/AbsLoadingView;)V
    .locals 3
    .param p1, "backgroundColor"    # I
    .param p2, "loadingView"    # Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->removeView(Landroid/view/View;)V

    .line 106
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 109
    .local v1, "progressLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    iput-object p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    .line 111
    invoke-direct {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->initLoadingListener()V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .end local v1    # "progressLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->setBackgroundColor(I)V

    .line 117
    :cond_1
    return-void
.end method

.method public setLoadingView(ILjava/lang/String;)V
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "style"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->currentStyle:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iput-object p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->currentStyle:Ljava/lang/String;

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->headerContainer:Lcom/alipay/mobile/antui/basic/AUFrameLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->setBackgroundColor(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/alipay/mobile/antui/load/OnLoadMoreListener;)V
    .locals 0
    .param p1, "onLoadMoreListener"    # Lcom/alipay/mobile/antui/load/OnLoadMoreListener;

    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnLoadMoreListener:Lcom/alipay/mobile/antui/load/OnLoadMoreListener;

    .line 167
    return-void
.end method

.method public setOnPullRefreshListener(Lcom/alipay/mobile/antui/load/OnPullRefreshListener;)V
    .locals 0
    .param p1, "onPullRefreshListener"    # Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    .line 158
    return-void
.end method

.method public setOpen2FullClosedListener(Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;)V
    .locals 0
    .param p1, "open2FullClosedListener"    # Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;

    .line 1366
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->mOpen2FullClosedListener:Lcom/alipay/mobile/antui/load/AURefreshListView$OnStayOpen2FullClosedListener;

    .line 1367
    return-void
.end method

.method public setStyle(I)V
    .locals 2
    .param p1, "style"    # I

    .line 1317
    if-nez p1, :cond_0

    .line 1318
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->style:I

    return-void

    .line 1319
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1320
    iput v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->style:I

    return-void

    .line 1322
    :cond_1
    const-string v0, "AURefreshListView"

    const-string/jumbo v1, "style is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void
.end method

.method public startRefresh()V
    .locals 1

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->startRefresh(Z)V

    .line 178
    return-void
.end method

.method public startRefresh(Z)V
    .locals 5
    .param p1, "callListener"    # Z

    .line 181
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->isDefaultStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRemoveRefresh:Z

    const-string v1, "AURefreshListView"

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startRefresh, isRefreshing : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->currentStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->initAnimation(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->onPullOver(II)V

    .line 187
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinished:Z

    .line 188
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isRefreshing:Z

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    .local v1, "valueAnimatorSmall":Landroid/animation/ValueAnimator;
    move-object v1, v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 193
    new-instance v0, Lcom/alipay/mobile/antui/load/AURefreshListView$f;

    iget-object v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;

    iget v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshDistance:I

    iget v4, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingViewTopMargin:I

    add-int/2addr v3, v4

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$f;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Landroid/view/View;IZ)V

    .line 194
    .local v0, "startAnimationListener":Lcom/alipay/mobile/antui/load/AURefreshListView$f;
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 196
    .end local v0    # "startAnimationListener":Lcom/alipay/mobile/antui/load/AURefreshListView$f;
    .end local v1    # "valueAnimatorSmall":Landroid/animation/ValueAnimator;
    return-void

    .line 198
    :cond_0
    const-string/jumbo v0, "refresh is removed"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateLoadMore(ZZ)V
    .locals 0
    .param p1, "isShowLoad"    # Z
    .param p2, "hasMore"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isShowLoad:Z

    .line 244
    iput-boolean p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView;->hasMore:Z

    .line 245
    return-void
.end method
