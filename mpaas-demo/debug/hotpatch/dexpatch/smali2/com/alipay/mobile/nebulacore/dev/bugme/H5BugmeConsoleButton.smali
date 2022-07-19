.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;
.super Landroid/widget/ImageButton;
.source "H5BugmeConsoleButton.java"


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->a:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->a:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->a:Z

    .line 34
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 47
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->b:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->e:F

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->c:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->a:Z

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->b:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->c:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 52
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 40
    :cond_3
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->a:Z

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->b:F

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->c:F

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->d:F

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->e:F

    .line 45
    nop

    .line 56
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;->a:Z

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    return v2

    :cond_5
    :goto_3
    return v1
.end method
