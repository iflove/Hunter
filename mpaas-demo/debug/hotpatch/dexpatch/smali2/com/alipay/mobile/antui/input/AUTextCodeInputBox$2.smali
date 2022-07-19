.class final Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;
.super Ljava/util/TimerTask;
.source "AUTextCodeInputBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->scheduleTimer()V
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

    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # operator-- for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$910(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)I

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mTimerHanlder:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$1000(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, "updateMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$900(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)I

    move-result v1

    if-lez v1, :cond_0

    .line 219
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$900(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 222
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 223
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;->cancel()Z

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;->a:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    # getter for: Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mTimerHanlder:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->access$1000(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void
.end method
