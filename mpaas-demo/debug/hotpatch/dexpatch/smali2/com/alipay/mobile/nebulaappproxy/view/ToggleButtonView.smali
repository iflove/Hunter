.class public Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;
.super Landroid/widget/TextView;
.source "ToggleButtonView.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->f:I

    .line 29
    return-void
.end method

.method private a()V
    .locals 5

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 71
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->b:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 72
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->c:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 76
    .local v0, "parentWidth":I
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    .line 77
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 78
    :cond_0
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    if-le v2, v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 82
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->f:I

    sub-int/2addr v2, v4

    .line 83
    .local v2, "parentHeight":I
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-gtz v4, :cond_2

    .line 84
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 85
    :cond_2
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->getHeight()I

    move-result v3

    sub-int v3, v2, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 89
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0    # "parentWidth":I
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "parentHeight":I
    return-void

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    const-class v1, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateViewPosition...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->b:F

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->c:F

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->a()V

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 57
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->e:F

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->d:F

    .line 58
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->a()V

    .line 61
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->e:F

    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->d:F

    .line 62
    return v1

    .line 45
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->d:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->e:F

    .line 47
    nop

    .line 64
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMaxTopMargin(I)V
    .locals 0
    .param p1, "maxTopMargin"    # I

    .line 36
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->f:I

    .line 37
    return-void
.end method

.method public setViewContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewContainer"    # Landroid/view/ViewGroup;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/ToggleButtonView;->a:Landroid/view/ViewGroup;

    .line 33
    return-void
.end method
