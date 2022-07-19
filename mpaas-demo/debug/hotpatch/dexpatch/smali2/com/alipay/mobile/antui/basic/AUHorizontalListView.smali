.class public Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.super Landroid/widget/AdapterView;
.source "AUHorizontalListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$k;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;,
        Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field private static final LAYOUT_FORCE_TOP:I = 0x1

.field private static final LAYOUT_MOVE_SELECTION:I = 0x6

.field private static final LAYOUT_NORMAL:I = 0x0

.field private static final LAYOUT_SET_SELECTION:I = 0x2

.field private static final LAYOUT_SPECIFIC:I = 0x4

.field private static final LAYOUT_SYNC:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "APHorizontalListView"

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0xa

.field private static final NO_POSITION:I = -0x1

.field public static final STATE_NOTHING:[I

.field private static final SYNC_FIRST_POSITION:I = 0x1

.field private static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field private static final SYNC_SELECTED_POSITION:I = 0x0

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x0

.field private static final TOUCH_MODE_DRAGGING:I = 0x3

.field private static final TOUCH_MODE_FLINGING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field private static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field private static final TOUCH_MODE_REST:I = -0x1

.field private static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1


# instance fields
.field private mAccessibilityDelegate:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;

.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

.field private mBlockLayoutRequests:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDataChanged:Z

.field private mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mDrawSelectorOnTop:Z

.field private mEmptyView:Landroid/view/View;

.field private mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mFirstPosition:I

.field private final mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mIsVertical:Z

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemsCanFocus:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field private mLastTouchPos:F

.field private mLayoutMode:I

.field private final mMaximumVelocity:I

.field private mMotionPosition:I

.field private mNeedSync:Z

.field private mNextSelectedPosition:I

.field private mNextSelectedRowId:J

.field private mOldItemCount:I

.field private mOldSelectedPosition:I

.field private mOldSelectedRowId:J

.field private mOnScrollListener:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;

.field private mOverScroll:I

.field private final mOverscrollDistance:I

.field private mPendingCheckForKeyLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;

.field private mPendingCheckForLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;

.field private mPendingCheckForTap:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;

.field private mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

.field private mPerformClick:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

.field private final mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

.field private mResurrectToPosition:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mSelectedPosition:I

.field private mSelectedRowId:J

.field private mSelectedStart:I

.field private mSelectionNotifier:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSelectorPosition:I

.field private final mSelectorRect:Landroid/graphics/Rect;

.field private mSpecificStart:I

.field private mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

.field private mSyncHeight:J

.field private mSyncMode:I

.field private mSyncPosition:I

.field private mSyncRowId:J

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderPos:F

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->STATE_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 280
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/4 v0, 0x1

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsScrap:[Z

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 283
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 285
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 286
    const/4 v3, -0x1

    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 287
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchMode:I

    .line 289
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsAttached:Z

    .line 291
    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 293
    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOnScrollListener:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;

    .line 294
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastScrollState:I

    .line 296
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 297
    .local v4, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchSlop:I

    .line 298
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMaximumVelocity:I

    .line 299
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFlingVelocity:I

    .line 300
    invoke-direct {p0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getScaledOverscrollDistance(Landroid/view/ViewConfiguration;)I

    move-result v5

    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverscrollDistance:I

    .line 302
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    .line 304
    new-instance v5, Landroid/widget/Scroller;

    invoke-direct {v5, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 306
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    .line 308
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    .line 310
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 312
    new-instance v5, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

    invoke-direct {v5, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;-><init>(B)V

    iput-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mArrowScrollFocusResult:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

    .line 314
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorPosition:I

    .line 316
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 317
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    .line 319
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 321
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    .line 322
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    .line 323
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedRowId:J

    .line 324
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    .line 325
    iput-wide v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    .line 326
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedPosition:I

    .line 327
    iput-wide v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedRowId:J

    .line 329
    sget-object v5, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    iput-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    .line 330
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 331
    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    .line 332
    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 334
    new-instance v5, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    iput-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    .line 335
    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    .line 337
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAreAllItemsSelectable:Z

    .line 339
    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 340
    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 342
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setClickable(Z)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setFocusableInTouchMode(Z)V

    .line 344
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setWillNotDraw(Z)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setWillNotDraw(Z)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setClipToPadding(Z)V

    .line 349
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 351
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AUHorizontalListView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/alipay/mobile/antui/R$styleable;->AUHorizontalListView_drawSelectorOnTop:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDrawSelectorOnTop:Z

    .line 356
    sget v5, Lcom/alipay/mobile/antui/R$styleable;->AUHorizontalListView_listSelector:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 357
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v5

    if-eqz v5, :cond_0

    .line 358
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->initOrientation()V

    .line 363
    sget v5, Lcom/alipay/mobile/antui/R$styleable;->AUHorizontalListView_choiceMode:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 364
    .local v1, "choiceMode":I
    move v1, v3

    if-ltz v3, :cond_1

    .line 365
    invoke-static {}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->values()[Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setChoiceMode(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;)V

    .line 368
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 370
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateScrollbarsDirection()V

    .line 371
    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mHasStableIds:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->rememberSyncState()V

    return-void
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkFocus()V

    return-void
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2202(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # J

    .line 57
    iput-wide p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    return p1
.end method

.method static synthetic access$2502(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # J

    .line 57
    iput-wide p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedRowId:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$2900(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method static synthetic access$3000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$3400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$3502(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    return p1
.end method

.method static synthetic access$3600(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    return-void
.end method

.method static synthetic access$3700(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->triggerCheckForLongPress()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$4000(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 57
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$602(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method private adjustViewsStartOrEnd()V
    .locals 3

    .line 5133
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5134
    return-void

    .line 5137
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5140
    .local v0, "firstChild":Landroid/view/View;
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_1

    .line 5141
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    sub-int/2addr v1, v2

    .local v1, "delta":I
    goto :goto_0

    .line 5143
    .end local v1    # "delta":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    sub-int/2addr v1, v2

    .line 5146
    .restart local v1    # "delta":I
    :goto_0
    if-gez v1, :cond_2

    .line 5148
    const/4 v1, 0x0

    .line 5151
    :cond_2
    if-eqz v1, :cond_3

    .line 5152
    neg-int v2, v1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetChildren(I)V

    .line 5154
    :cond_3
    return-void
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 2236
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 2238
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    .line 2240
    .local v0, "numChildren":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x82

    if-eq p1, v3, :cond_a

    const/16 v3, 0x42

    if-ne p1, v3, :cond_0

    goto/16 :goto_4

    .line 2286
    :cond_0
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v3

    .line 2288
    .local v3, "start":I
    :goto_0
    const/4 v4, 0x0

    .line 2289
    .local v4, "indexToMakeVisible":I
    if-eq p2, v1, :cond_2

    .line 2290
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int v4, p2, v5

    .line 2293
    :cond_2
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v5, v4

    .line 2294
    .local v5, "positionToMakeVisible":I
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2296
    .local v6, "viewToMakeVisible":Landroid/view/View;
    move v7, v3

    .line 2297
    .local v7, "goalStart":I
    if-lez v5, :cond_3

    .line 2298
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v8

    add-int/2addr v7, v8

    .line 2301
    :cond_3
    iget-boolean v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_4

    .line 2302
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 2303
    .local v8, "viewToMakeVisibleStart":I
    :goto_1
    iget-boolean v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v9, :cond_5

    .line 2304
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    .line 2306
    .local v9, "viewToMakeVisibleEnd":I
    :goto_2
    if-lt v8, v7, :cond_6

    .line 2308
    return v2

    .line 2311
    :cond_6
    if-eq p2, v1, :cond_7

    sub-int v1, v9, v7

    .line 2312
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    if-lt v1, v10, :cond_7

    .line 2314
    return v2

    .line 2317
    :cond_7
    sub-int v1, v7, v8

    .line 2319
    .local v1, "amountToScroll":I
    iget v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_9

    .line 2320
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2321
    .local v2, "firstChild":Landroid/view/View;
    iget-boolean v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v10, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 2324
    .local v10, "firstChildStart":I
    :goto_3
    sub-int v11, v3, v10

    .line 2325
    .local v11, "max":I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2328
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v10    # "firstChildStart":I
    .end local v11    # "max":I
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getMaxScrollAmount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 2241
    .end local v1    # "amountToScroll":I
    .end local v3    # "start":I
    .end local v4    # "indexToMakeVisible":I
    .end local v5    # "positionToMakeVisible":I
    .end local v6    # "viewToMakeVisible":Landroid/view/View;
    .end local v7    # "goalStart":I
    .end local v8    # "viewToMakeVisibleStart":I
    .end local v9    # "viewToMakeVisibleEnd":I
    :cond_a
    :goto_4
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_5

    .line 2242
    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_5
    nop

    .line 2244
    .local v3, "end":I
    add-int/lit8 v4, v0, -0x1

    .line 2245
    .restart local v4    # "indexToMakeVisible":I
    if-eq p2, v1, :cond_c

    .line 2246
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int v4, p2, v5

    .line 2249
    :cond_c
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v5, v4

    .line 2250
    .restart local v5    # "positionToMakeVisible":I
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2252
    .restart local v6    # "viewToMakeVisible":Landroid/view/View;
    move v7, v3

    .line 2253
    .local v7, "goalEnd":I
    iget v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_d

    .line 2254
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v8

    sub-int/2addr v7, v8

    .line 2257
    :cond_d
    iget-boolean v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_e

    .line 2258
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_6

    :cond_e
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 2259
    .restart local v8    # "viewToMakeVisibleStart":I
    :goto_6
    iget-boolean v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v9, :cond_f

    .line 2260
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_7

    :cond_f
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    :goto_7
    move v10, v2

    .line 2262
    .local v10, "viewToMakeVisibleEnd":I
    move v10, v9

    if-gt v9, v7, :cond_10

    .line 2264
    return v2

    .line 2267
    :cond_10
    if-eq p2, v1, :cond_11

    sub-int v1, v7, v8

    .line 2268
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v1, v9, :cond_11

    .line 2270
    return v2

    .line 2273
    :cond_11
    sub-int v1, v10, v7

    .line 2275
    .restart local v1    # "amountToScroll":I
    iget v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v0

    iget v11, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-ne v9, v11, :cond_13

    .line 2276
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2277
    .local v9, "lastChild":Landroid/view/View;
    iget-boolean v11, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v11, :cond_12

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    goto :goto_8

    :cond_12
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    .line 2280
    .local v2, "lastChildEnd":I
    :goto_8
    sub-int/2addr v11, v3

    .line 2281
    .restart local v11    # "max":I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2284
    .end local v2    # "lastChildEnd":I
    .end local v9    # "lastChild":Landroid/view/View;
    .end local v11    # "max":I
    :cond_13
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getMaxScrollAmount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .line 2344
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 2346
    const/4 v0, 0x0

    .line 2348
    .local v0, "amountToScroll":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2349
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2351
    const/4 v1, 0x0

    const/16 v2, 0x21

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    goto :goto_2

    .line 2362
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 2363
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    nop

    .line 2364
    .local v2, "end":I
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 2366
    .local v1, "newFocusEnd":I
    :goto_1
    move v1, v3

    if-le v3, v2, :cond_7

    .line 2367
    sub-int v0, v1, v2

    .line 2368
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_7

    .line 2369
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_5

    .line 2352
    .end local v1    # "newFocusEnd":I
    .end local v2    # "end":I
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    .line 2353
    .local v2, "start":I
    :goto_3
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2355
    .local v1, "newFocusStart":I
    :goto_4
    move v1, v3

    if-ge v3, v2, :cond_6

    .line 2356
    sub-int v0, v2, v1

    .line 2357
    if-lez p3, :cond_6

    .line 2358
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 2361
    .end local v1    # "newFocusStart":I
    .end local v2    # "start":I
    :cond_6
    nop

    .line 2374
    :cond_7
    :goto_5
    return v0
.end method

.method private arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .line 1891
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 1894
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    .line 1896
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    move v2, v1

    .line 1897
    .local v2, "handled":Z
    move v2, v0

    if-eqz v0, :cond_0

    .line 1898
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    .line 1901
    return v2

    .line 1903
    .end local v2    # "handled":Z
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    throw v0
.end method

.method private arrowScrollFocused(I)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;
    .locals 10
    .param p1, "direction"    # I

    .line 2005
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 2007
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2011
    .local v2, "selectedView":Landroid/view/View;
    move-object v2, v0

    const/16 v3, 0x42

    const/16 v4, 0x82

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2013
    .local v0, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {v6, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2014
    .local v0, "newFocus":Landroid/view/View;
    goto/16 :goto_a

    .line 2015
    .end local v0    # "newFocus":Landroid/view/View;
    :cond_0
    if-eq p1, v4, :cond_5

    if-ne p1, v3, :cond_1

    goto :goto_3

    .line 2027
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_0

    .line 2028
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    :goto_0
    nop

    .line 2031
    .local v0, "end":I
    if-eqz v2, :cond_4

    .line 2032
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    .local v6, "selectedEnd":I
    :goto_1
    goto :goto_2

    .line 2034
    .end local v6    # "selectedEnd":I
    :cond_4
    move v6, v0

    .line 2037
    .restart local v6    # "selectedEnd":I
    :goto_2
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "searchPoint":I
    goto :goto_7

    .line 2016
    .end local v0    # "end":I
    .end local v6    # "selectedEnd":I
    .end local v7    # "searchPoint":I
    :cond_5
    :goto_3
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v0

    .line 2019
    .local v0, "start":I
    :goto_4
    if-eqz v2, :cond_8

    .line 2020
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    .local v6, "selectedStart":I
    :goto_5
    goto :goto_6

    .line 2022
    .end local v6    # "selectedStart":I
    :cond_8
    move v6, v0

    .line 2025
    .restart local v6    # "selectedStart":I
    :goto_6
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2026
    .end local v0    # "start":I
    .end local v6    # "selectedStart":I
    .restart local v7    # "searchPoint":I
    nop

    .line 2040
    :goto_7
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_9

    const/4 v6, 0x0

    goto :goto_8

    :cond_9
    move v6, v7

    .line 2041
    .local v6, "x":I
    :goto_8
    if-eqz v0, :cond_a

    move v0, v7

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    .line 2042
    .local v0, "y":I
    :goto_9
    iget-object v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v0, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2044
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, p0, v9, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    .line 2047
    .end local v6    # "x":I
    .end local v7    # "searchPoint":I
    .local v0, "newFocus":Landroid/view/View;
    :goto_a
    if-eqz v0, :cond_13

    .line 2048
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v6

    .line 2052
    .local v6, "positionOfNewFocus":I
    iget v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_11

    if-eq v6, v7, :cond_11

    .line 2053
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v7

    .line 2055
    .local v7, "selectablePosition":I
    const/4 v9, 0x1

    if-eq p1, v4, :cond_c

    if-ne p1, v3, :cond_b

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v3, 0x1

    .line 2057
    .local v3, "movingForward":Z
    :goto_c
    const/16 v4, 0x21

    if-eq p1, v4, :cond_d

    const/16 v4, 0x11

    if-ne p1, v4, :cond_e

    :cond_d
    const/4 v5, 0x1

    :cond_e
    move v4, v5

    .line 2060
    .local v4, "movingBackward":Z
    if-eq v7, v8, :cond_11

    if-eqz v3, :cond_f

    if-lt v7, v6, :cond_10

    :cond_f
    if-eqz v4, :cond_11

    if-le v7, v6, :cond_11

    .line 2063
    :cond_10
    return-object v1

    .line 2067
    .end local v3    # "movingForward":Z
    .end local v4    # "movingBackward":Z
    .end local v7    # "selectablePosition":I
    :cond_11
    invoke-direct {p0, p1, v0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2069
    .local v3, "focusScroll":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getMaxScrollAmount()I

    move-result v4

    .line 2070
    .local v4, "maxScrollAmount":I
    if-ge v3, v4, :cond_12

    .line 2072
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2073
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mArrowScrollFocusResult:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

    invoke-virtual {v1, v6, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->a(II)V

    .line 2074
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mArrowScrollFocusResult:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

    return-object v1

    .line 2075
    :cond_12
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v5

    if-ge v5, v4, :cond_13

    .line 2080
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2081
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mArrowScrollFocusResult:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

    invoke-virtual {v1, v6, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->a(II)V

    .line 2082
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mArrowScrollFocusResult:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

    return-object v1

    .line 2086
    .end local v3    # "focusScroll":I
    .end local v4    # "maxScrollAmount":I
    .end local v6    # "positionOfNewFocus":I
    :cond_13
    return-object v1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 2137
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 2139
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2140
    return v1

    .line 2143
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2144
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    .line 2146
    .local v2, "selectedPos":I
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v3

    .line 2147
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->amountToScroll(II)I

    move-result v4

    .line 2150
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->arrowScrollFocused(I)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    move-object v7, v6

    .line 2151
    .local v7, "focusResult":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;
    move-object v7, v5

    if-eqz v5, :cond_2

    .line 2152
    invoke-virtual {v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->a()I

    move-result v3

    .line 2153
    invoke-virtual {v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$b;->b()I

    move-result v4

    .line 2156
    :cond_2
    const/4 v5, 0x1

    if-eqz v7, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 2157
    .local v8, "needToRedraw":Z
    :goto_1
    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    .line 2158
    if-eqz v7, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    invoke-direct {p0, v0, p1, v3, v10}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2160
    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectedPositionInt(I)V

    .line 2161
    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2163
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2164
    move v2, v3

    .line 2166
    iget-boolean v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    if-eqz v10, :cond_5

    if-nez v7, :cond_5

    .line 2169
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v10

    .line 2170
    .local v6, "focused":Landroid/view/View;
    move-object v6, v10

    if-eqz v10, :cond_5

    .line 2171
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2175
    .end local v6    # "focused":Landroid/view/View;
    :cond_5
    const/4 v8, 0x1

    .line 2176
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkSelectionChanged()V

    .line 2179
    :cond_6
    if-lez v4, :cond_9

    .line 2180
    const/16 v6, 0x21

    if-eq p1, v6, :cond_8

    const/16 v6, 0x11

    if-ne p1, v6, :cond_7

    goto :goto_3

    :cond_7
    neg-int v6, v4

    goto :goto_4

    :cond_8
    :goto_3
    move v6, v4

    :goto_4
    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->scrollListItemsBy(I)Z

    .line 2182
    const/4 v8, 0x1

    .line 2187
    :cond_9
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_b

    if-nez v7, :cond_b

    if-eqz v0, :cond_b

    .line 2188
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2189
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    .line 2190
    .restart local v6    # "focused":Landroid/view/View;
    invoke-direct {p0, v6, p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_b

    .line 2191
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2196
    .end local v6    # "focused":Landroid/view/View;
    :cond_b
    if-ne v3, v9, :cond_c

    if-eqz v0, :cond_c

    .line 2197
    invoke-direct {p0, v0, p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 2198
    const/4 v0, 0x0

    .line 2199
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hideSelector()V

    .line 2203
    iput v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 2206
    :cond_c
    if-eqz v8, :cond_f

    .line 2207
    if-eqz v0, :cond_d

    .line 2208
    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2209
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    .line 2212
    :cond_d
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->awakenScrollbarsInternal()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2213
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 2216
    :cond_e
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V

    .line 2217
    return v5

    .line 2220
    :cond_f
    return v1
.end method

.method private awakenScrollbarsInternal()Z
    .locals 2

    .line 3076
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 3077
    invoke-super {p0}, Landroid/widget/AdapterView;->awakenScrollBars()Z

    move-result v0

    return v0

    .line 3079
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cancelCheckForLongPress()V
    .locals 1

    .line 2926
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;

    if-nez v0, :cond_0

    .line 2927
    return-void

    .line 2930
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2931
    return-void
.end method

.method private cancelCheckForTap()V
    .locals 1

    .line 2907
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForTap:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;

    if-nez v0, :cond_0

    .line 2908
    return-void

    .line 2911
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2912
    return-void
.end method

.method private checkFocus()V
    .locals 5

    .line 6035
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 6036
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6041
    .local v0, "focusable":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-super {p0, v4}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6042
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDesiredFocusableState:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 6044
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 6045
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateEmptyStatus()V

    .line 6047
    :cond_3
    return-void
.end method

.method private checkSelectionChanged()V
    .locals 5

    .line 3336
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedRowId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3337
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->selectionChanged()V

    .line 3338
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedPosition:I

    .line 3339
    iget-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedRowId:J

    .line 3341
    :cond_1
    return-void
.end method

.method private cloneCheckStates()Landroid/util/SparseBooleanArray;
    .locals 4

    .line 5158
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 5159
    const/4 v0, 0x0

    return-object v0

    .line 5164
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 5165
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .local v0, "checkedStates":Landroid/util/SparseBooleanArray;
    goto :goto_1

    .line 5167
    .end local v0    # "checkedStates":Landroid/util/SparseBooleanArray;
    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 5169
    .restart local v0    # "checkedStates":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5170
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5174
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-object v0
.end method

.method private contentFits()Z
    .locals 8

    .line 2872
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2873
    .local v2, "childCount":I
    move v2, v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2874
    return v3

    .line 2877
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-eq v2, v0, :cond_1

    .line 2878
    return v1

    .line 2881
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2882
    .local v0, "first":Landroid/view/View;
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2884
    .local v4, "last":Landroid/view/View;
    iget-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v5, :cond_3

    .line 2885
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 2886
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_2

    return v3

    :cond_2
    nop

    .line 2885
    return v1

    .line 2888
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 2889
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_4

    return v3

    :cond_4
    nop

    .line 2888
    return v1
.end method

.method private correctTooHigh(I)V
    .locals 8
    .param p1, "childCount"    # I

    .line 5023
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 5024
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 5029
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5033
    .local v0, "lastChild":Landroid/view/View;
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_1

    .line 5034
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .local v1, "lastEnd":I
    goto :goto_0

    .line 5036
    .end local v1    # "lastEnd":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 5040
    .restart local v1    # "lastEnd":I
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    .line 5041
    .local v2, "start":I
    :goto_1
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_3

    .line 5042
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v4

    :goto_2
    sub-int/2addr v3, v4

    .line 5046
    sub-int/2addr v3, v1

    .line 5048
    .local v3, "endOffset":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5049
    .local v4, "firstChild":Landroid/view/View;
    iget-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 5053
    .local v5, "firstStart":I
    :goto_3
    if-lez v3, :cond_8

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    if-gtz v6, :cond_5

    if-ge v5, v2, :cond_8

    .line 5054
    :cond_5
    if-nez v6, :cond_6

    .line 5056
    sub-int v6, v2, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5060
    :cond_6
    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetChildren(I)V

    .line 5062
    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_8

    .line 5063
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    :goto_4
    move v5, v6

    .line 5067
    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    sub-int v7, v5, v7

    invoke-direct {p0, v6, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBefore(II)Landroid/view/View;

    .line 5070
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    .line 5073
    :cond_8
    return-void

    .line 5025
    .end local v0    # "lastChild":Landroid/view/View;
    .end local v1    # "lastEnd":I
    .end local v2    # "start":I
    .end local v3    # "endOffset":I
    .end local v4    # "firstChild":Landroid/view/View;
    .end local v5    # "firstStart":I
    :cond_9
    :goto_5
    return-void
.end method

.method private correctTooLow(I)V
    .locals 10
    .param p1, "childCount"    # I

    .line 5078
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    if-nez v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 5082
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5083
    .local v0, "first":Landroid/view/View;
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 5085
    .local v1, "firstStart":I
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    .line 5088
    .local v2, "start":I
    :goto_1
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_3

    .line 5089
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .local v3, "end":I
    goto :goto_2

    .line 5091
    .end local v3    # "end":I
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 5096
    .restart local v3    # "end":I
    :goto_2
    sub-int v4, v1, v2

    .line 5098
    .local v4, "startOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5099
    .local v5, "last":Landroid/view/View;
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    .line 5101
    .local v6, "lastEnd":I
    :goto_3
    iget v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 5106
    .local v7, "lastPosition":I
    if-lez v4, :cond_9

    .line 5107
    iget v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v8, -0x1

    if-lt v7, v9, :cond_6

    if-le v6, v3, :cond_5

    goto :goto_4

    .line 5126
    :cond_5
    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_9

    .line 5127
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    goto :goto_6

    .line 5108
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_7

    .line 5110
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5114
    :cond_7
    neg-int v8, v4

    invoke-direct {p0, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetChildren(I)V

    .line 5116
    iget v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_9

    .line 5117
    iget-boolean v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    :goto_5
    move v6, v8

    .line 5121
    add-int/lit8 v8, v7, 0x1

    iget v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    add-int/2addr v9, v6

    invoke-direct {p0, v8, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillAfter(II)Landroid/view/View;

    .line 5124
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    return-void

    .line 5130
    :cond_9
    :goto_6
    return-void

    .line 5079
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "firstStart":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "startOffset":I
    .end local v5    # "last":Landroid/view/View;
    .end local v6    # "lastEnd":I
    .end local v7    # "lastPosition":I
    :cond_a
    :goto_7
    return-void
.end method

.method private createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 5372
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 5
    .param p1, "descendant"    # Landroid/view/View;

    .line 2385
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2386
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2388
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v0

    .line 2389
    .local v0, "start":I
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 2390
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    nop

    .line 2392
    .local v1, "end":I
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2393
    .local v2, "viewStart":I
    :goto_2
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 2395
    .local v3, "viewEnd":I
    :goto_3
    const/4 v4, 0x0

    .line 2396
    .local v4, "distance":I
    if-ge v3, v0, :cond_4

    .line 2397
    sub-int v4, v0, v3

    goto :goto_4

    .line 2398
    :cond_4
    if-le v2, v1, :cond_5

    .line 2399
    sub-int v4, v2, v1

    .line 2402
    :cond_5
    :goto_4
    return v4
.end method

.method private drawEndEdge(Landroid/graphics/Canvas;)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3157
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3158
    const/4 v0, 0x0

    return v0

    .line 3161
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3162
    .local v0, "restoreCount":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3163
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 3165
    .local v2, "height":I
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3166
    neg-int v3, v1

    int-to-float v3, v3

    int-to-float v5, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3167
    const/high16 v3, 0x43340000    # 180.0f

    int-to-float v5, v1

    invoke-virtual {p1, v3, v5, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 3169
    :cond_1
    int-to-float v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3170
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3173
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    .line 3174
    .local v3, "needsInvalidate":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3175
    return v3
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3179
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3180
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 3181
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3182
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3184
    .end local v1    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private drawStartEdge(Landroid/graphics/Canvas;)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3137
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3138
    const/4 v0, 0x0

    return v0

    .line 3141
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 3142
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0

    .line 3145
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3146
    .local v0, "restoreCount":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3148
    .local v1, "height":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3149
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3151
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    .line 3152
    .local v2, "needsInvalidate":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3153
    return v2
.end method

.method private fillAfter(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextOffset"    # I

    .line 4847
    const/4 v0, 0x0

    .line 4849
    .local v0, "selectedView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 4850
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    :goto_0
    sub-int/2addr v1, v2

    .line 4852
    .local v1, "end":I
    :goto_1
    if-ge p2, v1, :cond_4

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-ge p1, v2, :cond_4

    .line 4853
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 4855
    .local v2, "selected":Z
    :goto_2
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v3

    .line 4857
    .local v3, "child":Landroid/view/View;
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_2

    .line 4858
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    add-int/2addr v4, v5

    move p2, v4

    .end local p2    # "nextOffset":I
    .local v4, "nextOffset":I
    goto :goto_3

    .line 4860
    .end local v4    # "nextOffset":I
    .restart local p2    # "nextOffset":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    add-int/2addr v4, v5

    move p2, v4

    .line 4863
    :goto_3
    if-eqz v2, :cond_3

    .line 4864
    move-object v0, v3

    .line 4867
    :cond_3
    nop

    .end local v2    # "selected":Z
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 p1, p1, 0x1

    .line 4868
    goto :goto_1

    .line 4870
    :cond_4
    return-object v0
.end method

.method private fillBefore(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextOffset"    # I

    .line 4820
    const/4 v0, 0x0

    .line 4822
    .local v0, "selectedView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v1

    .line 4824
    .local v1, "start":I
    :goto_0
    if-le p2, v1, :cond_4

    if-ltz p1, :cond_4

    .line 4825
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 4826
    .local v2, "isSelected":Z
    :goto_1
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v3

    .line 4828
    .local v3, "child":Landroid/view/View;
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_2

    .line 4829
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    sub-int/2addr v4, v5

    move p2, v4

    .end local p2    # "nextOffset":I
    .local v4, "nextOffset":I
    goto :goto_2

    .line 4831
    .end local v4    # "nextOffset":I
    .restart local p2    # "nextOffset":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    sub-int/2addr v4, v5

    move p2, v4

    .line 4834
    :goto_2
    if-eqz v2, :cond_3

    .line 4835
    move-object v0, v3

    .line 4838
    :cond_3
    nop

    .end local v2    # "isSelected":Z
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 p1, p1, -0x1

    .line 4839
    goto :goto_0

    .line 4841
    :cond_4
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 4843
    return-object v0
.end method

.method private fillBeforeAndAfter(Landroid/view/View;I)V
    .locals 4
    .param p1, "selected"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 4952
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    .line 4955
    .local v0, "itemMargin":I
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 4956
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "offsetBefore":I
    goto :goto_0

    .line 4958
    .end local v1    # "offsetBefore":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v0

    .line 4961
    .restart local v1    # "offsetBefore":I
    :goto_0
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBefore(II)Landroid/view/View;

    .line 4963
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    .line 4966
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_1

    .line 4967
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    .local v2, "offsetAfter":I
    goto :goto_1

    .line 4969
    .end local v2    # "offsetAfter":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    .line 4972
    .restart local v2    # "offsetAfter":I
    :goto_1
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillAfter(II)Landroid/view/View;

    .line 4973
    return-void
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 4927
    sub-int v0, p2, p1

    .line 4928
    .local v0, "size":I
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    .line 4930
    .local v1, "position":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v2

    .line 4931
    .local v2, "selected":Landroid/view/View;
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 4933
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4934
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 4935
    .local v4, "selectedHeight":I
    move v4, v3

    if-gt v3, v0, :cond_0

    .line 4936
    sub-int v3, v0, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4938
    .end local v4    # "selectedHeight":I
    :cond_0
    goto :goto_0

    .line 4939
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 4940
    .local v4, "selectedWidth":I
    move v4, v3

    if-gt v3, v0, :cond_2

    .line 4941
    sub-int v3, v0, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4945
    .end local v4    # "selectedWidth":I
    :cond_2
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBeforeAndAfter(Landroid/view/View;I)V

    .line 4946
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->correctTooHigh(I)V

    .line 4948
    return-object v2
.end method

.method private fillFromOffset(I)Landroid/view/View;
    .locals 2
    .param p1, "nextOffset"    # I

    .line 4916
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 4917
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 4919
    if-gez v0, :cond_0

    .line 4920
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 4923
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillAfter(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 8
    .param p1, "selectedTop"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 4976
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    .line 4979
    .local v0, "selectedPosition":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 4981
    .local v1, "selected":Landroid/view/View;
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4982
    .local v2, "selectedStart":I
    :goto_0
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    :goto_1
    const/4 v4, 0x0

    .line 4985
    .local v4, "selectedEnd":I
    move v4, v3

    if-le v3, p3, :cond_2

    .line 4988
    sub-int v3, v2, p2

    .line 4992
    .local v3, "spaceAbove":I
    sub-int v5, v4, p3

    .line 4994
    .local v5, "spaceBelow":I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4997
    .local v6, "offset":I
    neg-int v7, v6

    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .end local v3    # "spaceAbove":I
    .end local v5    # "spaceBelow":I
    .end local v6    # "offset":I
    goto :goto_2

    .line 4998
    :cond_2
    if-ge v2, p2, :cond_3

    .line 5001
    sub-int v3, p2, v2

    .line 5005
    .restart local v3    # "spaceAbove":I
    sub-int v5, p3, v4

    .line 5007
    .restart local v5    # "spaceBelow":I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5010
    .restart local v6    # "offset":I
    invoke-virtual {v1, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_3

    .line 4998
    .end local v3    # "spaceAbove":I
    .end local v5    # "spaceBelow":I
    .end local v6    # "offset":I
    :cond_3
    :goto_2
    nop

    .line 5014
    :goto_3
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBeforeAndAfter(Landroid/view/View;I)V

    .line 5015
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->correctTooHigh(I)V

    .line 5017
    return-object v1
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 4874
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4875
    .local v0, "tempIsSelected":Z
    :goto_0
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v2

    .line 4878
    .local v2, "temp":Landroid/view/View;
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 4880
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    .line 4883
    .local v3, "itemMargin":I
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_1

    .line 4884
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "offsetBefore":I
    goto :goto_1

    .line 4886
    .end local v4    # "offsetBefore":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v3

    .line 4888
    .restart local v4    # "offsetBefore":I
    :goto_1
    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBefore(II)Landroid/view/View;

    move-result-object v5

    .line 4891
    .local v5, "before":Landroid/view/View;
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    .line 4894
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_2

    .line 4895
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, v3

    .local v6, "offsetAfter":I
    goto :goto_2

    .line 4897
    .end local v6    # "offsetAfter":I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v6, v3

    .line 4899
    .restart local v6    # "offsetAfter":I
    :goto_2
    add-int/lit8 v7, p1, 0x1

    invoke-direct {p0, v7, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillAfter(II)Landroid/view/View;

    move-result-object v7

    .line 4901
    .local v7, "after":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v8

    .line 4902
    .local v1, "childCount":I
    move v1, v8

    if-lez v8, :cond_3

    .line 4903
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->correctTooHigh(I)V

    .line 4906
    :cond_3
    if-eqz v0, :cond_4

    .line 4907
    return-object v2

    .line 4908
    :cond_4
    if-eqz v5, :cond_5

    .line 4909
    return-object v5

    .line 4911
    :cond_5
    return-object v7
.end method

.method private findClosestMotionRowOrColumn(I)I
    .locals 4
    .param p1, "motionPos"    # I

    .line 2849
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2850
    .local v2, "childCount":I
    move v2, v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 2851
    return v3

    .line 2854
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->findMotionRowOrColumn(I)I

    move-result v0

    .line 2855
    .local v1, "motionRow":I
    move v1, v0

    if-eq v0, v3, :cond_1

    .line 2856
    return v1

    .line 2858
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private findMotionRowOrColumn(I)I
    .locals 5
    .param p1, "motionPos"    # I

    .line 2831
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 2832
    .local v1, "childCount":I
    move v1, v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 2833
    return v2

    .line 2836
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 2837
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2839
    .local v3, "v":Landroid/view/View;
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le p1, v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-nez v4, :cond_3

    .line 2840
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt p1, v4, :cond_3

    .line 2841
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    return v2

    .line 2836
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2845
    .end local v0    # "i":I
    :cond_4
    return v2
.end method

.method private findSyncPosition()I
    .locals 15

    .line 5178
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    const/4 v1, 0x0

    move v2, v1

    .line 5180
    .local v2, "itemCount":I
    move v2, v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 5181
    return v3

    .line 5184
    :cond_0
    iget-wide v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    const-wide/16 v6, 0x0

    .line 5187
    .local v6, "idToMatch":J
    move-wide v6, v4

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    .line 5188
    return v3

    .line 5192
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 5193
    .local v0, "seed":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5194
    add-int/lit8 v4, v2, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x64

    add-long/2addr v4, v8

    .line 5201
    .local v4, "endTime":J
    move v8, v0

    .line 5204
    .local v8, "first":I
    move v9, v0

    .line 5207
    .local v9, "last":I
    const/4 v10, 0x0

    .line 5217
    .local v10, "next":Z
    iget-object v11, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v12, 0x0

    .line 5218
    .local v12, "adapter":Landroid/widget/ListAdapter;
    move-object v12, v11

    if-nez v11, :cond_2

    .line 5219
    return v3

    .line 5222
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v11, v13, v4

    if-gtz v11, :cond_a

    .line 5223
    invoke-interface {v12, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 5224
    cmp-long v11, v13, v6

    if-nez v11, :cond_3

    .line 5226
    return v0

    .line 5229
    :cond_3
    add-int/lit8 v11, v2, -0x1

    const/4 v13, 0x1

    if-ne v9, v11, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    .line 5230
    .local v11, "hitLast":Z
    :goto_1
    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    .line 5232
    .local v13, "hitFirst":Z
    :goto_2
    if-eqz v11, :cond_6

    if-nez v13, :cond_a

    .line 5237
    :cond_6
    if-nez v13, :cond_9

    if-eqz v10, :cond_7

    if-nez v11, :cond_7

    goto :goto_3

    .line 5244
    :cond_7
    if-nez v11, :cond_8

    if-nez v10, :cond_2

    if-nez v13, :cond_2

    .line 5246
    :cond_8
    add-int/lit8 v8, v8, -0x1

    .line 5247
    move v0, v8

    .line 5250
    const/4 v10, 0x1

    goto :goto_0

    .line 5239
    :cond_9
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 5240
    move v0, v9

    .line 5243
    const/4 v10, 0x0

    goto :goto_0

    .line 5254
    .end local v11    # "hitLast":Z
    .end local v13    # "hitFirst":Z
    :cond_a
    return v3
.end method

.method private finishEdgeGlows()V
    .locals 1

    .line 3127
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 3128
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 3131
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 3132
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 3134
    :cond_1
    return-void
.end method

.method private fireOnSelected()V
    .locals 9

    .line 3366
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 3367
    .local v1, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 3368
    return-void

    .line 3371
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x0

    .line 3372
    .local v2, "selection":I
    move v8, v0

    .end local v2    # "selection":I
    .local v8, "selection":I
    if-ltz v0, :cond_1

    .line 3373
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3374
    .local v0, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3375
    invoke-interface {v2, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 3374
    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move v5, v8

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 3376
    .end local v0    # "v":Landroid/view/View;
    return-void

    .line 3377
    :cond_1
    invoke-interface {v1, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 3379
    return-void
.end method

.method private forceValidFocusDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 1714
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x21

    if-eq p1, v1, :cond_1

    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1715
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Focus direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1717
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1718
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Focus direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1721
    :cond_3
    :goto_1
    return-void
.end method

.method private forceValidInnerFocusDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 1724
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_1

    const/16 v1, 0x42

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1725
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1728
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_3
    :goto_1
    return-void
.end method

.method private getArrowScrollPreviewLength()I
    .locals 3

    .line 2103
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 2106
    .local v0, "fadingEdgeLength":I
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    const/16 v2, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getChildHeightMeasureSpec(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)I
    .locals 3
    .param p1, "lp"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    .line 4443
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4444
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 4445
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    .line 4446
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4447
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 4449
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->height:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private getChildWidthMeasureSpec(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)I
    .locals 3
    .param p1, "lp"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    .line 4432
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4433
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 4434
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 4435
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4436
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 4438
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->width:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private final getCurrVelocity()F
    .locals 2

    .line 3067
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3068
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    return v0

    .line 3071
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 7
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 2781
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_4

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    .line 2790
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2791
    .local v0, "sX":I
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 2792
    .local v2, "sY":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 2793
    .local v3, "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 2794
    .local v1, "dY":I
    goto :goto_0

    .line 2819
    .end local v0    # "sX":I
    .end local v1    # "dY":I
    .end local v2    # "sY":I
    .end local v3    # "dX":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2783
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 2784
    .restart local v0    # "sX":I
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 2785
    .restart local v2    # "sY":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 2786
    .restart local v3    # "dX":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v1

    add-int v1, v4, v5

    .line 2787
    .restart local v1    # "dY":I
    goto :goto_0

    .line 2804
    .end local v0    # "sX":I
    .end local v1    # "dY":I
    .end local v2    # "sY":I
    .end local v3    # "dX":I
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2805
    .restart local v0    # "sX":I
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 2806
    .restart local v2    # "sY":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 2807
    .restart local v3    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2808
    .restart local v1    # "dY":I
    goto :goto_0

    .line 2797
    .end local v0    # "sX":I
    .end local v1    # "dY":I
    .end local v2    # "sY":I
    .end local v3    # "dX":I
    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2798
    .restart local v0    # "sX":I
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 2799
    .restart local v2    # "sY":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 2800
    .restart local v3    # "dX":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v1

    add-int v1, v4, v5

    .line 2801
    .restart local v1    # "dY":I
    goto :goto_0

    .line 2812
    .end local v0    # "sX":I
    .end local v1    # "dY":I
    .end local v2    # "sY":I
    .end local v3    # "dX":I
    :cond_4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2813
    .restart local v0    # "sX":I
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 2814
    .restart local v2    # "sY":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 2815
    .restart local v3    # "dX":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v1

    add-int v1, v4, v5

    .line 2816
    .restart local v1    # "dY":I
    nop

    .line 2824
    :goto_0
    sub-int v4, v3, v0

    .line 2825
    .local v4, "deltaX":I
    sub-int v5, v1, v2

    .line 2827
    mul-int v5, v5, v5

    mul-int v6, v4, v4

    add-int/2addr v5, v6

    return v5
.end method

.method private getScaledOverscrollDistance(Landroid/view/ViewConfiguration;)I
    .locals 2
    .param p1, "vc"    # Landroid/view/ViewConfiguration;

    .line 2864
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2865
    const/4 v0, 0x0

    return v0

    .line 2868
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v0

    return v0
.end method

.method private handleDataChanged()V
    .locals 9

    .line 4211
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4212
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->confirmCheckedPositionsById()V

    .line 4215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->c()V

    .line 4217
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    const/4 v1, 0x0

    move v2, v1

    .line 4218
    .local v2, "itemCount":I
    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_c

    .line 4223
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_6

    .line 4225
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 4226
    iput-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    .line 4228
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncMode:I

    const/4 v5, 0x5

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_1

    .line 4270
    :cond_1
    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 4271
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v2, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 4273
    return-void

    .line 4230
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4235
    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 4236
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v2, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 4238
    return-void

    .line 4242
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->findSyncPosition()I

    move-result v0

    move v6, v1

    .line 4243
    .local v6, "newPos":I
    move v6, v0

    if-ltz v0, :cond_5

    .line 4245
    invoke-direct {p0, v6, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    move v7, v1

    .line 4246
    .local v7, "selectablePos":I
    if-ne v0, v6, :cond_7

    .line 4248
    iput v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 4250
    iget-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v3

    int-to-long v3, v3

    cmp-long v8, v0, v3

    if-nez v8, :cond_4

    .line 4253
    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .line 4257
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 4261
    :goto_0
    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 4262
    return-void

    .line 4243
    .end local v7    # "selectablePos":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 4277
    .end local v6    # "newPos":I
    :cond_6
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4279
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v0

    move v5, v6

    .line 4282
    .local v5, "newPos":I
    move v5, v0

    if-lt v0, v2, :cond_8

    .line 4283
    add-int/lit8 v5, v2, -0x1

    .line 4285
    :cond_8
    if-gez v5, :cond_9

    .line 4286
    const/4 v5, 0x0

    .line 4290
    :cond_9
    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    move v6, v7

    .line 4292
    .local v6, "selectablePos":I
    move v6, v0

    if-ltz v0, :cond_a

    .line 4293
    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 4294
    return-void

    .line 4297
    :cond_a
    invoke-direct {p0, v5, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 4298
    move v6, v0

    if-ltz v0, :cond_c

    .line 4299
    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 4300
    return-void

    .line 4305
    .end local v5    # "newPos":I
    .end local v6    # "selectablePos":I
    :cond_b
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    if-ltz v0, :cond_c

    .line 4306
    return-void

    .line 4312
    :cond_c
    iput v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 4313
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    .line 4314
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    .line 4315
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    .line 4316
    iput-wide v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedRowId:J

    .line 4317
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 4318
    iput-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    .line 4319
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorPosition:I

    .line 4321
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkSelectionChanged()V

    .line 4322
    return-void
.end method

.method private handleDragChange(I)V
    .locals 8
    .param p1, "delta"    # I

    .line 2657
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2658
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 2659
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2663
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    if-ltz v0, :cond_1

    .line 2664
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    .local v0, "motionIndex":I
    goto :goto_0

    .line 2668
    .end local v0    # "motionIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2671
    .restart local v0    # "motionIndex":I
    :goto_0
    const/4 v3, 0x0

    .line 2672
    .local v3, "motionViewPrevStart":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2673
    .local v1, "motionView":Landroid/view/View;
    move-object v1, v4

    if-eqz v4, :cond_3

    .line 2674
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_1
    move v3, v4

    .line 2677
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->scrollListItemsBy(I)Z

    move-result v4

    .line 2679
    .local v4, "atEdge":Z
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2680
    move-object v1, v5

    if-eqz v5, :cond_5

    .line 2681
    iget-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v5, :cond_4

    .line 2682
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2684
    .local v5, "motionViewRealStart":I
    :goto_2
    if-eqz v4, :cond_5

    .line 2685
    neg-int v6, p1

    sub-int v7, v5, v3

    sub-int/2addr v6, v7

    .line 2686
    .local v6, "overscroll":I
    invoke-direct {p0, p1, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateOverScrollState(II)V

    .line 2689
    .end local v5    # "motionViewRealStart":I
    .end local v6    # "overscroll":I
    :cond_5
    return-void
.end method

.method private handleFocusWithinItem(I)Z
    .locals 7
    .param p1, "direction"    # I

    .line 1840
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidInnerFocusDirection(I)V

    .line 1842
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    .line 1844
    .local v0, "numChildren":I
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1845
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1847
    .local v3, "selectedView":Landroid/view/View;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v3, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1850
    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1851
    .local v1, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    move-object v5, v2

    .line 1854
    .local v5, "nextFocus":Landroid/view/View;
    move-object v5, v4

    if-eqz v4, :cond_0

    .line 1856
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1857
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1858
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1860
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1861
    const/4 v2, 0x1

    return v2

    .line 1870
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 1871
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1870
    invoke-virtual {v4, v6, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1873
    .local v2, "globalNextFocus":Landroid/view/View;
    move-object v2, v4

    if-eqz v4, :cond_1

    .line 1874
    invoke-direct {p0, v2, p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    return v4

    .line 1879
    .end local v1    # "currentFocus":Landroid/view/View;
    .end local v2    # "globalNextFocus":Landroid/view/View;
    .end local v3    # "selectedView":Landroid/view/View;
    .end local v5    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private handleKeyEvent(IILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2427
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsAttached:Z

    if-nez v0, :cond_0

    goto/16 :goto_12

    .line 2431
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2432
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    .line 2435
    :cond_1
    const/4 v0, 0x0

    .line 2436
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    move v3, v1

    .line 2438
    .local v3, "action":I
    move v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_25

    .line 2439
    const/16 v2, 0x3e

    const/16 v6, 0x11

    const/16 v7, 0x82

    const/16 v8, 0x21

    const/16 v9, 0x42

    if-eq p1, v2, :cond_1f

    if-eq p1, v9, :cond_1e

    const/16 v2, 0x5c

    if-eq p1, v2, :cond_16

    const/16 v2, 0x5d

    if-eq p1, v2, :cond_e

    const/16 v2, 0x7a

    if-eq p1, v2, :cond_a

    const/16 v2, 0x7b

    if-eq p1, v2, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_11

    .line 2466
    :pswitch_0
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-nez v2, :cond_2

    .line 2467
    invoke-direct {p0, p3, p2, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v2

    goto/16 :goto_10

    .line 2468
    :cond_2
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2469
    invoke-direct {p0, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleFocusWithinItem(I)Z

    move-result v2

    goto/16 :goto_10

    .line 2458
    :pswitch_1
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-nez v2, :cond_3

    .line 2459
    invoke-direct {p0, p3, p2, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v2

    goto/16 :goto_10

    .line 2460
    :cond_3
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2461
    invoke-direct {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleFocusWithinItem(I)Z

    move-result v2

    goto/16 :goto_10

    .line 2449
    :pswitch_2
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_4

    .line 2450
    invoke-direct {p0, p3, p2, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v2

    goto/16 :goto_10

    .line 2451
    :cond_4
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2452
    invoke-direct {p0, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleFocusWithinItem(I)Z

    move-result v2

    goto/16 :goto_10

    .line 2441
    :pswitch_3
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 2442
    invoke-direct {p0, p3, p2, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v2

    goto/16 :goto_10

    .line 2443
    :cond_5
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2444
    invoke-direct {p0, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleFocusWithinItem(I)Z

    move-result v2

    goto/16 :goto_10

    .line 2525
    :cond_6
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2526
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v7, 0x42

    .line 2527
    :goto_0
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_9
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 2518
    :cond_a
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2519
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_b

    const/16 v6, 0x21

    .line 2520
    :cond_b
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v2, 0x1

    :goto_3
    move v0, v2

    goto/16 :goto_11

    .line 2508
    :cond_e
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2509
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_f

    goto :goto_4

    :cond_f
    const/16 v7, 0x42

    .line 2510
    :goto_4
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v2, 0x1

    :goto_6
    move v0, v2

    goto/16 :goto_11

    .line 2511
    :cond_12
    invoke-static {p3, v4}, Landroidx/core/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2512
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    const/16 v7, 0x42

    .line 2513
    :goto_7
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v2, 0x1

    :goto_9
    move v0, v2

    goto/16 :goto_11

    .line 2498
    :cond_16
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2499
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_17

    const/16 v6, 0x21

    .line 2500
    :cond_17
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->pageScroll(I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v2, 0x1

    :goto_b
    move v0, v2

    goto/16 :goto_11

    .line 2501
    :cond_1a
    invoke-static {p3, v4}, Landroidx/core/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2502
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_1b

    const/16 v6, 0x21

    .line 2503
    :cond_1b
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fullScroll(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    goto :goto_d

    :cond_1d
    :goto_c
    const/4 v2, 0x1

    :goto_d
    move v0, v2

    goto :goto_11

    .line 2475
    :cond_1e
    :pswitch_4
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2476
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2477
    move v0, v2

    if-nez v2, :cond_25

    .line 2478
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_25

    .line 2479
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->keyPressed()V

    .line 2480
    const/4 v2, 0x1

    goto :goto_10

    .line 2486
    :cond_1f
    invoke-static {p3}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2487
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_21

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_20

    goto :goto_e

    :cond_20
    const/16 v7, 0x42

    .line 2488
    :goto_e
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->pageScroll(I)Z

    :cond_21
    goto :goto_f

    .line 2489
    :cond_22
    invoke-static {p3, v5}, Landroidx/core/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2490
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    if-nez v2, :cond_24

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_23

    const/16 v6, 0x21

    .line 2491
    :cond_23
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fullScroll(I)Z

    .line 2494
    :cond_24
    :goto_f
    nop

    .line 2495
    const/4 v2, 0x1

    .line 2527
    :goto_10
    move v0, v2

    .line 2533
    :cond_25
    :goto_11
    if-eqz v0, :cond_26

    .line 2534
    return v5

    .line 2537
    :cond_26
    if-eqz v3, :cond_2c

    if-eq v3, v5, :cond_28

    if-eq v3, v4, :cond_27

    .line 2566
    return v1

    .line 2563
    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2542
    :cond_28
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_29

    .line 2543
    return v5

    .line 2546
    :cond_29
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-ltz v2, :cond_2b

    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2b

    .line 2548
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 2550
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    .line 2551
    .local v4, "child":Landroid/view/View;
    move-object v4, v2

    if-eqz v2, :cond_2a

    .line 2552
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iget-wide v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v4, v2, v6, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2553
    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2556
    :cond_2a
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 2557
    return v5

    .line 2560
    .end local v4    # "child":Landroid/view/View;
    :cond_2b
    return v1

    .line 2539
    :cond_2c
    invoke-super {p0, p1, p3}, Landroid/widget/AdapterView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2428
    .end local v0    # "handled":Z
    .end local v3    # "action":I
    :cond_2d
    :goto_12
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleKeyScroll(Landroid/view/KeyEvent;II)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "count"    # I
    .param p3, "direction"    # I

    .line 2406
    const/4 v0, 0x0

    .line 2408
    .local v0, "handled":Z
    invoke-static {p1}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2409
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 2410
    move v0, v1

    if-nez v1, :cond_4

    .line 2411
    :goto_0
    add-int/lit8 v1, p2, -0x1

    .end local p2    # "count":I
    .local v1, "count":I
    if-lez p2, :cond_0

    .line 2412
    invoke-direct {p0, p3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2413
    const/4 v0, 0x1

    move p2, v1

    goto :goto_0

    .line 2423
    :cond_0
    move p2, v1

    goto :goto_3

    .line 2419
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_1
    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroidx/core/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2420
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fullScroll(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v0, v1

    .line 2423
    :cond_4
    :goto_3
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 1923
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 1925
    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    .line 1933
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1934
    .local v0, "selectedIndex":I
    sub-int v1, p3, v1

    .line 1936
    .local v1, "nextSelectedIndex":I
    const/4 v2, 0x0

    .line 1940
    .local v2, "topSelected":Z
    const/16 v3, 0x21

    if-eq p2, v3, :cond_1

    const/16 v3, 0x11

    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 1947
    :cond_0
    move v3, v0

    .line 1948
    .local v3, "startViewIndex":I
    move v4, v1

    .line 1949
    .local v4, "endViewIndex":I
    move-object v5, p1

    .line 1950
    .local v5, "startView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "endView":Landroid/view/View;
    goto :goto_1

    .line 1941
    .end local v3    # "startViewIndex":I
    .end local v4    # "endViewIndex":I
    .end local v5    # "startView":Landroid/view/View;
    .end local v6    # "endView":Landroid/view/View;
    :cond_1
    :goto_0
    move v3, v1

    .line 1942
    .restart local v3    # "startViewIndex":I
    move v4, v0

    .line 1943
    .restart local v4    # "endViewIndex":I
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1944
    .restart local v5    # "startView":Landroid/view/View;
    move-object v6, p1

    .line 1945
    .restart local v6    # "endView":Landroid/view/View;
    const/4 v2, 0x1

    .line 1953
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v7

    .line 1956
    .local v7, "numChildren":I
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    .line 1957
    if-nez p4, :cond_2

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 1958
    invoke-direct {p0, v5, v3, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 1962
    :cond_3
    if-eqz v6, :cond_5

    .line 1963
    if-nez p4, :cond_4

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1964
    invoke-direct {p0, v6, v4, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 1966
    :cond_5
    return-void

    .line 1926
    .end local v0    # "selectedIndex":I
    .end local v1    # "nextSelectedIndex":I
    .end local v2    # "topSelected":Z
    .end local v3    # "startViewIndex":I
    .end local v4    # "endViewIndex":I
    .end local v5    # "startView":Landroid/view/View;
    .end local v6    # "endView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleOverScrollChange(I)V
    .locals 5
    .param p1, "delta"    # I

    .line 2735
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    const/4 v1, 0x0

    move v2, v1

    .line 2736
    .local v2, "oldOverScroll":I
    move v2, v0

    sub-int/2addr v0, p1

    .line 2738
    .local v0, "newOverScroll":I
    neg-int v3, p1

    .line 2739
    .local v3, "overScrollDistance":I
    if-gez v0, :cond_0

    if-gez v2, :cond_1

    :cond_0
    if-lez v0, :cond_2

    if-gtz v2, :cond_2

    .line 2741
    :cond_1
    neg-int v3, v2

    .line 2742
    add-int/2addr p1, v3

    goto :goto_0

    .line 2744
    :cond_2
    const/4 p1, 0x0

    .line 2747
    :goto_0
    if-eqz v3, :cond_3

    .line 2748
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateOverScrollState(II)V

    .line 2751
    :cond_3
    if-eqz p1, :cond_5

    .line 2752
    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    if-eqz v4, :cond_4

    .line 2753
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    .line 2754
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2757
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->scrollListItemsBy(I)Z

    .line 2758
    const/4 v1, 0x3

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 2762
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->findClosestMotionRowOrColumn(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    .line 2763
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchRemainderPos:F

    .line 2765
    :cond_5
    return-void
.end method

.method private hideSelector()V
    .locals 4

    .line 3214
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3215
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 3216
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 3219
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_1

    if-eq v2, v0, :cond_1

    .line 3220
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 3223
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectedPositionInt(I)V

    .line 3224
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 3226
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    .line 3228
    :cond_2
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 2571
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2572
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void

    .line 2574
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2576
    return-void
.end method

.method private initOrientation()V
    .locals 1

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    .line 376
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateScrollbarsDirection()V

    .line 377
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resetState()V

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->b()V

    .line 380
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 381
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 2579
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2580
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2582
    :cond_0
    return-void
.end method

.method private invokeOnItemScrollListener()V
    .locals 4

    .line 2595
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOnScrollListener:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2596
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;->onScroll(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;III)V

    .line 2600
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->onScrollChanged(IIII)V

    .line 2601
    return-void
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 1703
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 1704
    return v0

    .line 1707
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    .line 1709
    .local v2, "theParent":Landroid/view/ViewParent;
    move-object v2, v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 1710
    invoke-direct {p0, v1, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1709
    return v0
.end method

.method private keyPressed()V
    .locals 8

    .line 3281
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3285
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3286
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3288
    .local v1, "selectorRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3289
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3291
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 3293
    .local v4, "child":Landroid/view/View;
    move-object v4, v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 3294
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3295
    return-void

    .line 3298
    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3301
    :cond_3
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 3303
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isLongClickable()Z

    move-result v2

    .line 3304
    .local v2, "longClickable":Z
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3305
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    move-object v3, v5

    if-eqz v5, :cond_5

    instance-of v5, v3, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_5

    .line 3306
    if-eqz v2, :cond_4

    .line 3307
    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 3308
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 3307
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 3310
    :cond_4
    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3314
    :cond_5
    :goto_0
    if-eqz v2, :cond_7

    iget-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-nez v5, :cond_7

    .line 3315
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;

    if-nez v5, :cond_6

    .line 3316
    new-instance v5, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;

    .line 3319
    :cond_6
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;->a()V

    .line 3320
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$c;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3323
    .end local v2    # "longClickable":Z
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "child":Landroid/view/View;
    :cond_7
    return-void

    .line 3282
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v1    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    :goto_1
    return-void
.end method

.method private layoutChildren()V
    .locals 18

    .line 3734
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_12

    .line 3738
    :cond_0
    iget-boolean v8, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3739
    if-nez v8, :cond_2b

    .line 3740
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3746
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 3748
    iget-object v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    .line 3749
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resetState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3994
    if-nez v8, :cond_1

    .line 3995
    iput-boolean v9, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3996
    iput-boolean v9, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 3750
    :cond_1
    return-void

    .line 3753
    :cond_2
    :try_start_1
    iget-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v1

    :goto_0
    move v5, v1

    .line 3754
    iget-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_4

    .line 3755
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    move v6, v1

    .line 3757
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v1

    .line 3759
    nop

    .line 3761
    nop

    .line 3764
    nop

    .line 3765
    nop

    .line 3766
    nop

    .line 3768
    iget v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    const/4 v10, 0x3

    if-eq v2, v0, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    if-eq v2, v10, :cond_8

    const/4 v4, 0x4

    if-eq v2, v4, :cond_8

    const/4 v4, 0x5

    if-eq v2, v4, :cond_8

    .line 3786
    iget v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iget v4, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v4

    .line 3787
    if-ltz v2, :cond_5

    if-ge v2, v1, :cond_5

    .line 3788
    invoke-virtual {v7, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    .line 3792
    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v7, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3794
    iget v12, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    if-ltz v12, :cond_6

    .line 3795
    iget v13, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    sub-int/2addr v12, v13

    goto :goto_3

    .line 3794
    :cond_6
    const/4 v12, 0x0

    .line 3799
    :goto_3
    add-int/2addr v2, v12

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto :goto_4

    .line 3770
    :cond_7
    iget v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    iget v4, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v4

    .line 3771
    if-ltz v2, :cond_9

    if-ge v2, v1, :cond_9

    .line 3772
    invoke-virtual {v7, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_4

    .line 3781
    :cond_8
    nop

    .line 3802
    :cond_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    iget-boolean v13, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 3803
    if-eqz v13, :cond_a

    .line 3804
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleDataChanged()V

    .line 3809
    :cond_a
    iget v14, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-nez v14, :cond_c

    .line 3810
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resetState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3994
    if-nez v8, :cond_b

    .line 3995
    iput-boolean v9, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3996
    iput-boolean v9, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 3811
    :cond_b
    return-void

    .line 3812
    :cond_c
    :try_start_2
    iget-object v15, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    if-ne v14, v15, :cond_29

    .line 3820
    iget v14, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    invoke-direct {v7, v14}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectedPositionInt(I)V

    .line 3823
    nop

    .line 3827
    iget v14, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 3828
    iget-object v15, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    .line 3830
    if-eqz v13, :cond_d

    .line 3831
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_e

    .line 3832
    invoke-virtual {v7, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    add-int v9, v14, v3

    invoke-virtual {v15, v10, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Landroid/view/View;I)V

    .line 3831
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    goto :goto_5

    .line 3835
    :cond_d
    invoke-virtual {v15, v1, v14}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(II)V

    .line 3842
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 3843
    if-eqz v3, :cond_11

    .line 3846
    if-nez v13, :cond_10

    .line 3847
    nop

    .line 3850
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 3851
    if-eqz v9, :cond_f

    .line 3853
    invoke-virtual {v9}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3857
    :cond_f
    move-object/from16 v16, v9

    goto :goto_6

    .line 3846
    :cond_10
    const/4 v3, 0x0

    const/16 v16, 0x0

    .line 3857
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestFocus()Z

    move-object v9, v3

    goto :goto_7

    .line 3843
    :cond_11
    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 3864
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->detachAllViewsFromParent()V

    .line 3866
    iget v3, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_0

    .line 3903
    if-nez v1, :cond_14

    .line 3904
    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(I)I

    move-result v2

    goto :goto_9

    .line 3899
    :pswitch_0
    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    .line 3900
    goto/16 :goto_c

    .line 3880
    :pswitch_1
    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    iget v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    invoke-direct {v7, v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 3881
    goto/16 :goto_c

    .line 3895
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    invoke-direct {v7, v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 3896
    goto/16 :goto_c

    .line 3884
    :pswitch_3
    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-direct {v7, v1, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBefore(II)Landroid/view/View;

    move-result-object v1

    .line 3885
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    .line 3886
    goto/16 :goto_c

    .line 3868
    :pswitch_4
    if-eqz v4, :cond_13

    .line 3869
    iget-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_12

    .line 3870
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3872
    :goto_8
    invoke-direct {v7, v1, v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    .line 3873
    goto :goto_c

    .line 3874
    :cond_13
    invoke-direct {v7, v5, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    .line 3877
    goto :goto_c

    .line 3889
    :pswitch_5
    const/4 v1, 0x0

    iput v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 3890
    invoke-direct {v7, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillFromOffset(I)Landroid/view/View;

    move-result-object v1

    .line 3891
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    .line 3892
    goto :goto_c

    .line 3905
    :goto_9
    invoke-direct {v7, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectedPositionInt(I)V

    .line 3906
    invoke-direct {v7, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillFromOffset(I)Landroid/view/View;

    move-result-object v1

    .line 3907
    goto :goto_c

    .line 3908
    :cond_14
    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-ltz v1, :cond_17

    iget v3, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-ge v1, v3, :cond_17

    .line 3909
    nop

    .line 3910
    if-eqz v2, :cond_16

    .line 3911
    iget-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_15

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_a

    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_a
    move v5, v1

    .line 3913
    :cond_16
    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    invoke-direct {v7, v1, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 3914
    goto :goto_c

    :cond_17
    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    iget v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-ge v1, v2, :cond_1a

    .line 3915
    nop

    .line 3916
    if-eqz v11, :cond_19

    .line 3917
    iget-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_18

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_b

    :cond_18
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_b
    move v5, v1

    .line 3920
    :cond_19
    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    invoke-direct {v7, v1, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 3921
    goto :goto_c

    .line 3922
    :cond_1a
    const/4 v1, 0x0

    invoke-direct {v7, v1, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 3930
    :goto_c
    invoke-virtual {v15}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d()V

    .line 3932
    if-eqz v1, :cond_22

    .line 3933
    iget-boolean v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_20

    .line 3934
    if-ne v1, v9, :cond_1b

    if-eqz v16, :cond_1b

    .line 3936
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    .line 3938
    :goto_d
    if-nez v0, :cond_1f

    .line 3942
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3943
    if-eqz v0, :cond_1e

    .line 3944
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3947
    :cond_1e
    invoke-direct {v7, v3, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 3948
    goto :goto_e

    .line 3949
    :cond_1f
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 3950
    iget-object v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3952
    goto :goto_e

    .line 3953
    :cond_20
    invoke-direct {v7, v3, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 3956
    :goto_e
    iget-boolean v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_f

    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_f
    iput v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    goto :goto_11

    .line 3958
    :cond_22
    iget v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    if-lez v0, :cond_24

    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    .line 3959
    iget v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3961
    if-eqz v0, :cond_23

    .line 3962
    iget v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    invoke-direct {v7, v1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 3964
    :cond_23
    goto :goto_10

    .line 3965
    :cond_24
    const/4 v1, 0x0

    iput v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    .line 3966
    iget-object v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3971
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz v16, :cond_25

    .line 3972
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 3978
    :cond_25
    :goto_11
    if-eqz v16, :cond_26

    .line 3979
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 3980
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 3983
    :cond_26
    const/4 v1, 0x0

    iput v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 3984
    iput-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 3985
    iput-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 3987
    iget v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    invoke-direct {v7, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 3988
    iget v0, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-lez v0, :cond_27

    .line 3989
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkSelectionChanged()V

    .line 3992
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3994
    if-nez v8, :cond_28

    .line 3995
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3996
    iput-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    return-void

    .line 3999
    :cond_28
    return-void

    .line 3813
    :cond_29
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The content of the adapter has changed but TwoWayView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in TwoWayView("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3816
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3817
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3994
    :catchall_0
    move-exception v0

    if-nez v8, :cond_2a

    .line 3995
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3996
    iput-boolean v1, v7, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    :cond_2a
    throw v0

    .line 3742
    :cond_2b
    return-void

    .line 3735
    :cond_2c
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookForSelectablePosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 3390
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0
.end method

.method private lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 3394
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    .line 3395
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    const/4 v2, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 3399
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    .line 3400
    .local v0, "itemCount":I
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_5

    .line 3401
    if-eqz p2, :cond_1

    .line 3402
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3403
    :goto_0
    if-ge p1, v0, :cond_2

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3404
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3407
    :cond_1
    add-int/lit8 v3, v0, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3408
    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3409
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 3413
    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_3

    goto :goto_2

    .line 3417
    :cond_3
    return p1

    .line 3414
    :cond_4
    :goto_2
    return v2

    .line 3419
    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v0, :cond_6

    goto :goto_3

    .line 3423
    :cond_6
    return p1

    .line 3420
    :cond_7
    :goto_3
    return v2

    .line 3396
    .end local v0    # "itemCount":I
    :cond_8
    :goto_4
    return v2
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 7
    .param p1, "direction"    # I

    .line 3437
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 3439
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 3440
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 3442
    .local v1, "adapter":Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x82

    if-eq p1, v4, :cond_6

    const/16 v4, 0x42

    if-ne p1, v4, :cond_0

    goto :goto_3

    .line 3463
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 3465
    .local v4, "last":I
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-eq v5, v3, :cond_1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3466
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    :goto_0
    nop

    .line 3468
    .local v2, "startPos":I
    move v2, v5

    if-ltz v5, :cond_5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    goto :goto_2

    .line 3472
    :cond_2
    if-le v2, v4, :cond_3

    .line 3473
    move v2, v4

    .line 3476
    :cond_3
    move v5, v2

    .local v5, "pos":I
    :goto_1
    if-lt v5, v0, :cond_c

    .line 3477
    invoke-interface {v1, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_4

    sub-int v6, v5, v0

    .line 3478
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 3479
    return v5

    .line 3476
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3469
    .end local v5    # "pos":I
    :cond_5
    :goto_2
    return v3

    .line 3443
    .end local v2    # "startPos":I
    .end local v4    # "last":I
    :cond_6
    :goto_3
    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-eq v4, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    move v4, v0

    .line 3446
    .restart local v2    # "startPos":I
    :goto_4
    move v2, v4

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 3447
    return v3

    .line 3450
    :cond_8
    if-ge v2, v0, :cond_9

    .line 3451
    move v2, v0

    .line 3454
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getLastVisiblePosition()I

    move-result v4

    .line 3456
    .local v4, "lastVisiblePos":I
    move v5, v2

    .restart local v5    # "pos":I
    :goto_5
    if-gt v5, v4, :cond_b

    .line 3457
    invoke-interface {v1, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_a

    sub-int v6, v5, v0

    .line 3458
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 3459
    return v5

    .line 3456
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3462
    .end local v2    # "startPos":I
    .end local v4    # "lastVisiblePos":I
    .end local v5    # "pos":I
    :cond_b
    nop

    .line 3484
    :cond_c
    return v3
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "flow"    # Z
    .param p4, "selected"    # Z

    .line 4684
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 4685
    move v0, p2

    .line 4686
    .local v0, "top":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v1

    .local v1, "left":I
    goto :goto_0

    .line 4688
    .end local v0    # "top":I
    .end local v1    # "left":I
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v0

    .line 4689
    .restart local v0    # "top":I
    move v1, p2

    .line 4692
    .restart local v1    # "left":I
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-nez v2, :cond_1

    .line 4694
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->b(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 4695
    .local v3, "activeChild":Landroid/view/View;
    move-object v10, v2

    .end local v3    # "activeChild":Landroid/view/View;
    .local v10, "activeChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4698
    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, v10

    move v4, p1

    move v5, v0

    move v6, v1

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setupChild(Landroid/view/View;IIIZZZ)V

    .line 4700
    return-object v10

    .line 4705
    .end local v10    # "activeChild":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsScrap:[Z

    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v10

    .line 4708
    .local v10, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsScrap:[Z

    const/4 v3, 0x0

    aget-boolean v9, v2, v3

    move-object v2, p0

    move-object v3, v10

    move v4, p1

    move v5, v0

    move v6, v1

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setupChild(Landroid/view/View;IIIZZZ)V

    .line 4710
    return-object v10
.end method

.method private maybeScroll(I)V
    .locals 2
    .param p1, "delta"    # I

    .line 2647
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2648
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleDragChange(I)V

    return-void

    .line 2649
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2650
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleOverScrollChange(I)V

    .line 2652
    :cond_1
    return-void
.end method

.method private maybeStartScrolling(I)Z
    .locals 7
    .param p1, "delta"    # I

    .line 2615
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2616
    .local v0, "isOverScroll":Z
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchSlop:I

    if-gt v3, v4, :cond_1

    if-nez v0, :cond_1

    .line 2617
    return v2

    .line 2620
    :cond_1
    if-eqz v0, :cond_2

    .line 2621
    const/4 v3, 0x5

    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    goto :goto_1

    .line 2623
    :cond_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 2628
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 2629
    .local v5, "parent":Landroid/view/ViewParent;
    move-object v5, v3

    if-eqz v3, :cond_3

    .line 2630
    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2633
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cancelCheckForLongPress()V

    .line 2635
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 2636
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2637
    .local v4, "motionView":Landroid/view/View;
    move-object v4, v3

    if-eqz v3, :cond_4

    .line 2638
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2641
    :cond_4
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    .line 2643
    return v1
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 1977
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1978
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureChild(Landroid/view/View;)V

    .line 1980
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1981
    return-void

    .line 1985
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->relayoutMeasuredChild(Landroid/view/View;)V

    .line 1988
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1989
    .local v1, "heightDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 1990
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1989
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1992
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 4454
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureChild(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)V

    .line 4455
    return-void
.end method

.method private measureChild(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    .line 4458
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildWidthMeasureSpec(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)I

    move-result v0

    .line 4459
    .local v0, "widthSpec":I
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildHeightMeasureSpec(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)I

    move-result v1

    .line 4460
    .local v1, "heightSpec":I
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 4461
    return-void
.end method

.method private measureHeightOfChildren(IIIII)I
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 4527
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v3

    .line 4528
    .local v3, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v4

    .line 4530
    .local v4, "paddingBottom":I
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    .line 4531
    .local v6, "adapter":Landroid/widget/ListAdapter;
    move-object v6, v5

    if-nez v5, :cond_0

    .line 4532
    add-int v5, v3, v4

    return v5

    .line 4536
    :cond_0
    add-int v5, v3, v4

    .line 4537
    .local v5, "returnedHeight":I
    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    .line 4541
    .local v7, "itemMargin":I
    const/4 v8, 0x0

    .line 4546
    .local v8, "prevHeightWithoutPartialChild":I
    const/4 v9, -0x1

    move/from16 v10, p3

    if-ne v10, v9, :cond_1

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    move v10, v11

    .line 4547
    .end local p3    # "endPosition":I
    .local v10, "endPosition":I
    iget-object v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    .line 4548
    .local v11, "recycleBin":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->recycleOnMeasure()Z

    move-result v12

    .line 4549
    .local v12, "shouldRecycle":Z
    iget-object v13, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsScrap:[Z

    .line 4551
    .local v13, "isScrap":[Z
    move/from16 v14, p2

    .local v14, "i":I
    :goto_1
    if-gt v14, v10, :cond_7

    .line 4552
    invoke-direct {v0, v14, v13}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v15

    .line 4554
    .local v15, "child":Landroid/view/View;
    move/from16 v9, p1

    invoke-direct {v0, v15, v14, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 4556
    if-lez v14, :cond_2

    .line 4558
    add-int/2addr v5, v7

    .line 4562
    :cond_2
    if-eqz v12, :cond_3

    .line 4563
    const/4 v0, -0x1

    invoke-virtual {v11, v15, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 4562
    :cond_3
    const/4 v0, -0x1

    .line 4566
    :goto_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v0, v5, v16

    .line 4568
    move v5, v0

    if-lt v0, v1, :cond_5

    .line 4571
    if-ltz v2, :cond_4

    if-le v14, v2, :cond_4

    if-lez v8, :cond_4

    if-eq v5, v1, :cond_4

    return v8

    :cond_4
    return v1

    .line 4579
    :cond_5
    if-ltz v2, :cond_6

    if-lt v14, v2, :cond_6

    .line 4580
    move v0, v5

    move v8, v0

    .line 4551
    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v9, -0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 4586
    .end local v15    # "child":Landroid/view/View;
    :cond_7
    move/from16 v9, p1

    return v5
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 3
    .param p1, "scrapChild"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "secondaryMeasureSpec"    # I

    .line 4476
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    const/4 v1, 0x0

    .line 4477
    .local v1, "lp":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 4478
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->generateDefaultLayoutParams()Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    move-result-object v1

    .line 4479
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4482
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->viewType:I

    .line 4483
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->forceAdd:Z

    .line 4487
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 4488
    move v0, p3

    .line 4489
    .local v0, "widthMeasureSpec":I
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildHeightMeasureSpec(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)I

    move-result v2

    .local v2, "heightMeasureSpec":I
    goto :goto_0

    .line 4491
    .end local v0    # "widthMeasureSpec":I
    .end local v2    # "heightMeasureSpec":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildWidthMeasureSpec(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)I

    move-result v0

    .line 4492
    .restart local v0    # "widthMeasureSpec":I
    move v2, p3

    .line 4495
    .restart local v2    # "heightMeasureSpec":I
    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 4496
    return-void
.end method

.method private measureWidthOfChildren(IIIII)I
    .locals 17
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 4618
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v3

    .line 4619
    .local v3, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v4

    .line 4621
    .local v4, "paddingRight":I
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    .line 4622
    .local v6, "adapter":Landroid/widget/ListAdapter;
    move-object v6, v5

    if-nez v5, :cond_0

    .line 4623
    add-int v5, v3, v4

    return v5

    .line 4627
    :cond_0
    add-int v5, v3, v4

    .line 4628
    .local v5, "returnedWidth":I
    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    .line 4632
    .local v7, "itemMargin":I
    const/4 v8, 0x0

    .line 4637
    .local v8, "prevWidthWithoutPartialChild":I
    const/4 v9, -0x1

    move/from16 v10, p3

    if-ne v10, v9, :cond_1

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    move v10, v11

    .line 4638
    .end local p3    # "endPosition":I
    .local v10, "endPosition":I
    iget-object v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    .line 4639
    .local v11, "recycleBin":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->recycleOnMeasure()Z

    move-result v12

    .line 4640
    .local v12, "shouldRecycle":Z
    iget-object v13, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsScrap:[Z

    .line 4642
    .local v13, "isScrap":[Z
    move/from16 v14, p2

    .local v14, "i":I
    :goto_1
    if-gt v14, v10, :cond_7

    .line 4643
    invoke-direct {v0, v14, v13}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v15

    .line 4645
    .local v15, "child":Landroid/view/View;
    move/from16 v9, p1

    invoke-direct {v0, v15, v14, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 4647
    if-lez v14, :cond_2

    .line 4649
    add-int/2addr v5, v7

    .line 4653
    :cond_2
    if-eqz v12, :cond_3

    .line 4654
    const/4 v0, -0x1

    invoke-virtual {v11, v15, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 4653
    :cond_3
    const/4 v0, -0x1

    .line 4657
    :goto_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v0, v5, v16

    .line 4659
    move v5, v0

    if-lt v0, v1, :cond_5

    .line 4662
    if-ltz v2, :cond_4

    if-le v14, v2, :cond_4

    if-lez v8, :cond_4

    if-eq v5, v1, :cond_4

    return v8

    :cond_4
    return v1

    .line 4670
    :cond_5
    if-ltz v2, :cond_6

    if-lt v14, v2, :cond_6

    .line 4671
    move v0, v5

    move v8, v0

    .line 4642
    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v9, -0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 4677
    .end local v15    # "child":Landroid/view/View;
    :cond_7
    move/from16 v9, p1

    return v5
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 16
    .param p1, "oldSelected"    # Landroid/view/View;
    .param p2, "newSelected"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 4021
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget v3, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    .line 4023
    .local v3, "selectedPosition":I
    iget-boolean v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 4024
    .local v4, "oldSelectedStart":I
    :goto_0
    iget-boolean v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v5

    .local v5, "oldSelectedEnd":I
    :goto_1
    const/4 v6, 0x0

    .line 4028
    .local v6, "selected":Landroid/view/View;
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez p3, :cond_6

    .line 4050
    add-int/lit8 v9, v3, -0x1

    invoke-direct {v0, v9, v4, v8, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v9

    .line 4052
    .end local p1    # "oldSelected":Landroid/view/View;
    .local v9, "oldSelected":Landroid/view/View;
    iget v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    .line 4055
    .local v10, "itemMargin":I
    add-int v11, v5, v10

    invoke-direct {v0, v3, v11, v8, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v6

    .line 4057
    iget-boolean v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v11, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 4058
    .local v11, "selectedStart":I
    :goto_2
    iget-boolean v12, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v12, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v12

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    :goto_3
    move v13, v7

    .line 4061
    .local v13, "selectedEnd":I
    move v13, v12

    if-le v12, v2, :cond_5

    .line 4063
    sub-int v12, v11, v1

    .line 4066
    .local v12, "spaceBefore":I
    sub-int v14, v13, v2

    .line 4069
    .local v14, "spaceAfter":I
    sub-int v15, v2, v1

    div-int/lit8 v15, v15, 0x2

    .line 4070
    .local v15, "halfSpace":I
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4071
    .local v7, "offset":I
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 4073
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_4

    .line 4074
    neg-int v8, v7

    invoke-virtual {v9, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4075
    neg-int v8, v7

    invoke-virtual {v6, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_4

    .line 4077
    :cond_4
    neg-int v8, v7

    invoke-virtual {v9, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4078
    neg-int v8, v7

    invoke-virtual {v6, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4083
    .end local v7    # "offset":I
    .end local v12    # "spaceBefore":I
    .end local v14    # "spaceAfter":I
    .end local v15    # "halfSpace":I
    :cond_5
    :goto_4
    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v7, v7, -0x2

    sub-int v8, v11, v10

    invoke-direct {v0, v7, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBefore(II)Landroid/view/View;

    .line 4084
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->adjustViewsStartOrEnd()V

    .line 4085
    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int v8, v13, v10

    invoke-direct {v0, v7, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillAfter(II)Landroid/view/View;

    .line 4086
    .end local v10    # "itemMargin":I
    .end local v11    # "selectedStart":I
    .end local v13    # "selectedEnd":I
    goto/16 :goto_d

    .end local v9    # "oldSelected":Landroid/view/View;
    .restart local p1    # "oldSelected":Landroid/view/View;
    :cond_6
    if-gez p3, :cond_d

    .line 4107
    if-eqz p2, :cond_8

    .line 4109
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_5

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 4110
    .local v8, "newSelectedStart":I
    :goto_5
    const/4 v9, 0x1

    invoke-direct {v0, v3, v8, v9, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v6

    .line 4111
    .end local v8    # "newSelectedStart":I
    goto :goto_6

    .line 4114
    :cond_8
    const/4 v9, 0x1

    invoke-direct {v0, v3, v4, v7, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v6

    .line 4117
    :goto_6
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_7

    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 4118
    .local v8, "selectedStart":I
    :goto_7
    iget-boolean v9, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_8

    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    .line 4121
    .local v9, "selectedEnd":I
    :goto_8
    if-ge v8, v1, :cond_c

    .line 4123
    sub-int v10, v1, v8

    .line 4126
    .local v10, "spaceBefore":I
    sub-int v11, v2, v9

    .line 4129
    .local v11, "spaceAfter":I
    sub-int v12, v2, v1

    div-int/lit8 v12, v12, 0x2

    .line 4130
    .local v12, "halfSpace":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 4131
    .restart local v7    # "offset":I
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 4133
    iget-boolean v13, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v13, :cond_b

    .line 4134
    invoke-virtual {v6, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_9

    .line 4136
    :cond_b
    invoke-virtual {v6, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4141
    .end local v7    # "offset":I
    .end local v10    # "spaceBefore":I
    .end local v11    # "spaceAfter":I
    .end local v12    # "halfSpace":I
    :cond_c
    :goto_9
    invoke-direct {v0, v6, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBeforeAndAfter(Landroid/view/View;I)V

    .line 4142
    .end local v8    # "selectedStart":I
    .end local v9    # "selectedEnd":I
    move-object/from16 v9, p1

    goto :goto_d

    .line 4147
    :cond_d
    const/4 v8, 0x1

    invoke-direct {v0, v3, v4, v8, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v6

    .line 4149
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_a

    :cond_e
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 4150
    .restart local v8    # "selectedStart":I
    :goto_a
    iget-boolean v9, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v9, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_b

    :cond_f
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    .line 4153
    .restart local v9    # "selectedEnd":I
    :goto_b
    if-ge v4, v1, :cond_11

    .line 4156
    nop

    .line 4157
    .local v7, "newEnd":I
    add-int/lit8 v10, v1, 0x14

    if-ge v9, v10, :cond_11

    .line 4159
    iget-boolean v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v10, :cond_10

    .line 4160
    sub-int v10, v1, v8

    invoke-virtual {v6, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_c

    .line 4162
    :cond_10
    sub-int v10, v1, v8

    invoke-virtual {v6, v10}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4168
    .end local v7    # "newEnd":I
    :cond_11
    :goto_c
    invoke-direct {v0, v6, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBeforeAndAfter(Landroid/view/View;I)V

    move-object/from16 v9, p1

    .line 4171
    .end local v8    # "selectedStart":I
    .end local p1    # "oldSelected":Landroid/view/View;
    .local v9, "oldSelected":Landroid/view/View;
    :goto_d
    return-object v6
.end method

.method private obtainView(I[Z)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .line 5259
    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    .line 5261
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 5262
    .local v3, "scrapView":Landroid/view/View;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 5263
    return-object v3

    .line 5266
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->d(I)Landroid/view/View;

    move-result-object v1

    .line 5269
    move-object v3, v1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 5270
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v5, v2

    .line 5272
    .local v5, "child":Landroid/view/View;
    move-object v5, v1

    if-eq v1, v3, :cond_1

    .line 5273
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v1, v3, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 5275
    :cond_1
    aput-boolean v4, p2, v0

    goto :goto_0

    .line 5278
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 5281
    .restart local v5    # "child":Landroid/view/View;
    :goto_0
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_3

    .line 5282
    invoke-static {v5, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5285
    :cond_3
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mHasStableIds:Z

    if-eqz v1, :cond_6

    .line 5286
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    .line 5288
    .local v2, "lp":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    move-object v2, v1

    if-nez v1, :cond_4

    .line 5289
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->generateDefaultLayoutParams()Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    move-result-object v2

    goto :goto_1

    .line 5290
    :cond_4
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5291
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    move-result-object v2

    .line 5294
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->id:J

    .line 5296
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5299
    .end local v2    # "lp":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAccessibilityDelegate:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;

    if-nez v1, :cond_7

    .line 5300
    new-instance v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAccessibilityDelegate:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;

    .line 5303
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAccessibilityDelegate:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$f;

    invoke-static {v5, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 5305
    return-object v5
.end method

.method private offsetChildren(I)V
    .locals 4
    .param p1, "offset"    # I

    .line 4006
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    .line 4008
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4009
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4011
    .local v2, "child":Landroid/view/View;
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_0

    .line 4012
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 4014
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4008
    .end local v2    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4017
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private overScrollByInternal(IIIIIIIIZ)Z
    .locals 2
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 1001
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1002
    const/4 v0, 0x0

    return v0

    .line 1005
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/widget/AdapterView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 1

    .line 3382
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v0

    .line 3383
    if-ltz v0, :cond_0

    .line 3385
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->sendAccessibilityEvent(I)V

    .line 3387
    :cond_0
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 5447
    const/4 v0, 0x0

    .line 5449
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    const/4 v1, 0x0

    .line 5450
    .local v1, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    move-object v1, v2

    if-eqz v2, :cond_0

    .line 5451
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 5455
    :cond_0
    if-nez v0, :cond_1

    .line 5456
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 5457
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 5460
    :cond_1
    if-eqz v0, :cond_2

    .line 5461
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performHapticFeedback(I)Z

    .line 5464
    :cond_2
    return v0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 4
    .param p1, "newFocus"    # Landroid/view/View;

    .line 2114
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    .line 2116
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2117
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2118
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2119
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2116
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2123
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "selected"    # Landroid/view/View;

    .line 3196
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3197
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorPosition:I

    .line 3200
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 3201
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3200
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3203
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsChildViewEnabled:Z

    .line 3204
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3205
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsChildViewEnabled:Z

    .line 3207
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 3208
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->refreshDrawableState()V

    .line 3211
    :cond_1
    return-void
.end method

.method private reconcileSelectedPosition()I
    .locals 3

    .line 4325
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v1, 0x0

    move v2, v1

    .line 4326
    .local v2, "position":I
    move v2, v0

    if-gez v0, :cond_0

    .line 4327
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 4330
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4331
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4333
    return v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 2585
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2586
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2589
    :cond_0
    return-void
.end method

.method private relayoutMeasuredChild(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 4464
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 4465
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 4467
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 4468
    .local v4, "childLeft":I
    move v4, v2

    add-int/2addr v2, v0

    .line 4469
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4470
    .local v3, "childTop":I
    move v3, v5

    add-int/2addr v5, v1

    .line 4472
    .local v5, "childBottom":I
    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 4473
    return-void
.end method

.method private rememberSyncState()V
    .locals 5

    .line 5333
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 5334
    return-void

    .line 5337
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 5339
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 5340
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5342
    .local v0, "child":Landroid/view/View;
    iget-wide v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedRowId:J

    iput-wide v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    .line 5343
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 5345
    if-eqz v0, :cond_2

    .line 5346
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    .line 5349
    :cond_2
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncMode:I

    .line 5350
    .end local v0    # "child":Landroid/view/View;
    return-void

    .line 5352
    :cond_3
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5353
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 5355
    .local v2, "adapter":Landroid/widget/ListAdapter;
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    if-ltz v3, :cond_4

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5356
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    goto :goto_1

    .line 5358
    :cond_4
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    .line 5361
    :goto_1
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 5363
    if-eqz v1, :cond_6

    .line 5364
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_2
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    .line 5367
    :cond_6
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncMode:I

    .line 5369
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    return-void
.end method

.method private reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 2604
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastScrollState:I

    if-ne p1, v0, :cond_0

    .line 2605
    return-void

    .line 2608
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOnScrollListener:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2609
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastScrollState:I

    .line 2610
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)V

    .line 2612
    :cond_1
    return-void
.end method

.method private scrollListItemsBy(I)Z
    .locals 30
    .param p1, "incrementalDelta"    # I

    .line 2934
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 2935
    .local v4, "childCount":I
    move v4, v2

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 2936
    return v5

    .line 2939
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2940
    .local v2, "first":Landroid/view/View;
    iget-boolean v6, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 2942
    .local v6, "firstStart":I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2943
    .local v7, "last":Landroid/view/View;
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2945
    .local v8, "lastEnd":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v9

    .line 2946
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v10

    .line 2947
    .local v10, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v11

    .line 2948
    .local v11, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v12

    .line 2950
    .local v12, "paddingRight":I
    iget-boolean v13, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v13, :cond_3

    move v14, v9

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    move v15, v3

    .line 2952
    .local v15, "paddingStart":I
    move v15, v14

    sub-int/2addr v14, v6

    .line 2953
    .local v14, "spaceBefore":I
    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    goto :goto_3

    .line 2954
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v13

    sub-int/2addr v13, v12

    :goto_3
    nop

    .line 2955
    .local v13, "end":I
    sub-int v5, v8, v13

    .line 2958
    .local v5, "spaceAfter":I
    iget-boolean v3, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_5

    .line 2959
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v10

    sub-int/2addr v3, v9

    .local v3, "size":I
    goto :goto_4

    .line 2961
    .end local v3    # "size":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v12

    sub-int/2addr v3, v11

    .line 2964
    .restart local v3    # "size":I
    :goto_4
    if-gez v1, :cond_6

    .line 2965
    move-object/from16 v18, v2

    .end local v2    # "first":Landroid/view/View;
    .local v18, "first":Landroid/view/View;
    add-int/lit8 v2, v3, -0x1

    neg-int v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local p1    # "incrementalDelta":I
    .local v1, "incrementalDelta":I
    goto :goto_5

    .line 2967
    .end local v1    # "incrementalDelta":I
    .end local v18    # "first":Landroid/view/View;
    .restart local v2    # "first":Landroid/view/View;
    .restart local p1    # "incrementalDelta":I
    :cond_6
    move-object/from16 v18, v2

    .end local v2    # "first":Landroid/view/View;
    .restart local v18    # "first":Landroid/view/View;
    add-int/lit8 v2, v3, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2970
    .end local p1    # "incrementalDelta":I
    .restart local v1    # "incrementalDelta":I
    :goto_5
    iget v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    const/16 v17, 0x0

    move/from16 v19, v17

    .line 2972
    .local v19, "firstPosition":I
    move/from16 v19, v2

    if-nez v2, :cond_7

    if-lt v6, v15, :cond_7

    if-ltz v1, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    .line 2974
    .local v2, "cannotScrollDown":Z
    :goto_6
    move/from16 v20, v3

    .end local v3    # "size":I
    .local v20, "size":I
    add-int v3, v19, v4

    move/from16 v21, v6

    .end local v6    # "firstStart":I
    .local v21, "firstStart":I
    iget v6, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-ne v3, v6, :cond_8

    if-gt v8, v13, :cond_8

    if-gtz v1, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    .line 2977
    .local v3, "cannotScrollUp":Z
    :goto_7
    if-nez v2, :cond_1d

    if-eqz v3, :cond_9

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v7

    const/4 v2, 0x0

    goto/16 :goto_11

    .line 2981
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v6

    const/16 v17, 0x0

    move/from16 v22, v17

    .line 2982
    .local v22, "inTouchMode":Z
    move/from16 v22, v6

    if-eqz v6, :cond_a

    .line 2983
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hideSelector()V

    .line 2986
    :cond_a
    const/4 v6, 0x0

    .line 2987
    .local v6, "start":I
    const/16 v23, 0x0

    .line 2989
    .local v23, "count":I
    if-gez v1, :cond_b

    const/16 v24, 0x1

    goto :goto_8

    :cond_b
    const/16 v24, 0x0

    :goto_8
    const/16 v17, 0x0

    move/from16 v25, v17

    .line 2990
    .local v25, "down":Z
    move/from16 p1, v24

    .end local v25    # "down":Z
    .local p1, "down":Z
    if-eqz v24, :cond_f

    .line 2991
    move/from16 v24, v2

    .end local v2    # "cannotScrollDown":Z
    .local v24, "cannotScrollDown":Z
    neg-int v2, v1

    add-int/2addr v2, v15

    .line 2993
    .local v2, "childrenStart":I
    const/16 v25, 0x0

    move/from16 v29, v25

    move/from16 v25, v3

    move/from16 v3, v29

    .local v3, "i":I
    .local v25, "cannotScrollUp":Z
    :goto_9
    if-ge v3, v4, :cond_e

    .line 2994
    move/from16 v26, v6

    .end local v6    # "start":I
    .local v26, "start":I
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2995
    .local v6, "child":Landroid/view/View;
    move-object/from16 v27, v7

    .end local v7    # "last":Landroid/view/View;
    .local v27, "last":Landroid/view/View;
    iget-boolean v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    goto :goto_a

    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    .line 2997
    :goto_a
    if-ge v7, v2, :cond_d

    .line 3001
    add-int/lit8 v23, v23, 0x1

    .line 3002
    iget-object v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    move/from16 v28, v2

    .end local v2    # "childrenStart":I
    .local v28, "childrenStart":I
    add-int v2, v19, v3

    invoke-virtual {v7, v6, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Landroid/view/View;I)V

    .line 2993
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v2, v28

    goto :goto_9

    .line 2997
    .end local v28    # "childrenStart":I
    .restart local v2    # "childrenStart":I
    .restart local v6    # "child":Landroid/view/View;
    :cond_d
    move/from16 v28, v2

    .end local v2    # "childrenStart":I
    .restart local v28    # "childrenStart":I
    goto :goto_b

    .line 2993
    .end local v26    # "start":I
    .end local v27    # "last":Landroid/view/View;
    .end local v28    # "childrenStart":I
    .restart local v2    # "childrenStart":I
    .local v6, "start":I
    .restart local v7    # "last":Landroid/view/View;
    :cond_e
    move/from16 v28, v2

    move/from16 v26, v6

    move-object/from16 v27, v7

    .line 3004
    .end local v2    # "childrenStart":I
    .end local v3    # "i":I
    .end local v6    # "start":I
    .end local v7    # "last":Landroid/view/View;
    .restart local v26    # "start":I
    .restart local v27    # "last":Landroid/view/View;
    :goto_b
    move/from16 v2, v23

    move/from16 v6, v26

    move/from16 v26, v4

    goto :goto_f

    .line 3005
    .end local v24    # "cannotScrollDown":Z
    .end local v25    # "cannotScrollUp":Z
    .end local v26    # "start":I
    .end local v27    # "last":Landroid/view/View;
    .local v2, "cannotScrollDown":Z
    .local v3, "cannotScrollUp":Z
    .restart local v6    # "start":I
    .restart local v7    # "last":Landroid/view/View;
    :cond_f
    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v2    # "cannotScrollDown":Z
    .end local v3    # "cannotScrollUp":Z
    .end local v6    # "start":I
    .end local v7    # "last":Landroid/view/View;
    .restart local v24    # "cannotScrollDown":Z
    .restart local v25    # "cannotScrollUp":Z
    .restart local v26    # "start":I
    .restart local v27    # "last":Landroid/view/View;
    sub-int v2, v13, v1

    .line 3007
    .local v2, "childrenEnd":I
    add-int/lit8 v3, v4, -0x1

    .end local v26    # "start":I
    .local v3, "i":I
    .restart local v6    # "start":I
    :goto_c
    if-ltz v3, :cond_12

    .line 3008
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3009
    .local v7, "child":Landroid/view/View;
    move/from16 v26, v4

    .end local v4    # "childCount":I
    .local v26, "childCount":I
    iget-boolean v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_d

    :cond_10
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3011
    :goto_d
    if-le v4, v2, :cond_11

    .line 3015
    move v6, v3

    .line 3016
    add-int/lit8 v23, v23, 0x1

    .line 3017
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    move/from16 v28, v2

    .end local v2    # "childrenEnd":I
    .local v28, "childrenEnd":I
    add-int v2, v19, v3

    invoke-virtual {v4, v7, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Landroid/view/View;I)V

    .line 3007
    .end local v7    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, -0x1

    move/from16 v4, v26

    move/from16 v2, v28

    goto :goto_c

    .line 3011
    .end local v28    # "childrenEnd":I
    .restart local v2    # "childrenEnd":I
    .restart local v7    # "child":Landroid/view/View;
    :cond_11
    move/from16 v28, v2

    .end local v2    # "childrenEnd":I
    .restart local v28    # "childrenEnd":I
    goto :goto_e

    .line 3007
    .end local v7    # "child":Landroid/view/View;
    .end local v26    # "childCount":I
    .end local v28    # "childrenEnd":I
    .restart local v2    # "childrenEnd":I
    .restart local v4    # "childCount":I
    :cond_12
    move/from16 v28, v2

    move/from16 v26, v4

    .line 3021
    .end local v2    # "childrenEnd":I
    .end local v3    # "i":I
    .end local v4    # "childCount":I
    .restart local v26    # "childCount":I
    :goto_e
    move/from16 v2, v23

    .end local v23    # "count":I
    .local v2, "count":I
    :goto_f
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3023
    if-lez v2, :cond_13

    .line 3024
    invoke-virtual {v0, v6, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->detachViewsFromParent(II)V

    .line 3029
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->awakenScrollbarsInternal()Z

    move-result v4

    if-nez v4, :cond_14

    .line 3030
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 3033
    :cond_14
    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetChildren(I)V

    .line 3035
    move/from16 v4, p1

    .end local p1    # "down":Z
    .local v4, "down":Z
    if-eqz v4, :cond_15

    .line 3036
    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v2

    iput v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 3039
    :cond_15
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 3040
    .local v7, "absIncrementalDelta":I
    if-lt v14, v7, :cond_16

    if-ge v5, v7, :cond_17

    .line 3041
    :cond_16
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillGap(Z)V

    .line 3044
    :cond_17
    move/from16 p1, v2

    .end local v2    # "count":I
    .local p1, "count":I
    const/4 v2, -0x1

    if-nez v22, :cond_19

    move/from16 v16, v4

    .end local v4    # "down":Z
    .local v16, "down":Z
    iget v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-eq v4, v2, :cond_1a

    .line 3045
    iget v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v2

    move v2, v3

    .line 3046
    .local v2, "childIndex":I
    move v2, v4

    if-ltz v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 3047
    iget v3, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 3049
    .end local v2    # "childIndex":I
    :cond_18
    goto :goto_10

    .line 3044
    .end local v16    # "down":Z
    .restart local v4    # "down":Z
    :cond_19
    move/from16 v16, v4

    .line 3049
    .end local v4    # "down":Z
    .restart local v16    # "down":Z
    :cond_1a
    iget v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_1c

    .line 3050
    iget v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v2

    move v2, v3

    .line 3051
    .restart local v2    # "childIndex":I
    move v2, v4

    if-ltz v4, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 3052
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 3054
    .end local v2    # "childIndex":I
    :cond_1b
    goto :goto_10

    .line 3055
    :cond_1c
    iget-object v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3058
    :goto_10
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    .line 3060
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V

    .line 3062
    return v2

    .line 2977
    .end local v6    # "start":I
    .end local v16    # "down":Z
    .end local v22    # "inTouchMode":Z
    .end local v24    # "cannotScrollDown":Z
    .end local v25    # "cannotScrollUp":Z
    .end local v26    # "childCount":I
    .end local v27    # "last":Landroid/view/View;
    .end local p1    # "count":I
    .local v2, "cannotScrollDown":Z
    .local v3, "cannotScrollUp":Z
    .local v4, "childCount":I
    .local v7, "last":Landroid/view/View;
    :cond_1d
    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v7

    const/4 v2, 0x0

    .line 2978
    .end local v2    # "cannotScrollDown":Z
    .end local v3    # "cannotScrollUp":Z
    .end local v4    # "childCount":I
    .end local v7    # "last":Landroid/view/View;
    .restart local v24    # "cannotScrollDown":Z
    .restart local v25    # "cannotScrollUp":Z
    .restart local v26    # "childCount":I
    .restart local v27    # "last":Landroid/view/View;
    :goto_11
    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    return v2
.end method

.method private selectionChanged()V
    .locals 2

    .line 3344
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    .line 3345
    if-nez v0, :cond_0

    .line 3346
    return-void

    .line 3349
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3360
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fireOnSelected()V

    .line 3361
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performAccessibilityActionsOnSelected()V

    .line 3363
    return-void

    .line 3354
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectionNotifier:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;

    if-nez v0, :cond_3

    .line 3355
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectionNotifier:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;

    .line 3358
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectionNotifier:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setNextSelectedPositionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .line 3256
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    .line 3257
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedRowId:J

    .line 3260
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncMode:I

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    .line 3261
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 3262
    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    .line 3264
    :cond_0
    return-void
.end method

.method private setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 3231
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    .line 3232
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedRowId:J

    .line 3233
    return-void
.end method

.method private setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .line 3236
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 3237
    const/4 v0, 0x0

    .line 3239
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    const/4 v2, 0x0

    .line 3240
    .local v2, "selectedPosition":I
    move v2, v1

    if-ltz v1, :cond_1

    .line 3241
    add-int/lit8 v1, v2, -0x1

    if-ne p1, v1, :cond_0

    .line 3242
    const/4 v0, 0x1

    goto :goto_0

    .line 3243
    :cond_0
    add-int/lit8 v1, v2, 0x1

    if-ne p1, v1, :cond_1

    .line 3244
    const/4 v0, 0x1

    .line 3248
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    .line 3250
    if-eqz v0, :cond_2

    .line 3251
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->awakenScrollbarsInternal()Z

    .line 3253
    :cond_2
    return-void
.end method

.method private setupChild(Landroid/view/View;IIIZZZ)V
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "top"    # I
    .param p4, "left"    # I
    .param p5, "flow"    # Z
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .line 4716
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p6, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->shouldShowSelector()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v6, v4

    .line 4717
    .local v6, "isSelected":Z
    move v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v7

    if-eq v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 4718
    .local v5, "updateChildSelected":Z
    :goto_1
    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    move v8, v4

    .line 4720
    .local v8, "touchMode":I
    move v8, v7

    if-lez v7, :cond_2

    const/4 v7, 0x3

    if-ge v8, v7, :cond_2

    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    if-ne v7, v2, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move v9, v4

    .line 4723
    .local v9, "isPressed":Z
    move v9, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v10

    if-eq v7, v10, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 4724
    .local v7, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_5

    if-nez v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 4727
    .local v10, "needToMeasure":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    const/4 v12, 0x0

    .line 4728
    .local v12, "lp":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    move-object v12, v11

    if-nez v11, :cond_6

    .line 4729
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->generateDefaultLayoutParams()Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    move-result-object v12

    .line 4732
    :cond_6
    iget-object v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v11

    iput v11, v12, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->viewType:I

    .line 4734
    const/4 v11, -0x1

    if-eqz p7, :cond_8

    iget-boolean v13, v12, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->forceAdd:Z

    if-nez v13, :cond_8

    .line 4735
    if-eqz p5, :cond_7

    const/4 v4, -0x1

    :cond_7
    invoke-virtual {v0, v1, v4, v12}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 4737
    :cond_8
    iput-boolean v4, v12, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;->forceAdd:Z

    .line 4738
    if-eqz p5, :cond_9

    const/4 v4, -0x1

    :cond_9
    invoke-virtual {v0, v1, v4, v12, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 4741
    :goto_6
    if-eqz v5, :cond_a

    .line 4742
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    .line 4745
    :cond_a
    if-eqz v7, :cond_b

    .line 4746
    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4749
    :cond_b
    iget-object v3, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v4, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_d

    .line 4750
    instance-of v4, v1, Landroid/widget/Checkable;

    if-eqz v4, :cond_c

    .line 4751
    move-object v4, v1

    check-cast v4, Landroid/widget/Checkable;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-interface {v4, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_7

    .line 4752
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_d

    .line 4754
    iget-object v3, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 4758
    :cond_d
    :goto_7
    if-eqz v10, :cond_e

    .line 4759
    invoke-direct {v0, v1, v12}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureChild(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;)V

    goto :goto_8

    .line 4761
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 4764
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 4765
    .local v3, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 4767
    .local v4, "h":I
    iget-boolean v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v11, :cond_f

    if-nez p5, :cond_f

    sub-int v13, p3, v4

    goto :goto_9

    :cond_f
    move/from16 v13, p3

    .line 4768
    .local v13, "childTop":I
    :goto_9
    if-nez v11, :cond_10

    if-nez p5, :cond_10

    sub-int v11, p4, v3

    goto :goto_a

    :cond_10
    move/from16 v11, p4

    .line 4770
    .local v11, "childLeft":I
    :goto_a
    if-eqz v10, :cond_11

    .line 4771
    add-int v14, v11, v3

    .line 4772
    .local v14, "childRight":I
    add-int v15, v13, v4

    .line 4774
    .local v15, "childBottom":I
    invoke-virtual {v1, v11, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 4775
    .end local v14    # "childRight":I
    .end local v15    # "childBottom":I
    return-void

    .line 4776
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v14, v11, v14

    invoke-virtual {v1, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4777
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v14, v13, v14

    invoke-virtual {v1, v14}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4779
    return-void
.end method

.method private shouldShowSelector()Z
    .locals 1

    .line 3192
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private touchModeDrawsInPressedState()Z
    .locals 3

    .line 3267
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 3272
    const/4 v0, 0x0

    return v0

    .line 3270
    :cond_0
    return v1
.end method

.method private triggerCheckForLongPress()V
    .locals 3

    .line 2915
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;

    if-nez v0, :cond_0

    .line 2916
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;

    .line 2919
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;->a()V

    .line 2921
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForLongPress:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$d;

    .line 2922
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 2921
    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2923
    return-void
.end method

.method private triggerCheckForTap()V
    .locals 3

    .line 2899
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForTap:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;

    if-nez v0, :cond_0

    .line 2900
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForTap:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;

    .line 2903
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingCheckForTap:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$e;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2904
    return-void
.end method

.method private updateEmptyStatus()V
    .locals 4

    .line 6050
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6052
    :goto_1
    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 6053
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6054
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6055
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVisibility(I)V

    goto :goto_2

    .line 6059
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVisibility(I)V

    .line 6065
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_5

    .line 6066
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layout(IIII)V

    return-void

    .line 6069
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 6070
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6073
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVisibility(I)V

    .line 6075
    :cond_5
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .line 5377
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 5378
    .local v0, "firstPos":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v1

    .line 5380
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5383
    .local v2, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 5384
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5385
    .local v4, "child":Landroid/view/View;
    add-int v5, v0, v3

    .line 5387
    .local v5, "position":I
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    .line 5388
    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    .line 5389
    :cond_1
    if-eqz v2, :cond_2

    .line 5390
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 5383
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5393
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private updateOverScrollState(II)V
    .locals 12
    .param p1, "delta"    # I
    .param p2, "overscroll"    # I

    .line 2692
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    if-eqz v0, :cond_1

    move v4, p2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    move v5, v2

    :goto_2
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    move v6, v2

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverscrollDistance:I

    move v9, v2

    :goto_4
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverscrollDistance:I

    move v10, v0

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->overScrollByInternal(IIIIIIIIZ)Z

    .line 2701
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverscrollDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 2703
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 2704
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2708
    :cond_6
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    .line 2709
    .local v1, "overscrollMode":I
    move v1, v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne v1, v0, :cond_b

    .line 2710
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2711
    :cond_7
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 2713
    int-to-float v0, p2

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v2

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v2

    :goto_6
    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2714
    .local v0, "pull":F
    if-lez p1, :cond_9

    .line 2715
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2717
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2718
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_7

    .line 2720
    :cond_9
    if-gez p1, :cond_a

    .line 2721
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2723
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2724
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 2728
    :cond_a
    :goto_7
    if-eqz p1, :cond_b

    .line 2729
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2732
    .end local v0    # "pull":F
    :cond_b
    return-void
.end method

.method private updateScrollbarsDirection()V
    .locals 1

    .line 2894
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setHorizontalScrollBarEnabled(Z)V

    .line 2895
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setVerticalScrollBarEnabled(Z)V

    .line 2896
    return-void
.end method

.method private updateSelectorState()V
    .locals 2

    .line 3326
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3327
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3328
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 3330
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->STATE_NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3333
    :cond_1
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .line 3187
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3189
    return-void
.end method


# virtual methods
.method protected canAnimate()Z
    .locals 1

    .line 3529
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5483
    instance-of v0, p1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 682
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 683
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 7

    .line 1083
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1084
    .local v2, "count":I
    move v2, v0

    if-nez v0, :cond_0

    .line 1085
    return v1

    .line 1088
    :cond_0
    mul-int/lit8 v0, v2, 0x64

    .line 1090
    .local v0, "extent":I
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 1091
    .local v4, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1093
    .local v3, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1094
    .local v1, "childWidth":I
    move v1, v5

    if-lez v5, :cond_1

    .line 1095
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v1

    add-int/2addr v0, v5

    .line 1098
    :cond_1
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1099
    move-object v4, v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1101
    .local v5, "childRight":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1102
    move v1, v6

    if-lez v6, :cond_2

    .line 1103
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v1

    sub-int/2addr v0, v6

    .line 1106
    :cond_2
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 8

    .line 1131
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 1132
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v1

    .line 1134
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 1139
    .local v4, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1141
    .local v3, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    move v6, v2

    .line 1142
    .local v6, "childWidth":I
    move v6, v5

    if-lez v5, :cond_1

    .line 1143
    mul-int/lit8 v5, v0, 0x64

    mul-int/lit8 v7, v3, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v5, v7

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 1146
    :cond_1
    return v2

    .line 1135
    .end local v3    # "childLeft":I
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childWidth":I
    :cond_2
    :goto_0
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .line 1163
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1165
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    if-eqz v1, :cond_0

    .line 1167
    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1170
    :cond_0
    return v0
.end method

.method public computeScroll()V
    .locals 6

    .line 3085
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3086
    return-void

    .line 3090
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 3091
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .local v0, "pos":I
    goto :goto_0

    .line 3093
    .end local v0    # "pos":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 3096
    .restart local v0    # "pos":I
    :goto_0
    int-to-float v1, v0

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 3097
    .local v1, "diff":I
    int-to-float v2, v0

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    .line 3099
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->scrollListItemsBy(I)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 3101
    .local v4, "stopped":Z
    move v4, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3102
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 3104
    :cond_2
    if-eqz v4, :cond_5

    .line 3105
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 3106
    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    .line 3107
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 3110
    :goto_1
    nop

    .line 3111
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getCurrVelocity()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v2

    .line 3113
    if-eqz v2, :cond_4

    .line 3114
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3118
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3121
    :cond_5
    const/4 v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 3122
    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    .line 3124
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 7

    .line 1055
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1056
    .local v2, "count":I
    move v2, v0

    if-nez v0, :cond_0

    .line 1057
    return v1

    .line 1060
    :cond_0
    mul-int/lit8 v0, v2, 0x64

    .line 1062
    .local v0, "extent":I
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 1063
    .local v4, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1065
    .local v3, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1066
    .local v1, "childHeight":I
    move v1, v5

    if-lez v5, :cond_1

    .line 1067
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v1

    add-int/2addr v0, v5

    .line 1070
    :cond_1
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1071
    move-object v4, v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1073
    .local v5, "childBottom":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1074
    move v1, v6

    if-lez v6, :cond_2

    .line 1075
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v1

    sub-int/2addr v0, v6

    .line 1078
    :cond_2
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 8

    .line 1111
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 1112
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v1

    .line 1114
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1118
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 1119
    .local v4, "child":Landroid/view/View;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1121
    .local v3, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    move v6, v2

    .line 1122
    .local v6, "childHeight":I
    move v6, v5

    if-lez v5, :cond_1

    .line 1123
    mul-int/lit8 v5, v0, 0x64

    mul-int/lit8 v7, v3, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v5, v7

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 1126
    :cond_1
    return v2

    .line 1115
    .end local v3    # "childTop":I
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childHeight":I
    :cond_2
    :goto_0
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .line 1151
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1153
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    if-eqz v1, :cond_0

    .line 1155
    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1158
    :cond_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 15

    .line 4176
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4178
    const/4 v0, 0x0

    .local v0, "checkedIndex":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 4179
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 4180
    .local v1, "id":J
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4182
    .local v3, "lastPos":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 4183
    .local v4, "lastPosId":J
    const/4 v6, 0x1

    cmp-long v7, v1, v4

    if-eqz v7, :cond_3

    .line 4185
    const/4 v7, 0x0

    add-int/lit8 v8, v3, -0x14

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4186
    .local v7, "start":I
    add-int/lit8 v8, v3, 0x14

    iget v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4187
    .local v8, "end":I
    const/4 v9, 0x0

    .line 4189
    .local v9, "found":Z
    move v10, v7

    .local v10, "searchPos":I
    :goto_1
    if-ge v10, v8, :cond_1

    .line 4190
    iget-object v11, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v10}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 4191
    .local v11, "searchId":J
    cmp-long v13, v1, v11

    if-nez v13, :cond_0

    .line 4192
    const/4 v9, 0x1

    .line 4193
    iget-object v13, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13, v10, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4194
    iget-object v13, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Landroidx/collection/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 4195
    goto :goto_2

    .line 4189
    .end local v11    # "searchId":J
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4199
    .end local v10    # "searchPos":I
    :cond_1
    :goto_2
    if-nez v9, :cond_2

    .line 4200
    iget-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v1, v2}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 4201
    add-int/lit8 v0, v0, -0x1

    .line 4202
    iget v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 4204
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "found":Z
    :cond_2
    goto :goto_3

    .line 4205
    :cond_3
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4178
    .end local v1    # "id":J
    .end local v3    # "lastPos":I
    .end local v4    # "lastPosId":J
    :goto_3
    add-int/2addr v0, v6

    goto :goto_0

    .line 4208
    .end local v0    # "checkedIndex":I
    :cond_4
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3534
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDrawSelectorOnTop:Z

    const/4 v1, 0x0

    .line 3535
    .local v1, "drawSelectorOnTop":Z
    move v1, v0

    if-nez v0, :cond_0

    .line 3536
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3539
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3541
    if-eqz v1, :cond_1

    .line 3542
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3544
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3625
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    .line 3626
    .local v1, "handled":Z
    move v1, v0

    if-nez v0, :cond_0

    .line 3628
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3629
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3632
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3636
    :cond_0
    return v1
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 3643
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3548
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3550
    const/4 v0, 0x0

    .line 3552
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 3553
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->drawStartEdge(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/lit8 v0, v1, 0x0

    .line 3556
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    .line 3557
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->drawEndEdge(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 3560
    :cond_1
    if-eqz v0, :cond_2

    .line 3561
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3563
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 3489
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3490
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateSelectorState()V

    .line 3491
    return-void
.end method

.method fillGap(Z)V
    .locals 3

    .line 4783
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    .line 4785
    if-eqz p1, :cond_3

    .line 4786
    iget-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result p1

    .line 4789
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_1

    .line 4790
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 4792
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 4795
    :goto_1
    if-lez v0, :cond_2

    iget p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    add-int/2addr p1, v1

    .line 4796
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillAfter(II)Landroid/view/View;

    .line 4797
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->correctTooHigh(I)V

    .line 4798
    return-void

    .line 4802
    :cond_3
    iget-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 4803
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    .line 4804
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_2

    .line 4806
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 4807
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 4810
    :goto_2
    if-lez v0, :cond_5

    iget p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    sub-int p1, v1, p1

    .line 4811
    :cond_5
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fillBefore(II)Landroid/view/View;

    .line 4812
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->correctTooLow(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4816
    return-void

    .line 4814
    :catch_0
    move-exception p1

    .line 4815
    const-string p1, "AUHorizontalListView"

    const-string v0, "Fill_Gap_Exception"

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4817
    return-void
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 1794
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, "moved":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-eq p1, v3, :cond_3

    const/16 v3, 0x11

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 1808
    :cond_0
    const/16 v3, 0x82

    if-eq p1, v3, :cond_1

    const/16 v3, 0x42

    if-ne p1, v3, :cond_5

    .line 1809
    :cond_1
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_5

    .line 1810
    sub-int/2addr v4, v2

    invoke-direct {p0, v4, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 1811
    .local v1, "position":I
    move v1, v2

    if-ltz v2, :cond_2

    .line 1812
    const/4 v2, 0x3

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 1813
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectionInt(I)V

    .line 1814
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V

    .line 1817
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1798
    .end local v1    # "position":I
    :cond_3
    :goto_0
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-eqz v3, :cond_5

    .line 1799
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1800
    .restart local v1    # "position":I
    move v1, v3

    if-ltz v3, :cond_4

    .line 1801
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 1802
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectionInt(I)V

    .line 1803
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V

    .line 1806
    :cond_4
    const/4 v0, 0x1

    .line 1821
    .end local v1    # "position":I
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->awakenScrollbarsInternal()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1822
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->awakenScrollbarsInternal()Z

    .line 1823
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 1826
    :cond_6
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->generateDefaultLayoutParams()Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    .locals 3

    .line 5469
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    .line 5470
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;-><init>(II)V

    return-object v0

    .line 5472
    :cond_0
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 5488
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 5478
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 522
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    goto :goto_1

    .line 591
    :cond_0
    const/4 v2, 0x0

    .line 592
    .local v2, "idStates":Landroidx/collection/LongSparseArray;
    move-object v2, v0

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    .line 593
    .local v1, "count":I
    move v1, v0

    new-array v0, v0, [J

    .line 595
    .local v0, "ids":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 596
    invoke-virtual {v2, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 595
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    .end local v3    # "i":I
    :cond_1
    return-object v0

    .line 588
    .end local v0    # "ids":[J
    .end local v1    # "count":I
    .end local v2    # "idStates":Landroidx/collection/LongSparseArray;
    :cond_2
    :goto_1
    new-array v0, v1, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->SINGLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 557
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 574
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 5493
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 792
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .line 782
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 822
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 824
    .local v1, "view":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 827
    invoke-virtual {v1, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 828
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    .line 830
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 832
    return-void
.end method

.method public getItemMargin()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 787
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 2094
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 797
    move-object v0, p1

    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    .line 800
    :goto_0
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v1, v3

    .local v1, "v":Landroid/view/View;
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 801
    move-object v0, v1

    goto :goto_0

    .line 806
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    nop

    .line 809
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v1

    .line 810
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 811
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 812
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v3

    return v2

    .line 810
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 817
    .end local v3    # "i":I
    :cond_2
    return v2

    .line 803
    .end local v1    # "childCount":I
    :catch_0
    move-exception v3

    .line 805
    .local v1, "e":Ljava/lang/ClassCastException;
    return v2
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 506
    iget-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNextSelectedPosition:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .line 3574
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 3575
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3577
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 540
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 899
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 901
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 902
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 904
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    .line 906
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 909
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 910
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I

    .line 911
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    .line 914
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsAttached:Z

    .line 915
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5
    .param p1, "extraSpace"    # I

    .line 3496
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 3498
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 3504
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3509
    .local v0, "enabledState":I
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 3510
    .local v1, "state":[I
    const/4 v2, -0x1

    .line 3511
    .local v2, "enabledPos":I
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3512
    aget v4, v1, v3

    if-ne v4, v0, :cond_1

    .line 3513
    move v2, v3

    .line 3514
    goto :goto_1

    .line 3511
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3519
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    .line 3520
    add-int/lit8 v3, v2, 0x1

    array-length v4, v1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3524
    :cond_3
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 919
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 922
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->b()V

    .line 924
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 925
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 927
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 928
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPerformClick:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

    if-eqz v0, :cond_1

    .line 933
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 937
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 938
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 941
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsAttached:Z

    .line 942
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 836
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 838
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 842
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 843
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I

    .line 844
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelection()Z

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 851
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 852
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 854
    .local v2, "closestChildStart":I
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 855
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getScrollY()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 859
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 860
    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 861
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    .line 866
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 867
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 868
    .local v4, "minDistance":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v6

    .line 869
    .local v6, "childCount":I
    iget v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 871
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v9, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    .line 873
    add-int v10, v7, v8

    invoke-interface {v0, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 877
    invoke-virtual {p0, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 878
    .local v9, "other":Landroid/view/View;
    move-object v9, v10

    invoke-virtual {v10, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 879
    invoke-virtual {p0, v9, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 880
    invoke-static {p3, v3, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v10

    .line 882
    .local v5, "distance":I
    move v5, v10

    if-ge v10, v4, :cond_4

    .line 883
    move v4, v5

    .line 884
    move v1, v8

    .line 885
    iget-boolean v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    :goto_1
    move v2, v10

    .line 871
    .end local v5    # "distance":I
    .end local v9    # "other":Landroid/view/View;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 890
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v6    # "childCount":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    :cond_5
    if-ltz v1, :cond_6

    .line 891
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectionFromOffset(II)V

    return-void

    .line 893
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 895
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1634
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1635
    const-class v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1636
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1641
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1642
    const-class v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1644
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 1646
    .local v0, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1647
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 1648
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1651
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1652
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1655
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1211
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsAttached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1212
    return v1

    .line 1215
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1216
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    goto/16 :goto_2

    .line 1243
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    if-nez v0, :cond_8

    .line 1247
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 1248
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1250
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    move v4, v1

    .line 1251
    .local v4, "index":I
    move v4, v0

    if-gez v0, :cond_2

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - did TwoWayView receive an inconsistent event stream?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "APHorizontalListView"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return v1

    .line 1259
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_3

    .line 1260
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .local v0, "pos":F
    goto :goto_0

    .line 1262
    .end local v0    # "pos":F
    :cond_3
    invoke-static {p1, v4}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1265
    .restart local v0    # "pos":F
    :goto_0
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchRemainderPos:F

    add-float/2addr v5, v6

    .line 1266
    .local v2, "diff":F
    move v2, v5

    float-to-int v5, v5

    .line 1267
    .local v5, "delta":I
    int-to-float v6, v5

    sub-float v6, v2, v6

    iput v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchRemainderPos:F

    .line 1269
    invoke-direct {p0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->maybeStartScrolling(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1270
    return v3

    .line 1278
    .end local v0    # "pos":F
    .end local v2    # "diff":F
    .end local v4    # "index":I
    .end local v5    # "delta":I
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    .line 1279
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1280
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->recycleVelocityTracker()V

    .line 1281
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 1218
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->initOrResetVelocityTracker()V

    .line 1219
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1221
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1224
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1226
    .local v4, "y":F
    iget-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v5, :cond_6

    move v5, v4

    goto :goto_1

    :cond_6
    move v5, v0

    :goto_1
    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    .line 1228
    float-to-int v5, v5

    invoke-direct {p0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->findMotionRowOrColumn(I)I

    move-result v5

    .line 1230
    .local v5, "motionPosition":I
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    iput v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    .line 1231
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchRemainderPos:F

    .line 1233
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_7

    .line 1234
    return v3

    .line 1235
    :cond_7
    if-ltz v5, :cond_8

    .line 1236
    iput v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    .line 1237
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1286
    .end local v0    # "x":F
    .end local v4    # "y":F
    .end local v5    # "motionPosition":I
    :cond_8
    :goto_2
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1597
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1602
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1607
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 3704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    .line 3706
    if-eqz p1, :cond_1

    .line 3707
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    .line 3708
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3709
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 3708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3712
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a()V

    .line 3715
    .end local v0    # "childCount":I
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    .line 3717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    .line 3719
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3720
    .local v0, "width":I
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3722
    .local v1, "height":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v3, :cond_3

    .line 3723
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_2

    .line 3724
    invoke-virtual {v2, v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 3725
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    return-void

    .line 3727
    :cond_2
    invoke-virtual {v2, v1, v0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 3728
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 3731
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 3647
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3648
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->useDefaultSelector()V

    .line 3651
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3652
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3653
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3654
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 3656
    .local v3, "heightSize":I
    const/4 v4, 0x0

    .line 3657
    .local v4, "childWidth":I
    const/4 v5, 0x0

    .line 3659
    .local v5, "childHeight":I
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    :goto_0
    iput v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    .line 3660
    if-lez v6, :cond_4

    if-eqz v0, :cond_2

    if-nez v1, :cond_4

    .line 3662
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsScrap:[Z

    invoke-direct {p0, v7, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 3664
    .local v6, "child":Landroid/view/View;
    iget-boolean v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_3

    move v8, p1

    goto :goto_1

    :cond_3
    move v8, p2

    .line 3667
    .local v8, "secondaryMeasureSpec":I
    :goto_1
    invoke-direct {p0, v6, v7, v8}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 3669
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 3670
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 3672
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->recycleOnMeasure()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3673
    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    const/4 v9, -0x1

    invoke-virtual {v7, v6, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Landroid/view/View;I)V

    .line 3677
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "secondaryMeasureSpec":I
    :cond_4
    if-nez v0, :cond_5

    .line 3678
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int v2, v6, v4

    .line 3679
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_5

    .line 3680
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getVerticalScrollbarWidth()I

    move-result v6

    add-int/2addr v2, v6

    .line 3684
    :cond_5
    if-nez v1, :cond_6

    .line 3685
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int v3, v6, v5

    .line 3686
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_6

    .line 3687
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 3691
    :cond_6
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    const/high16 v12, -0x80000000

    if-eqz v6, :cond_7

    if-ne v1, v12, :cond_7

    .line 3692
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v11, -0x1

    move-object v6, p0

    move v7, p1

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureHeightOfChildren(IIIII)I

    move-result v3

    .line 3695
    :cond_7
    iget-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-nez v6, :cond_8

    if-ne v0, v12, :cond_8

    .line 3696
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v11, -0x1

    move-object v6, p0

    move v7, p2

    move v10, v2

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v2

    .line 3699
    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setMeasuredDimension(II)V

    .line 3700
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, "needsInvalidate":Z
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    if-eq v2, p2, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->onScrollChanged(IIII)V

    .line 981
    iput p2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    .line 982
    const/4 v0, 0x1

    goto :goto_0

    .line 983
    :cond_0
    if-nez v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    if-eq v1, p1, :cond_1

    .line 984
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->onScrollChanged(IIII)V

    .line 985
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    .line 986
    const/4 v0, 0x1

    .line 989
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 990
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 991
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->awakenScrollbarsInternal()Z

    .line 993
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 5571
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    .line 5572
    .local v0, "ss":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5574
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 5575
    iget v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->e:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncHeight:J

    .line 5577
    iget-wide v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 5578
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 5579
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    .line 5580
    iget-wide v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->a:J

    iput-wide v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    .line 5581
    iget v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->d:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 5582
    iget v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->c:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    .line 5583
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncMode:I

    goto :goto_0

    .line 5584
    :cond_0
    iget-wide v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->b:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 5585
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectedPositionInt(I)V

    .line 5588
    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 5590
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorPosition:I

    .line 5591
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 5592
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    .line 5593
    iget-wide v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->b:J

    iput-wide v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    .line 5594
    iget v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->d:I

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 5595
    iget v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->c:I

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    .line 5596
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncMode:I

    .line 5599
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->g:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_2

    .line 5600
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->g:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5603
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->h:Landroidx/collection/LongSparseArray;

    if-eqz v1, :cond_3

    .line 5604
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->h:Landroidx/collection/LongSparseArray;

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    .line 5607
    :cond_3
    iget v1, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->f:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 5609
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 5610
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .line 5498
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5499
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;-><init>(Landroid/os/Parcelable;)V

    .line 5501
    .local v1, "ss":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    if-eqz v2, :cond_0

    .line 5502
    iget-wide v2, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->a:J

    iput-wide v2, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->a:J

    .line 5503
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    iget-wide v2, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->b:J

    iput-wide v2, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->b:J

    .line 5504
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    iget v2, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->c:I

    iput v2, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->c:I

    .line 5505
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    iget v2, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->d:I

    iput v2, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->d:I

    .line 5506
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    iget v2, v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->e:I

    iput v2, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->e:I

    .line 5508
    return-object v1

    .line 5511
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5512
    .local v2, "haveChildren":Z
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemId()J

    move-result-wide v5

    .line 5513
    .local v5, "selectedId":J
    iput-wide v5, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->a:J

    .line 5514
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v7

    iput v7, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->e:I

    .line 5516
    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    cmp-long v11, v5, v7

    if-ltz v11, :cond_2

    .line 5517
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    iput v3, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->c:I

    .line 5518
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getSelectedItemPosition()I

    move-result v3

    iput v3, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->d:I

    .line 5519
    iput-wide v9, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->b:J

    goto :goto_2

    .line 5520
    :cond_2
    if-eqz v2, :cond_5

    iget v7, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_5

    .line 5533
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5534
    .local v7, "child":Landroid/view/View;
    iget-boolean v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    :goto_1
    iput v8, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->c:I

    .line 5536
    iget v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 5537
    .local v4, "firstPos":I
    move v4, v8

    iget v9, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-lt v8, v9, :cond_4

    .line 5538
    add-int/lit8 v4, v9, -0x1

    .line 5541
    :cond_4
    iput v4, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->d:I

    .line 5542
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->b:J

    .line 5543
    .end local v4    # "firstPos":I
    .end local v7    # "child":Landroid/view/View;
    goto :goto_2

    .line 5544
    :cond_5
    iput v4, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->c:I

    .line 5545
    iput-wide v9, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->b:J

    .line 5546
    iput v4, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->d:I

    .line 5549
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_6

    .line 5550
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cloneCheckStates()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->g:Landroid/util/SparseBooleanArray;

    .line 5553
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_8

    .line 5554
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 5556
    .local v3, "idState":Landroidx/collection/LongSparseArray;
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    .line 5557
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_7

    .line 5558
    iget-object v8, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v7}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v7}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5557
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5561
    .end local v7    # "i":I
    :cond_7
    iput-object v3, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->h:Landroidx/collection/LongSparseArray;

    .line 5564
    .end local v3    # "idState":Landroidx/collection/LongSparseArray;
    .end local v4    # "count":I
    :cond_8
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    iput v3, v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;->f:I

    .line 5566
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    return v3

    .line 1297
    :cond_2
    iget-boolean v2, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsAttached:Z

    if-nez v2, :cond_3

    .line 1298
    return v4

    .line 1301
    :cond_3
    const/4 v2, 0x0

    .line 1303
    .local v2, "needsInvalidate":Z
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 1304
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1306
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 1307
    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v5, :cond_26

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, -0x1

    if-eq v5, v3, :cond_d

    if-eq v5, v10, :cond_7

    if-eq v5, v7, :cond_4

    goto/16 :goto_12

    .line 1392
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cancelCheckForTap()V

    .line 1393
    iput v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1394
    invoke-direct {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    .line 1396
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 1397
    iget v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    iget v6, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move v6, v4

    .line 1398
    .local v6, "motionView":Landroid/view/View;
    move-object v6, v5

    if-eqz v5, :cond_5

    .line 1399
    invoke-virtual {v6, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1402
    :cond_5
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v4, :cond_6

    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v5, :cond_6

    .line 1403
    invoke-virtual {v4}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v4

    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int v2, v4, v5

    .line 1406
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->recycleVelocityTracker()V

    .line 1408
    goto/16 :goto_12

    .line 1347
    .end local v6    # "motionView":Landroid/view/View;
    :cond_7
    iget v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    invoke-static {v1, v5}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    move v6, v4

    .line 1348
    .local v6, "index":I
    move v6, v5

    if-gez v5, :cond_8

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onInterceptTouchEvent could not find pointer with id "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - did TwoWayView receive an inconsistent event stream?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "APHorizontalListView"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    return v4

    .line 1356
    :cond_8
    iget-boolean v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_9

    .line 1357
    invoke-static {v1, v6}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .local v4, "pos":F
    goto :goto_1

    .line 1359
    .end local v4    # "pos":F
    :cond_9
    invoke-static {v1, v6}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1362
    .restart local v4    # "pos":F
    :goto_1
    iget-boolean v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_a

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    .line 1368
    :cond_a
    iget v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    sub-float v5, v4, v5

    iget v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchRemainderPos:F

    add-float/2addr v5, v11

    .line 1369
    .local v8, "diff":F
    move v8, v5

    float-to-int v5, v5

    .line 1370
    .local v5, "delta":I
    int-to-float v11, v5

    sub-float v11, v8, v11

    iput v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchRemainderPos:F

    .line 1372
    iget v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    if-eqz v11, :cond_c

    if-eq v11, v3, :cond_c

    if-eq v11, v10, :cond_c

    if-eq v11, v7, :cond_b

    if-eq v11, v9, :cond_b

    goto :goto_2

    .line 1383
    :cond_b
    iput v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    .line 1384
    invoke-direct {v0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->maybeScroll(I)V

    .line 1388
    :goto_2
    goto/16 :goto_12

    .line 1378
    :cond_c
    invoke-direct {v0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->maybeStartScrolling(I)Z

    .line 1379
    goto/16 :goto_12

    .line 1411
    .end local v4    # "pos":F
    .end local v5    # "delta":I
    .end local v6    # "index":I
    .end local v8    # "diff":F
    :cond_d
    iget v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    if-eqz v5, :cond_18

    if-eq v5, v3, :cond_18

    if-eq v5, v10, :cond_18

    if-eq v5, v7, :cond_e

    if-eq v5, v9, :cond_17

    goto/16 :goto_10

    .line 1504
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->contentFits()Z

    move-result v5

    if-nez v5, :cond_17

    .line 1510
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v9, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v5, v7, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1513
    iget-boolean v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v5, :cond_f

    .line 1514
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    invoke-static {v5, v7}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    .local v5, "velocity":F
    goto :goto_3

    .line 1517
    .end local v5    # "velocity":F
    :cond_f
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    invoke-static {v5, v7}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v5

    .line 1521
    .restart local v5    # "velocity":F
    :goto_3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_16

    .line 1522
    iput v6, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1523
    invoke-direct {v0, v10}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    .line 1525
    iget-object v12, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v6, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v6, :cond_10

    const/4 v7, 0x0

    goto :goto_4

    :cond_10
    move v7, v5

    :goto_4
    float-to-int v15, v7

    if-eqz v6, :cond_11

    move v7, v5

    goto :goto_5

    :cond_11
    const/4 v7, 0x0

    :goto_5
    float-to-int v7, v7

    const/high16 v9, -0x80000000

    if-eqz v6, :cond_12

    const/16 v17, 0x0

    goto :goto_6

    :cond_12
    const/high16 v17, -0x80000000

    :goto_6
    const v10, 0x7fffffff

    if-eqz v6, :cond_13

    const/16 v18, 0x0

    goto :goto_7

    :cond_13
    const v18, 0x7fffffff

    :goto_7
    if-eqz v6, :cond_14

    const/high16 v19, -0x80000000

    goto :goto_8

    :cond_14
    const/16 v19, 0x0

    :goto_8
    if-eqz v6, :cond_15

    const v20, 0x7fffffff

    goto :goto_9

    :cond_15
    const/16 v20, 0x0

    :goto_9
    move/from16 v16, v7

    invoke-virtual/range {v12 .. v20}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1533
    iput v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    .line 1534
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 1536
    :cond_16
    iput v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1537
    invoke-direct {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    .line 1540
    goto/16 :goto_10

    .line 1543
    .end local v5    # "velocity":F
    :cond_17
    iput v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1544
    invoke-direct {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_10

    .line 1415
    :cond_18
    iget v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    .line 1416
    .local v5, "motionPosition":I
    iget v6, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1418
    .local v6, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1419
    .local v7, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .local v8, "y":F
    move v9, v4

    .line 1422
    .local v9, "inList":Z
    iget-boolean v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v10, :cond_1a

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gez v10, :cond_19

    const/4 v10, 0x1

    goto :goto_a

    :cond_19
    const/4 v10, 0x0

    :goto_a
    move v9, v10

    goto :goto_c

    .line 1425
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v8, v10

    if-lez v10, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_1b

    const/4 v10, 0x1

    goto :goto_b

    :cond_1b
    const/4 v10, 0x0

    :goto_b
    move v9, v10

    .line 1428
    :goto_c
    if-eqz v6, :cond_24

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-nez v10, :cond_24

    if-eqz v9, :cond_24

    .line 1429
    iget v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    if-eqz v10, :cond_1c

    .line 1430
    invoke-virtual {v6, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1433
    :cond_1c
    iget-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPerformClick:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

    if-nez v10, :cond_1d

    .line 1434
    new-instance v10, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

    invoke-direct {v10, v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPerformClick:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

    .line 1437
    :cond_1d
    iget-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPerformClick:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

    const/4 v12, 0x0

    move-object v13, v12

    .line 1438
    .local v13, "performClick":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;
    move-object v13, v10

    iput v5, v10, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;->a:I

    .line 1439
    invoke-virtual {v13}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;->a()V

    .line 1441
    iput v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 1443
    iget v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    if-eqz v10, :cond_1f

    if-ne v10, v3, :cond_1e

    goto :goto_d

    .line 1492
    :cond_1e
    iget-boolean v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-nez v10, :cond_24

    iget-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1493
    invoke-virtual {v13}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;->run()V

    goto :goto_f

    .line 1444
    :cond_1f
    :goto_d
    if-nez v10, :cond_20

    .line 1445
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cancelCheckForTap()V

    goto :goto_e

    .line 1447
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cancelCheckForLongPress()V

    .line 1450
    :goto_e
    iput v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 1452
    iget-boolean v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-nez v10, :cond_23

    iget-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1453
    iput v3, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1455
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 1456
    iget v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    invoke-direct {v0, v10, v6}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 1457
    invoke-virtual {v6, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1459
    iget-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_21

    .line 1460
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1461
    .local v12, "d":Landroid/graphics/drawable/Drawable;
    move-object v12, v10

    if-eqz v10, :cond_21

    instance-of v10, v12, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v10, :cond_21

    .line 1462
    move-object v10, v12

    check-cast v10, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 1466
    .end local v12    # "d":Landroid/graphics/drawable/Drawable;
    :cond_21
    iget-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v10, :cond_22

    .line 1467
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1470
    :cond_22
    new-instance v10, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;

    invoke-direct {v10, v0, v6, v13}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;)V

    iput-object v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 1486
    nop

    .line 1487
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v12

    int-to-long v14, v12

    .line 1486
    invoke-virtual {v0, v10, v14, v15}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    .line 1489
    :cond_23
    iput v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1490
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateSelectorState()V

    .line 1497
    .end local v13    # "performClick":Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;
    :cond_24
    :goto_f
    iput v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1498
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateSelectorState()V

    .line 1500
    nop

    .line 1548
    .end local v5    # "motionPosition":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "inList":Z
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cancelCheckForTap()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->cancelCheckForLongPress()V

    .line 1550
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 1552
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v4, :cond_25

    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v5, :cond_25

    .line 1553
    invoke-virtual {v4}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v4

    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v5

    or-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 1556
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->recycleVelocityTracker()V

    goto :goto_12

    .line 1309
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 1310
    iget-boolean v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-nez v5, :cond_2a

    .line 1314
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 1315
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1317
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1318
    .local v5, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1320
    .local v9, "y":F
    iget-boolean v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v10, :cond_27

    move v10, v9

    goto :goto_11

    :cond_27
    move v10, v5

    :goto_11
    iput v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    .line 1322
    float-to-int v10, v5

    float-to-int v11, v9

    invoke-virtual {v0, v10, v11}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->pointToPosition(II)I

    move-result v10

    .line 1324
    .local v10, "motionPosition":I
    invoke-static {v1, v4}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    iput v11, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mActivePointerId:I

    .line 1325
    iput v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchRemainderPos:F

    .line 1327
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    if-nez v8, :cond_2a

    .line 1331
    iget v8, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    if-ne v8, v6, :cond_28

    .line 1332
    iput v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1333
    invoke-direct {v0, v3}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    .line 1334
    iget v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchPos:F

    float-to-int v4, v4

    invoke-direct {v0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->findMotionRowOrColumn(I)I

    .line 1335
    return v3

    .line 1336
    :cond_28
    iget v6, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    if-ltz v6, :cond_29

    iget-object v7, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1337
    iput v4, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1338
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->triggerCheckForTap()V

    .line 1341
    :cond_29
    iput v10, v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mMotionPosition:I

    .line 1562
    .end local v5    # "x":F
    .end local v9    # "y":F
    .end local v10    # "motionPosition":I
    :cond_2a
    :goto_12
    if-eqz v2, :cond_2b

    .line 1563
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1566
    :cond_2b
    return v3
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .line 1571
    if-eqz p1, :cond_1

    .line 1573
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hideSelector()V

    .line 1578
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1579
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    .line 1582
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateSelectorState()V

    return-void

    .line 1584
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 1585
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1586
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    if-eqz v0, :cond_2

    .line 1587
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    .line 1588
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->finishEdgeGlows()V

    .line 1589
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 1593
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 946
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 948
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 950
    .local v0, "touchMode":I
    if-nez p1, :cond_0

    .line 951
    if-ne v0, v1, :cond_2

    .line 953
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    goto :goto_0

    .line 957
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchMode:I

    if-eq v0, v2, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 959
    if-ne v0, v1, :cond_1

    .line 961
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelection()Z

    goto :goto_0

    .line 965
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->hideSelector()V

    .line 966
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 967
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->layoutChildren()V

    .line 972
    :cond_2
    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastTouchMode:I

    .line 973
    return-void
.end method

.method pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .line 1742
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->forceValidFocusDirection(I)V

    .line 1744
    const/4 v0, 0x0

    .line 1745
    .local v0, "forward":Z
    const/4 v1, -0x1

    .line 1747
    .local v1, "nextPage":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-eq p1, v4, :cond_2

    const/16 v4, 0x11

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 1749
    :cond_0
    const/16 v4, 0x82

    if-eq p1, v4, :cond_1

    const/16 v4, 0x42

    if-ne p1, v4, :cond_3

    .line 1750
    :cond_1
    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1751
    const/4 v0, 0x1

    goto :goto_1

    .line 1748
    :cond_2
    :goto_0
    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1754
    :cond_3
    :goto_1
    if-gez v1, :cond_4

    .line 1755
    return v2

    .line 1758
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v4

    move v5, v2

    .line 1759
    .local v5, "position":I
    move v5, v4

    if-ltz v4, :cond_9

    .line 1760
    const/4 v2, 0x4

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 1761
    iget-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    :goto_2
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    .line 1763
    if-eqz v0, :cond_6

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v4

    sub-int/2addr v2, v4

    if-le v5, v2, :cond_6

    .line 1764
    const/4 v2, 0x3

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 1767
    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v2

    if-ge v5, v2, :cond_7

    .line 1768
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 1771
    :cond_7
    invoke-direct {p0, v5}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectionInt(I)V

    .line 1772
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V

    .line 1774
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->awakenScrollbarsInternal()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1775
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 1778
    :cond_8
    return v3

    .line 1781
    :cond_9
    return v2
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1660
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1661
    return v1

    .line 1664
    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    .line 1696
    return v2

    .line 1681
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    if-lez v0, :cond_3

    .line 1683
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_2

    .line 1684
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .local v0, "viewportSize":I
    goto :goto_0

    .line 1686
    .end local v0    # "viewportSize":I
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1690
    .restart local v0    # "viewportSize":I
    :goto_0
    neg-int v2, v0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->scrollListItemsBy(I)Z

    .line 1691
    return v1

    .line 1693
    .end local v0    # "viewportSize":I
    :cond_3
    return v2

    .line 1666
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_6

    .line 1668
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_5

    .line 1669
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .restart local v0    # "viewportSize":I
    goto :goto_1

    .line 1671
    .end local v0    # "viewportSize":I
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1675
    .restart local v0    # "viewportSize":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->scrollListItemsBy(I)Z

    .line 1676
    return v1

    .line 1678
    .end local v0    # "viewportSize":I
    :cond_6
    return v2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 5397
    const/4 v0, 0x0

    .line 5399
    .local v0, "checkedStateChanged":Z
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v2, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->MULTIPLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 5400
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 5401
    .local v1, "checked":Z
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5403
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5404
    if-eqz v1, :cond_0

    .line 5405
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 5407
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 5411
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 5412
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    goto :goto_1

    .line 5414
    :cond_2
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 5417
    :goto_1
    const/4 v0, 0x1

    .end local v1    # "checked":Z
    goto :goto_4

    .line 5418
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v4, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->SINGLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_9

    .line 5419
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    const/4 v4, 0x0

    .line 5420
    .restart local v1    # "checked":Z
    :goto_2
    if-eqz v4, :cond_6

    .line 5421
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5422
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5424
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5425
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->clear()V

    .line 5426
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5429
    :cond_5
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    .line 5430
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 5431
    :cond_7
    iput v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 5434
    :cond_8
    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    .line 5418
    .end local v1    # "checked":Z
    :cond_9
    :goto_4
    nop

    .line 5437
    :goto_5
    if-eqz v0, :cond_a

    .line 5438
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateOnScreenCheckedViews()V

    .line 5441
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1
.end method

.method public pointToPosition(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1032
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1033
    .local v2, "frame":Landroid/graphics/Rect;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1035
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    .line 1039
    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1040
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1042
    .local v1, "child":Landroid/view/View;
    move-object v1, v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1043
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1045
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1046
    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v0

    return v3

    .line 1039
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1050
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    .line 4002
    const/4 v0, 0x1

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 1202
    if-eqz p1, :cond_0

    .line 1203
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->recycleVelocityTracker()V

    .line 1206
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1207
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3567
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 3568
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 3570
    :cond_0
    return-void
.end method

.method resetState()V
    .locals 4

    .line 5309
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5311
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->removeAllViewsInLayout()V

    .line 5313
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedStart:I

    .line 5314
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 5315
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 5316
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    .line 5317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mPendingSync:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$i;

    .line 5318
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedPosition:I

    .line 5319
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedRowId:J

    .line 5321
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOverScroll:I

    .line 5323
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectedPositionInt(I)V

    .line 5324
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 5326
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorPosition:I

    .line 5327
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5329
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invalidate()V

    .line 5330
    return-void
.end method

.method resurrectSelection()Z
    .locals 15

    .line 4337
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 4338
    .local v2, "childCount":I
    move v2, v0

    if-gtz v0, :cond_0

    .line 4339
    return v1

    .line 4342
    :cond_0
    const/4 v0, 0x0

    .line 4345
    .local v0, "selectedStart":I
    iget-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v3

    .line 4346
    .local v3, "start":I
    :goto_0
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v4, :cond_2

    .line 4347
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingBottom()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingRight()I

    move-result v5

    :goto_1
    sub-int/2addr v4, v5

    .line 4349
    .local v4, "end":I
    iget v5, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    .line 4350
    .local v5, "firstPosition":I
    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 4351
    .local v6, "toPosition":I
    const/4 v7, 0x1

    .line 4353
    .local v7, "down":Z
    const/4 v8, 0x1

    if-lt v6, v5, :cond_4

    add-int v9, v5, v2

    if-ge v6, v9, :cond_4

    .line 4354
    move v9, v6

    .line 4356
    .local v9, "selectedPosition":I
    iget v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int v10, v9, v10

    invoke-virtual {p0, v10}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4357
    .local v10, "selected":Landroid/view/View;
    iget-boolean v11, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    :goto_2
    move v0, v11

    .line 4358
    .end local v10    # "selected":Landroid/view/View;
    goto :goto_8

    .end local v9    # "selectedPosition":I
    :cond_4
    if-ge v6, v5, :cond_9

    .line 4360
    move v9, v5

    .line 4362
    .restart local v9    # "selectedPosition":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v2, :cond_8

    .line 4363
    invoke-virtual {p0, v10}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4364
    .local v11, "child":Landroid/view/View;
    iget-boolean v12, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_4

    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 4366
    .local v12, "childStart":I
    :goto_4
    if-nez v10, :cond_6

    .line 4368
    move v0, v12

    .line 4371
    :cond_6
    if-lt v12, v3, :cond_7

    .line 4373
    add-int v9, v5, v10

    .line 4374
    move v0, v12

    .line 4375
    goto :goto_8

    .line 4362
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "childStart":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v10    # "i":I
    :cond_8
    goto :goto_8

    .line 4379
    .end local v9    # "selectedPosition":I
    :cond_9
    add-int v9, v5, v2

    sub-int/2addr v9, v8

    .line 4380
    .restart local v9    # "selectedPosition":I
    const/4 v7, 0x0

    .line 4382
    add-int/lit8 v10, v2, -0x1

    .restart local v10    # "i":I
    :goto_5
    if-ltz v10, :cond_e

    .line 4383
    invoke-virtual {p0, v10}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4384
    .restart local v11    # "child":Landroid/view/View;
    iget-boolean v12, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v12, :cond_a

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 4385
    .restart local v12    # "childStart":I
    :goto_6
    iget-boolean v13, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v13, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    goto :goto_7

    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    .line 4387
    .local v13, "childEnd":I
    :goto_7
    add-int/lit8 v14, v2, -0x1

    if-ne v10, v14, :cond_c

    .line 4388
    move v0, v12

    .line 4391
    :cond_c
    if-gt v13, v4, :cond_d

    .line 4392
    add-int v9, v5, v10

    .line 4393
    move v0, v12

    .line 4394
    goto :goto_8

    .line 4382
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "childStart":I
    .end local v13    # "childEnd":I
    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 4399
    .end local v10    # "i":I
    :cond_e
    :goto_8
    const/4 v10, -0x1

    iput v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 4400
    iput v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I

    .line 4401
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->reportScrollStateChange(I)V

    .line 4403
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    .line 4405
    invoke-direct {p0, v9, v7}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v10

    .line 4406
    move v9, v10

    if-lt v10, v5, :cond_f

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v9, v10, :cond_f

    .line 4407
    const/4 v10, 0x4

    iput v10, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 4408
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateSelectorState()V

    .line 4409
    invoke-direct {p0, v9}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectionInt(I)V

    .line 4410
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V

    goto :goto_9

    .line 4412
    :cond_f
    const/4 v9, -0x1

    .line 4415
    :goto_9
    if-ltz v9, :cond_10

    return v8

    :cond_10
    return v1
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .line 4423
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4424
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateSelectorState()V

    .line 4425
    const/4 v0, 0x1

    return v0

    .line 4428
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollBy(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 3619
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->scrollListItemsBy(I)Z

    .line 3620
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 1615
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1616
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1617
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getLastVisiblePosition()I

    move-result v1

    .line 1619
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1621
    return-void

    .line 1623
    :cond_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1624
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1628
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 1629
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 57
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 723
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    if-eqz v1, :cond_0

    .line 724
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->resetState()V

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->b()V

    .line 730
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 733
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedPosition:I

    .line 734
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldSelectedRowId:J

    .line 736
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 737
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v1, :cond_2

    .line 741
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 744
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 745
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOldItemCount:I

    .line 746
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    .line 748
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataSetObserver:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$a;

    .line 749
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 751
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(I)V

    .line 753
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mHasStableIds:Z

    .line 754
    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAreAllItemsSelectable:Z

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mHasStableIds:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-nez v0, :cond_3

    .line 758
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    .line 761
    :cond_3
    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(I)I

    move-result v0

    .line 762
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectedPositionInt(I)V

    .line 763
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 765
    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    if-nez v1, :cond_4

    .line 766
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkSelectionChanged()V

    .line 768
    .end local v0    # "position":I
    :cond_4
    goto :goto_0

    .line 769
    :cond_5
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemCount:I

    .line 770
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mHasStableIds:Z

    .line 771
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAreAllItemsSelectable:Z

    .line 773
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkSelectionChanged()V

    .line 776
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->checkFocus()V

    .line 777
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 778
    return-void
.end method

.method public setChoiceMode(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;)V
    .locals 1
    .param p1, "choiceMode"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    .line 703
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    .line 705
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 707
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    .line 714
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "drawSelectorOnTop"    # Z

    .line 450
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDrawSelectorOnTop:Z

    .line 451
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .line 6003
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 6004
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEmptyView:Landroid/view/View;

    .line 6005
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateEmptyStatus()V

    .line 6006
    return-void
.end method

.method public setFocusable(Z)V
    .locals 4
    .param p1, "focusable"    # Z

    .line 6010
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 6011
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6013
    .local v0, "empty":Z
    :goto_1
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDesiredFocusableState:Z

    .line 6014
    if-nez p1, :cond_2

    .line 6015
    iput-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDesiredFocusableInTouchModeState:Z

    .line 6018
    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 6019
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 4
    .param p1, "focusable"    # Z

    .line 6023
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 6024
    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6026
    .local v0, "empty":Z
    :goto_1
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDesiredFocusableInTouchModeState:Z

    .line 6027
    if-eqz p1, :cond_2

    .line 6028
    iput-boolean v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDesiredFocusableState:Z

    .line 6031
    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6032
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->NONE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 612
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mChoiceMode:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    sget-object v1, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->MULTIPLE:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$ChoiceMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 617
    .local v0, "oldValue":Z
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 619
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 620
    if-eqz p2, :cond_1

    .line 621
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 627
    :cond_2
    :goto_0
    if-eq v0, p2, :cond_4

    .line 628
    if-eqz p2, :cond_3

    .line 629
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    .line 631
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 634
    .end local v0    # "oldValue":Z
    :cond_4
    goto :goto_2

    .line 635
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 639
    .local v0, "updateIds":Z
    :goto_1
    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 640
    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 642
    if-eqz v0, :cond_8

    .line 643
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->clear()V

    .line 649
    :cond_8
    if-eqz p2, :cond_a

    .line 650
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 652
    if-eqz v0, :cond_9

    .line 653
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 656
    :cond_9
    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    .line 657
    :cond_a
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 658
    :cond_b
    iput v2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mCheckedItemCount:I

    .line 663
    .end local v0    # "updateIds":Z
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mInLayout:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_d

    .line 664
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z

    .line 665
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->rememberSyncState()V

    .line 666
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 668
    :cond_d
    return-void
.end method

.method public setItemMargin(I)V
    .locals 1
    .param p1, "itemMargin"    # I

    .line 384
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    if-ne v0, p1, :cond_0

    .line 385
    return-void

    .line 388
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemMargin:I

    .line 389
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 390
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .line 403
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mItemsCanFocus:Z

    .line 404
    if-nez p1, :cond_0

    .line 405
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setDescendantFocusability(I)V

    .line 407
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;

    .line 423
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mOnScrollListener:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$OnScrollListener;

    .line 424
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->invokeOnItemScrollListener()V

    .line 425
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1013
    return-void

    .line 1016
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    if-nez v0, :cond_2

    .line 1018
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1020
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1021
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1022
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 1024
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mStartEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1025
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mEndEdge:Landroidx/core/widget/EdgeEffectCompat;

    .line 1028
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1029
    return-void
.end method

.method public setRecyclerListener(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;)V
    .locals 1
    .param p1, "l"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mRecycler:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;

    invoke-static {v0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;->a(Lcom/alipay/mobile/antui/basic/AUHorizontalListView$h;Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;)Lcom/alipay/mobile/antui/basic/AUHorizontalListView$RecyclerListener;

    .line 439
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 3583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelectionFromOffset(II)V

    .line 3584
    return-void
.end method

.method public setSelectionFromOffset(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 3587
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 3588
    return-void

    .line 3591
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3592
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->lookForSelectablePosition(I)I

    move-result v0

    .line 3593
    move p1, v0

    if-ltz v0, :cond_2

    .line 3594
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3597
    :cond_1
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mResurrectToPosition:I

    .line 3600
    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    .line 3601
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mLayoutMode:I

    .line 3603
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mIsVertical:Z

    if-eqz v0, :cond_3

    .line 3604
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    goto :goto_1

    .line 3606
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSpecificStart:I

    .line 3609
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 3610
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncPosition:I

    .line 3611
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSyncRowId:J

    .line 3614
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->requestLayout()V

    .line 3616
    :cond_5
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .line 460
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 461
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 471
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 477
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 479
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 480
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->updateSelectorState()V

    .line 481
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 10
    .param p1, "originalView"    # Landroid/view/View;

    .line 1175
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1176
    .local v2, "longPressPosition":I
    move v2, v0

    if-ltz v0, :cond_2

    .line 1177
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1178
    .local v0, "longPressId":J
    const/4 v9, 0x0

    .line 1180
    .local v9, "handled":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v4

    const/4 v3, 0x0

    .line 1181
    .local v3, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    move-object v3, v4

    if-eqz v4, :cond_0

    .line 1182
    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move-wide v7, v0

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    .line 1186
    :cond_0
    if-nez v9, :cond_1

    .line 1187
    iget v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mFirstPosition:I

    sub-int v4, v2, v4

    .line 1188
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1187
    invoke-direct {p0, v4, v2, v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1191
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    .line 1194
    :cond_1
    return v9

    .line 1197
    .end local v0    # "longPressId":J
    .end local v3    # "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    .end local v9    # "handled":Z
    :cond_2
    return v1
.end method
