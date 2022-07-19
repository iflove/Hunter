.class public Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;
.super Lcom/alipay/mobile/framework/pipeline/PausableRunnable;
.source "PipelineDispatchRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable$PipelineDispatchIgnore;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public static obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 26
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 19
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable$PipelineDispatchIgnore;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/PausableRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;->obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/PipelineDispatchRunnable;

    move-result-object v0

    return-object v0
.end method
