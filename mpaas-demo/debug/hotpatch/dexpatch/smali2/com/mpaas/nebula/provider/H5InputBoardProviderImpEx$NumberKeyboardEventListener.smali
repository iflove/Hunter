.class Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpEx.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberKeyboardEventListener"
.end annotation


# instance fields
.field private mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

.field private mStyle:I

.field private mWithConfirm:Z

.field final synthetic this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IZ)V
    .locals 0
    .param p2, "style"    # I
    .param p3, "withConfirm"    # Z

    .line 376
    iput-object p1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 p1, 0x3

    iput p1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mStyle:I

    .line 377
    iput p2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mStyle:I

    .line 378
    iput-boolean p3, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mWithConfirm:Z

    .line 379
    return-void
.end method

.method private updateConfirmEnabledStatus(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 395
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mWithConfirm:Z

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setConfirmKeyEnabled(Z)V

    .line 398
    :cond_0
    return-void
.end method


# virtual methods
.method public getKeyboard()Landroid/view/View;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    return-object v0
.end method

.method public isKeyboardShown()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 510
    :goto_0
    return v0
.end method

.method public onHide()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setVisibility(I)V

    .line 505
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onRelease()Z
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 387
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 388
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 390
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    .line 391
    const/4 v1, 0x1

    return v1
.end method

.method public onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 402
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initKeyboardView @ H5InputBoardProviderImpEx: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mStyle:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5InputBoardProviderImpEx"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 406
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 407
    const/16 v3, 0x51

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 408
    new-instance v3, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    const/4 v6, 0x0

    iget v7, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mStyle:I

    iget-boolean v4, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mWithConfirm:Z

    xor-int/lit8 v8, v4, 0x1

    new-instance v9, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;

    invoke-direct {v9, p0, p2}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;-><init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    iput-object v3, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    .line 482
    invoke-direct {p0, v2}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->updateConfirmEnabledStatus(Z)V

    .line 483
    iget-object v3, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->ifUseRandomNumber:Z
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$400(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    invoke-virtual {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->isDuplicate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setNumKeyRandom(Z)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setNumKeyRandom(Z)V

    .line 493
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->mAuNumberKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setVisibility(I)V

    .line 494
    return v2
.end method

.method public setTextChanged(Z)V
    .locals 1
    .param p1, "isEmpty"    # Z

    .line 521
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->updateConfirmEnabledStatus(Z)V

    .line 522
    return-void
.end method
