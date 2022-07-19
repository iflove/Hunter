.class public Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUWithoutSlapDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 25
    return-void
.end method

.method private isOutOfBounds(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 39
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 40
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 41
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lt v0, v3, :cond_1

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-lt v1, v3, :cond_1

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v3, v4

    if-gt v0, v3, :cond_1

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v3, v4

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->isOutOfBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "MessagePopMenu"

    const-string/jumbo v1, "touch out of bounds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->dismiss()V

    .line 32
    const/4 v0, 0x1

    return v0

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 55
    :cond_1
    return-void
.end method
