.class public Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;
.super Ljava/lang/Object;
.source "AnalysedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable$AnalysedIgnore;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    .line 60
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inner is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->b:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 135
    .local v1, "collection":Ljava/util/Collection;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 141
    .local v0, "tid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    nop

    .end local v0    # "tid":I
    return-void

    .line 142
    :catchall_0
    move-exception v0

    .line 144
    return-void
.end method

.method public static getFinalInnerName(Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 31
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    .line 33
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->getFinalInnerName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    if-nez p0, :cond_1

    .line 36
    const-string v0, ""

    return-object v0

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 21
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    .line 24
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 13
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable$AnalysedIgnore;

    if-eqz v0, :cond_0

    .line 14
    return-object p0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFinalInner()Ljava/lang/Runnable;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    .line 112
    .local v0, "inner":Ljava/lang/Runnable;
    :goto_0
    instance-of v1, v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    .line 114
    iget-object v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method public getFinalInnerName()Ljava/lang/String;
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->getFinalInner()Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    .local v1, "inner":Ljava/lang/Runnable;
    move-object v1, v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInner()Ljava/lang/Runnable;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getInnerName()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 121
    .local v1, "inner":Ljava/lang/Runnable;
    move-object v1, v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    const/4 v1, 0x0

    move-object v2, v1

    .line 73
    .local v2, "inner":Ljava/lang/Runnable;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    instance-of v0, v2, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 80
    :cond_1
    instance-of v0, v2, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable$AnalysedIgnore;

    if-eqz v0, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a()V

    .line 82
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 84
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a()V

    .line 86
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->getInnerName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v1, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->startRecord(Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a()V

    .line 93
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    throw v0
.end method

.method public setInner(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "inner"    # Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    .line 64
    return-void
.end method

.method public setTidCollection(Ljava/util/Collection;)V
    .locals 0
    .param p1, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->b:Ljava/util/Collection;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->a:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
