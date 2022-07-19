.class public Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;
.super Ljava/lang/Object;
.source "AUNumberKeyboardWindow.java"


# instance fields
.field private keyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

.field private keyboardWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

.field private mContext:Landroid/content/Context;

.field private windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;-><init>(Landroid/content/Context;ILcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I
    .param p3, "listener"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;-><init>(Landroid/content/Context;ILcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    .line 36
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    .line 37
    sget v1, Lcom/alipay/mobile/antui/R$style;->keyboard_anim_style:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->setAnimationStyle(I)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->setFocusable(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;->stateChange(ZI)V

    .line 76
    :cond_0
    return-void
.end method

.method public getKeyboardView()Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setActionClickListener(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setActionClickListener(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    .line 80
    return-void
.end method

.method public setWindowStateChangeListener(Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;)V
    .locals 0
    .param p1, "windowStateChangeListener"    # Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    .line 84
    return-void
.end method

.method public show()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    .local v1, "rootView":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->keyboardWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->windowStateChangeListener:Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;

    if-eqz v0, :cond_2

    .line 61
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardWindow;->mContext:Landroid/content/Context;

    const/high16 v4, 0x435e0000    # 222.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;->stateChange(ZI)V

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const-string v0, "AUNumberKeyboardWindow"

    const-string/jumbo v2, "rootView is null :"

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 64
    .end local v1    # "rootView":Landroid/view/View;
    :cond_2
    :goto_1
    return-void
.end method
