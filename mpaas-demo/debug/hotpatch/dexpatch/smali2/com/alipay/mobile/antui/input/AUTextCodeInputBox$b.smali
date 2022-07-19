.class final Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;
.super Landroid/os/Handler;
.source "AUTextCodeInputBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;-><init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # setter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->sendButtonInnerCheckEnable:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$302(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;Z)Z

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->updateSendButtonEnableStatus()V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonTextRetry:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$700(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$600(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonTextRetry:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$700(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$600(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$string;->resendCheckCode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # invokes: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->resetTime()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$800(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)V

    .line 121
    :goto_1
    return-void

    .line 102
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .local v1, "time":I
    const/4 v2, 0x0

    .line 104
    .local v2, "curtimeStr":Ljava/lang/String;
    move v1, v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .end local v2    # "curtimeStr":Ljava/lang/String;
    .local v0, "curtimeStr":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v2}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$600(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->timeStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$500(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$s$"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
