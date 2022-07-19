.class Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;
.super Ljava/lang/Object;
.source "H5Progress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/view/H5Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private deltaProgress:I

.field private period:I

.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5Progress;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5Progress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 169
    .local v2, "max":I
    move v2, v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # setter for: Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->startTime:J
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$200(Lcom/alipay/mobile/nebula/view/H5Progress;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 177
    .local v3, "deltaTime":J
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->curDuration:J
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$300(Lcom/alipay/mobile/nebula/view/H5Progress;)J

    move-result-wide v5

    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->deltaProgress:I

    int-to-long v7, v0

    mul-long v5, v5, v7

    int-to-long v7, v2

    div-long/2addr v5, v7

    .line 178
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # setter for: Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    .line 181
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->lastTarget:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$400(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v0

    iget v5, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->deltaProgress:I

    int-to-long v5, v5

    mul-long v5, v5, v3

    iget-object v7, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 184
    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->curDuration:J
    invoke-static {v7}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$300(Lcom/alipay/mobile/nebula/view/H5Progress;)J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-int v6, v5

    add-int/2addr v0, v6

    move v5, v1

    .line 187
    .local v5, "nextProgress":I
    move v5, v0

    iget-object v6, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->targetProgress:I
    invoke-static {v6}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$500(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v6

    if-le v0, v6, :cond_3

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v0

    if-le v5, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->notifier:Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->notifier:Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;->onProgressEnd()V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->nextVisibility:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$700(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_5

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->nextVisibility:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$700(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v7

    # invokes: Landroid/widget/ProgressBar;->setVisibility(I)V
    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$801(Lcom/alipay/mobile/nebula/view/H5Progress;I)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # setter for: Lcom/alipay/mobile/nebula/view/H5Progress;->nextVisibility:I
    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$702(Lcom/alipay/mobile/nebula/view/H5Progress;I)I

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->lastProgress:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$900(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->notifier:Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->notifier:Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$600(Lcom/alipay/mobile/nebula/view/H5Progress;)Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5Progress$ProgressNotifier;->onProgressBegin()V

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebula/view/H5Progress;->setProgress(I)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # setter for: Lcom/alipay/mobile/nebula/view/H5Progress;->lastProgress:I
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$902(Lcom/alipay/mobile/nebula/view/H5Progress;I)I

    .line 205
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->targetProgress:I
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$500(Lcom/alipay/mobile/nebula/view/H5Progress;)I

    move-result v0

    if-le v5, v0, :cond_7

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->getMax()I

    move-result v0

    if-le v5, v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # invokes: Lcom/alipay/mobile/nebula/view/H5Progress;->reset()V
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$1000(Lcom/alipay/mobile/nebula/view/H5Progress;)V

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # setter for: Lcom/alipay/mobile/nebula/view/H5Progress;->isRunnableWorking:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$002(Lcom/alipay/mobile/nebula/view/H5Progress;Z)Z

    .line 211
    return-void

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->this$0:Lcom/alipay/mobile/nebula/view/H5Progress;

    # getter for: Lcom/alipay/mobile/nebula/view/H5Progress;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5Progress;->access$100(Lcom/alipay/mobile/nebula/view/H5Progress;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->period:I

    int-to-long v6, v1

    invoke-virtual {v0, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-void
.end method

.method public setPeriodValue(I)V
    .locals 0
    .param p1, "period"    # I

    .line 158
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->period:I

    .line 159
    return-void
.end method

.method public setdeltaProgressValue(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 162
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5Progress$UpdateRunnable;->deltaProgress:I

    .line 163
    return-void
.end method
