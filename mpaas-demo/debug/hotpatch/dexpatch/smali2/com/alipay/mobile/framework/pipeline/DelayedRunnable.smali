.class public Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;
.super Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;
.source "DelayedRunnable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/DelayedRunnable$DelayedIgnore;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile b:I

.field private static volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/16 v0, 0x64

    sput v0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->b:I

    .line 16
    const/16 v0, 0x1f4

    sput v0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method static enableDelay(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .line 41
    sput-boolean p0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->a:Z

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enable delay = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DelayedRunnable"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static enableDelay(ZII)V
    .locals 0
    .param p0, "enable"    # Z
    .param p1, "minTime"    # I
    .param p2, "maxTime"    # I

    .line 46
    sput-boolean p0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->a:Z

    .line 47
    sput p1, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->b:I

    .line 48
    sput p2, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->c:I

    .line 49
    return-void
.end method

.method public static obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 34
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "target"    # Ljava/lang/Runnable;

    .line 27
    instance-of v0, p0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable$DelayedIgnore;

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->obtainRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->obtain(Ljava/lang/Runnable;)Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    .local v1, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "URGENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BIZ_SPECIFIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->a:Z

    if-eqz v0, :cond_1

    .line 57
    sget v0, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->b:I

    .line 58
    .local v0, "delayTime":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 59
    .local v2, "random":Ljava/util/Random;
    sget v3, Lcom/alipay/mobile/framework/pipeline/DelayedRunnable;->c:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 60
    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v0    # "delayTime":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "random":Ljava/util/Random;
    :cond_1
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 65
    :goto_1
    invoke-super {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnable;->run()V

    .line 66
    return-void
.end method
