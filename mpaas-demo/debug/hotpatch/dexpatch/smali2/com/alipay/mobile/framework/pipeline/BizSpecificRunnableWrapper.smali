.class public Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;
.super Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;
.source "BizSpecificRunnableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper$BizSpecificIgnore;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 17
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.method public static obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 28
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 21
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper$BizSpecificIgnore;

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;->obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/BizSpecificRunnableWrapper;

    move-result-object v0

    return-object v0
.end method
