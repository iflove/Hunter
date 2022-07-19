.class final Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;
.super Landroid/os/Handler;
.source "AUImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUImageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 616
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 619
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mConfirmStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$400(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setConfirmBtnText(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # invokes: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->cancelTimer()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$500(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    goto :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->confirmBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setEnabled(Z)V

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mTimeColor:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$200(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$300()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "time":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$string;->retry_later:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "phrase":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$4;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setConfirmBtnText(Ljava/lang/String;)V

    .line 625
    nop

    .line 631
    .end local v0    # "time":Ljava/lang/String;
    .end local v1    # "phrase":Ljava/lang/String;
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 632
    return-void
.end method
