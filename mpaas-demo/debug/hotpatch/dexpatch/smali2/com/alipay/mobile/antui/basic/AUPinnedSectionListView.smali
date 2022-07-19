.class public Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;
.super Landroid/widget/ListView;
.source "AUPinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;,
        Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;,
        Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private dragLoadingView:Lcom/alipay/mobile/antui/basic/AUDragLoadingView;

.field private hasMoreItems:Z

.field private isLoading:Z

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

.field mRecycleSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I

.field private onLoadMoreListener:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 94
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 152
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;-><init>(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 174
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->initView()V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 94
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 152
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$2;-><init>(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 179
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->initView()V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    .line 28
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isLoading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isLoading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    .line 28
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->hasMoreItems:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->onLoadMoreListener:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;

    return-object v0
.end method

.method private clearTouchTarget()V
    .locals 2

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 557
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 559
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 561
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchSlop:I

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->initShadow(Z)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isLoading:Z

    .line 188
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->dragLoadingView:Lcom/alipay/mobile/antui/basic/AUDragLoadingView;

    .line 189
    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 1
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "viewType"    # I

    .line 580
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 581
    move-object v0, p0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 583
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result v0

    return v0
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTranslateY:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private performPinnedItemClick()Z
    .locals 8

    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v2, 0x0

    .line 567
    .local v2, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget v3, v3, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->b:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 569
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->playSoundEffect(I)V

    .line 570
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 573
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget v5, v3, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->b:I

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-wide v6, v3, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->c:J

    move-object v3, p0

    move-object v4, v0

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 574
    return v1

    .line 576
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return v1
.end method

.method private setIsLoading(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .line 612
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isLoading:Z

    .line 613
    return-void
.end method


# virtual methods
.method createPinnedShadow(I)V
    .locals 11
    .param p1, "position"    # I

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mRecycleSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    .line 244
    .local v0, "pinnedShadow":Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mRecycleSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    .line 247
    if-nez v0, :cond_0

    new-instance v2, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    invoke-direct {v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;-><init>()V

    move-object v0, v2

    .line 249
    :cond_0
    iget-object v2, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPinnedViewInner(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    move-object v3, v1

    .line 252
    .local v3, "pinnedView":Landroid/view/View;
    move-object v3, v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 253
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v2

    if-nez v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 255
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    :cond_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 259
    .local v2, "heightMode":I
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 261
    .local v4, "heightSize":I
    if-nez v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 264
    .local v5, "maxHeight":I
    if-le v4, v5, :cond_3

    move v4, v5

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 268
    .local v6, "ws":I
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 269
    .local v7, "hs":I
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 270
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v10, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 271
    iput v10, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTranslateY:I

    .line 274
    iput-object v3, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 275
    iput p1, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->b:I

    .line 276
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->c:J

    .line 279
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    .line 280
    return-void
.end method

.method destroyPinnedShadow()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    if-eqz v0, :cond_0

    .line 288
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mRecycleSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    .line 291
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 448
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingLeft()I

    move-result v0

    .line 454
    .local v0, "pLeft":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingTop()I

    move-result v1

    .line 455
    .local v1, "pTop":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v2, v2, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 458
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowHeight:I

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mSectionsDistanceY:I

    .line 461
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 462
    .local v3, "clipHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    add-int v5, v1, v3

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 464
    int-to-float v4, v0

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTranslateY:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 465
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v4, v4, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getDrawingTime()J

    move-result-wide v5

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 467
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_1

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mSectionsDistanceY:I

    if-lez v5, :cond_1

    .line 468
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v5, v5, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v6, v6, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 469
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v7, v7, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 470
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v8, v8, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 471
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowHeight:I

    add-int/2addr v8, v9

    .line 468
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 472
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 475
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 477
    .end local v0    # "pLeft":I
    .end local v1    # "pTop":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "clipHeight":I
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 485
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 486
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    .line 488
    .local v3, "action":I
    move v3, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 491
    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v2, v2, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 495
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 496
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 499
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 503
    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getListPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 507
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 510
    :cond_1
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    .line 511
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 512
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->performPinnedItemClick()Z

    .line 513
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    .line 515
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 516
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    .line 518
    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 519
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 522
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    const/4 v6, 0x0

    .line 523
    .local v6, "event":Landroid/view/MotionEvent;
    move-object v6, v5

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 524
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 525
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 528
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v4}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 529
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 530
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->clearTouchTarget()V

    .line 535
    .end local v6    # "event":Landroid/view/MotionEvent;
    :cond_4
    :goto_0
    return v2

    .line 539
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method ensureShadowForPosition(III)V
    .locals 6
    .param p1, "sectionPosition"    # I
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I

    .line 297
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->destroyPinnedShadow()V

    .line 299
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->b:I

    if-eq v0, p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->destroyPinnedShadow()V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    if-nez v0, :cond_2

    .line 308
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->createPinnedShadow(I)V

    .line 312
    :cond_2
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 313
    .local v2, "nextPosition":I
    move v2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 314
    sub-int v0, v2, p2

    sub-int v0, p3, v0

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result v0

    move v3, v1

    .line 316
    .local v3, "nextSectionPosition":I
    move v3, v0

    if-ltz v0, :cond_4

    .line 317
    sub-int v0, v3, p2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "nextSectionView":Landroid/view/View;
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v4, v4, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 319
    .local v4, "bottom":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mSectionsDistanceY:I

    .line 320
    if-gez v5, :cond_3

    .line 322
    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTranslateY:I

    return-void

    .line 325
    :cond_3
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTranslateY:I

    .line 327
    .end local v0    # "nextSectionView":Landroid/view/View;
    .end local v4    # "bottom":I
    return-void

    .line 329
    :cond_4
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mTranslateY:I

    .line 330
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mSectionsDistanceY:I

    .line 334
    .end local v3    # "nextSectionPosition":I
    :cond_5
    return-void
.end method

.method findCurrentSectionPosition(I)I
    .locals 7
    .param p1, "fromPosition"    # I

    .line 356
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 358
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-lt p1, v1, :cond_0

    return v2

    .line 360
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 362
    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    const/4 v3, 0x0

    .line 363
    .local v3, "indexer":Landroid/widget/SectionIndexer;
    move-object v3, v1

    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    .line 364
    .local v1, "sectionPosition":I
    invoke-interface {v3, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    .line 365
    .local v4, "itemPosition":I
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 366
    .local v5, "typeView":I
    invoke-static {v0, v5}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 367
    return v4

    .line 372
    .end local v1    # "sectionPosition":I
    .end local v3    # "indexer":Landroid/widget/SectionIndexer;
    .end local v4    # "itemPosition":I
    .end local v5    # "typeView":I
    :cond_1
    move v1, p1

    .local v1, "position":I
    :goto_0
    if-ltz v1, :cond_3

    .line 373
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 374
    .local v3, "viewType":I
    invoke-static {v0, v3}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    .line 372
    .end local v3    # "viewType":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 376
    .end local v1    # "position":I
    :cond_3
    return v2
.end method

.method findFirstVisibleSectionPosition(II)I
    .locals 7
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .line 337
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 339
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 340
    .local v0, "adapterDataCount":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v0, :cond_0

    .line 341
    return v3

    .line 343
    :cond_0
    add-int v2, p1, p2

    if-lt v2, v0, :cond_1

    .line 344
    sub-int p2, v0, p1

    .line 347
    :cond_1
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 348
    add-int v4, p1, v2

    .line 349
    .local v4, "position":I
    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 350
    .local v5, "viewType":I
    invoke-static {v1, v5}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    .line 347
    .end local v4    # "position":I
    .end local v5    # "viewType":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v2    # "childIndex":I
    :cond_3
    return v3
.end method

.method getPinnedViewInner(ILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .line 217
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 219
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    instance-of v0, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 220
    move-object v0, v1

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 221
    .local v0, "numHeaders":I
    if-lt p1, v0, :cond_0

    .line 223
    sub-int v2, p1, v0

    .line 225
    .local v2, "adjPosition":I
    move-object v3, v1

    check-cast v3, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v3}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 226
    move-object v1, v3

    instance-of v3, v3, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 227
    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {v3, v2, p2, p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;->getPinnedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 231
    .end local v0    # "numHeaders":I
    .end local v2    # "adjPosition":I
    :cond_0
    instance-of v0, v1, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;

    if-eqz v0, :cond_1

    .line 232
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {v0, p1, p2, p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;->getPinnedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreItems()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->hasMoreItems:Z

    return v0
.end method

.method public initShadow(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .line 202
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_1

    .line 204
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 205
    const-string v4, "#ffa0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "#50a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "#00a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 206
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowHeight:I

    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 211
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowHeight:I

    .line 214
    :cond_1
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->isLoading:Z

    return v0
.end method

.method public onFinishLoading(Z)V
    .locals 0
    .param p1, "hasMoreItems"    # Z

    .line 607
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->setHasMoreItems(Z)V

    .line 608
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 436
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    if-eqz v0, :cond_0

    .line 438
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 439
    .local v0, "parentWidth":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    iget-object v1, v1, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 440
    .local v1, "shadowWidth":I
    if-eq v0, v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->recreatePinnedShadow()V

    .line 444
    .end local v0    # "parentWidth":I
    .end local v1    # "shadowWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 402
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 403
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$3;-><init>(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    .line 409
    return-void
.end method

.method recreatePinnedShadow()V
    .locals 5

    .line 380
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->destroyPinnedShadow()V

    .line 381
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 382
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 383
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getFirstVisiblePosition()I

    move-result v0

    .line 384
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v2

    const/4 v3, 0x0

    .line 385
    .local v3, "sectionPosition":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return-void

    .line 386
    :cond_0
    nop

    .line 387
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 386
    invoke-virtual {p0, v3, v0, v2}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->ensureShadowForPosition(III)V

    .line 389
    .end local v0    # "firstVisiblePosition":I
    .end local v3    # "sectionPosition":I
    :cond_1
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 28
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 415
    if-eqz p1, :cond_2

    .line 416
    instance-of v0, p1, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$PinnedSectionListAdapter;

    if-eqz v0, :cond_1

    .line 418
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Does your adapter handle at least two types of views in getViewTypeCount() method: items and sections?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Does your adapter implement PinnedSectionListAdapter?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 425
    .local v1, "oldAdapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 426
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 429
    :cond_4
    if-eq v1, p1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->destroyPinnedShadow()V

    .line 431
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 432
    return-void
.end method

.method public setHasMoreItems(Z)V
    .locals 1
    .param p1, "hasMoreItems"    # Z

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->setIsLoading(Z)V

    .line 593
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->hasMoreItems:Z

    .line 594
    if-nez p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->dragLoadingView:Lcom/alipay/mobile/antui/basic/AUDragLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUDragLoadingView;->onShowNoMoreText()V

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->dragLoadingView:Lcom/alipay/mobile/antui/basic/AUDragLoadingView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->removeFooterView(Landroid/view/View;)Z

    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->dragLoadingView:Lcom/alipay/mobile/antui/basic/AUDragLoadingView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->addFooterView(Landroid/view/View;)V

    .line 600
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;

    .line 616
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->onLoadMoreListener:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$OnLoadMoreListener;

    .line 617
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    .line 394
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 398
    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .line 193
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->initShadow(Z)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mPinnedSection:Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, v0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView$a;->a:Landroid/view/View;

    .line 196
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/alipay/mobile/antui/basic/AUPinnedSectionListView;->invalidate(IIII)V

    .line 198
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
