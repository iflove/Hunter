.class final Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;
.super Ljava/lang/Object;
.source "AUTextCodeInputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendCallback:Lcom/alipay/mobile/antui/input/OnSendCallback;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$200(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/input/OnSendCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->sendButtonInnerCheckEnable:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$302(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;Z)Z

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->updateSendButtonEnableStatus()V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendCallback:Lcom/alipay/mobile/antui/input/OnSendCallback;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$200(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/input/OnSendCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mResultCallback:Lcom/alipay/mobile/antui/input/SendResultCallback;
    invoke-static {v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$400(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/input/SendResultCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/input/OnSendCallback;->onSend(Lcom/alipay/mobile/antui/input/SendResultCallback;)V

    .line 77
    :cond_0
    return-void
.end method
