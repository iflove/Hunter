.class public Lcom/alipay/mobile/antui/picker/AUPopup;
.super Ljava/lang/Object;
.source "AUPopup.java"


# instance fields
.field private contentLayout:Landroid/widget/FrameLayout;

.field private dialog:Lcom/alipay/mobile/antui/basic/AUDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUPopup;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    .line 36
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 39
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    .line 40
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUDialog;->setCancelable(Z)V

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    .line 43
    .local v2, "window":Landroid/view/Window;
    move-object v2, v0

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 44
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v2, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUDialog;->dismiss()V

    .line 92
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animRes"    # I

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 67
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 138
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 147
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "will set popup width/height to: %s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "compositeui"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 122
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    goto :goto_0

    .line 125
    :cond_0
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method

.method public show()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUPopup;->dialog:Lcom/alipay/mobile/antui/basic/AUDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 84
    return-void
.end method
