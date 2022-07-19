.class public Lcom/alipay/mobile/antui/filter/ScrollViewExtend;
.super Landroid/widget/ScrollView;
.source "ScrollViewExtend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;
    }
.end annotation


# instance fields
.field private canScroll:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;-><init>(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->mGestureDetector:Landroid/view/GestureDetector;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/filter/ScrollViewExtend;

    .line 14
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/filter/ScrollViewExtend;
    .param p1, "x1"    # Z

    .line 14
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z

    return p1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z

    .line 36
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
