.class public Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;
.super Ljava/lang/Object;
.source "AnalysedCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable$AnalysedCallableIgnore;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 2
    .param p1, "target"    # Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->a:Ljava/util/concurrent/Callable;

    .line 50
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inner is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFinalInnerName(Ljava/util/concurrent/Callable;)Ljava/lang/String;
    .locals 1
    .param p0, "target"    # Ljava/util/concurrent/Callable;

    .line 29
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    .line 31
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->getFinalInnerName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_0
    if-nez p0, :cond_1

    .line 34
    const-string v0, ""

    return-object v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/util/concurrent/Callable;)Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;
    .locals 1
    .param p0, "target"    # Ljava/util/concurrent/Callable;

    .line 19
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    if-eqz v0, :cond_0

    .line 20
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    .line 22
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static obtainCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0, "target"    # Ljava/util/concurrent/Callable;

    .line 11
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable$AnalysedCallableIgnore;

    if-eqz v0, :cond_0

    .line 12
    return-object p0

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->obtain(Ljava/util/concurrent/Callable;)Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->a:Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    move-object v2, v1

    .line 59
    .local v2, "inner":Ljava/util/concurrent/Callable;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 63
    instance-of v0, v2, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    instance-of v0, v2, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable$AnalysedCallableIgnore;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->isWorking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->getInnerName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v1, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->startRecord(Ljava/lang/String;)V

    .line 76
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    .line 76
    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    throw v0

    .line 60
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "inner is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinalInner()Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->a:Ljava/util/concurrent/Callable;

    .line 95
    .local v0, "inner":Ljava/util/concurrent/Callable;
    :goto_0
    instance-of v1, v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;

    .line 97
    iget-object v0, v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->a:Ljava/util/concurrent/Callable;

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    return-object v0
.end method

.method public getFinalInnerName()Ljava/lang/String;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->getFinalInner()Ljava/util/concurrent/Callable;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    .local v1, "inner":Ljava/util/concurrent/Callable;
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

.method public getInner()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->a:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method public getInnerName()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->a:Ljava/util/concurrent/Callable;

    const/4 v1, 0x0

    .line 104
    .local v1, "inner":Ljava/util/concurrent/Callable;
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->a:Ljava/util/concurrent/Callable;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
