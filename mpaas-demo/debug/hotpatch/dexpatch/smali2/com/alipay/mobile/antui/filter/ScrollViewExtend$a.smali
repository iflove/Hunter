.class final Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollViewExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/filter/ScrollViewExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/filter/ScrollViewExtend;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/filter/ScrollViewExtend;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;->a:Lcom/alipay/mobile/antui/filter/ScrollViewExtend;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;->a:Lcom/alipay/mobile/antui/filter/ScrollViewExtend;

    # getter for: Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->access$000(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;->a:Lcom/alipay/mobile/antui/filter/ScrollViewExtend;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->access$002(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;Z)Z

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;->a:Lcom/alipay/mobile/antui/filter/ScrollViewExtend;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->access$002(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;Z)Z

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/filter/ScrollViewExtend$a;->a:Lcom/alipay/mobile/antui/filter/ScrollViewExtend;

    # getter for: Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->canScroll:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/filter/ScrollViewExtend;->access$000(Lcom/alipay/mobile/antui/filter/ScrollViewExtend;)Z

    move-result v0

    return v0
.end method
