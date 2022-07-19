.class public Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;
.super Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;
.source "TransactionPipeline.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 14
    return-void
.end method


# virtual methods
.method public next()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "size":I
    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/alipay/mobile/quinox/asynctask/TransactionPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 23
    :cond_0
    return v0
.end method

.method public nextTransaction()I
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/quinox/asynctask/StandardPipeline;->next()I

    move-result v0

    return v0
.end method
