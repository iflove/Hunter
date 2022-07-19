.class Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpEx.java"

# interfaces
.implements Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

.field final synthetic val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    .line 410
    iput-object p1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iput-object p2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 475
    const-string v0, "H5InputBoardProviderImpEx"

    const-string v1, "onCloseClick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->resizeAndHideKeyboard()V

    .line 479
    :cond_0
    return-void
.end method

.method public onConfirmClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 456
    const-string v0, "H5InputBoardProviderImpEx"

    const-string v1, "onConfirmClick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    const v1, 0x11101

    .line 462
    .local v1, "source":I
    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v2, v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/4 v3, 0x0

    const v4, 0x11101

    const/16 v5, 0x42

    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 464
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v2, v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/4 v3, 0x1

    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 467
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->resizeAndHideKeyboard()V

    .line 469
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->onKeyboardConfirm()V

    .line 471
    :cond_1
    return-void
.end method

.method public onDeleteClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 442
    const-string v0, "H5InputBoardProviderImpEx"

    const-string v1, "onDeleteClick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_0

    .line 444
    return-void

    .line 446
    :cond_0
    const v1, 0x11101

    .line 448
    .local v1, "source":I
    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v2, v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/4 v3, 0x0

    const v4, 0x11101

    const/16 v5, 0x43

    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 450
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v2, v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/4 v3, 0x1

    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, v5}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 452
    return-void
.end method

.method public onNumClick(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "num"    # Ljava/lang/CharSequence;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5InputBoardProviderImpEx"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    if-nez p2, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "input":Ljava/lang/String;
    const v1, 0x11101

    .line 420
    .local v1, "source":I
    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->KEY_CODE_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$200()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 421
    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v2, :cond_1

    .line 422
    return-void

    .line 424
    :cond_1
    const-string v2, "X"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x11101

    if-eqz v2, :cond_3

    .line 425
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 426
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_2

    .line 427
    const-string v5, "h5_customKeyboardCapsLockOn"

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 428
    iget-object v5, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v6, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v6, v6, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/16 v7, 0x34

    const/high16 v8, 0x100000

    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(IIII)Landroid/view/KeyEvent;
    invoke-static {v6, v4, v3, v7, v8}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$300(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;IIII)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 431
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_2
    goto :goto_0

    .line 432
    :cond_3
    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v5, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v5, v5, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    .line 433
    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->KEY_CODE_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$200()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 432
    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v5, v4, v3, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 435
    :goto_0
    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->val$apWebView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v3, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;

    iget-object v3, v3, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$NumberKeyboardEventListener;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/4 v5, 0x1

    .line 436
    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->KEY_CODE_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$200()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 435
    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v3, v4, v5, v6}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 438
    :cond_4
    return-void
.end method
