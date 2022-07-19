.class Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;
.super Ljava/lang/Object;
.source "H5InputBoardProviderImpl.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

.field final synthetic val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 5
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .line 92
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->resizeAndHideKeyboard()V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->mH5InputOperator:Lcom/alipay/mobile/nebula/callback/H5InputOperator;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;)Lcom/alipay/mobile/nebula/callback/H5InputOperator;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/callback/H5InputOperator;->onKeyboardConfirm()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->hideKeyboard()V

    .line 100
    :cond_1
    :goto_0
    const v0, 0x11101

    .line 102
    .local v0, "customSoftKeyboardKeyEventSource":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    const/4 v3, 0x0

    const v4, 0x11101

    # invokes: Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, p1}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$100(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->val$webView:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;

    const/4 v3, 0x1

    # invokes: Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->createKeyEvent(III)Landroid/view/KeyEvent;
    invoke-static {v2, v4, v3, p1}, Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;->access$100(Lcom/alipay/mobile/nebulauc/impl/view/H5InputBoardProviderImpl;III)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 106
    return-void
.end method

.method public onPress(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .line 82
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .param p1, "primaryCode"    # I

    .line 87
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .line 126
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .line 116
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .line 121
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .line 131
    return-void
.end method
