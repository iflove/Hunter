.class public Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;
.super Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;
.source "PipelineDispatchCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable$PipelineDispatchCallableIgnore;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "callable"    # Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 20
    return-void
.end method

.method public static obtain(Ljava/util/concurrent/Callable;)Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;
    .locals 1
    .param p0, "target"    # Ljava/util/concurrent/Callable;

    .line 30
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static obtainCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0, "target"    # Ljava/util/concurrent/Callable;

    .line 23
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable$PipelineDispatchCallableIgnore;

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedCallable;->obtainCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;->obtain(Ljava/util/concurrent/Callable;)Lcom/alipay/mobile/framework/pipeline/PipelineDispatchCallable;

    move-result-object v0

    return-object v0
.end method
