.class Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpEx.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

.field final synthetic val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    .line 93
    iput-object p1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    iput-object p2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 5
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .line 107
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->resizeAndHideKeyboard()V

    .line 110
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    # getter for: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$000(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->onKeyboardConfirm()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    iget-object v0, v0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    invoke-virtual {v0}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->hideKeyboard()V

    .line 115
    :cond_1
    :goto_0
    const v0, 0x11101

    .line 117
    .local v0, "customSoftKeyboardKeyEventSource":I
    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    iget-object v2, v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/4 v3, 0x0

    const v4, 0x11101

    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, p1}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 119
    iget-object v1, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1$1;->this$1:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;

    iget-object v2, v2, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx$1;->this$0:Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;

    const/4 v3, 0x1

    # invokes: Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, p1}, Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;->access$100(Lcom/mpaas/nebula/provider/H5InputBoardProviderImpEx;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 121
    return-void
.end method

.method public onPress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .line 97
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .line 102
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 126
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .line 141
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .line 131
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .line 136
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .line 146
    return-void
.end method
