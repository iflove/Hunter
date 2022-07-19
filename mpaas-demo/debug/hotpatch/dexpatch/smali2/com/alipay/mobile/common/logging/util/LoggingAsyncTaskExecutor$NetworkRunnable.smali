.class Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$NetworkRunnable;
.super Ljava/lang/Object;
.source "LoggingAsyncTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkRunnable"
.end annotation


# instance fields
.field runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$NetworkRunnable;->runnable:Ljava/lang/Runnable;

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$1;

    .line 188
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$NetworkRunnable;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 198
    const/4 v0, -0x1

    .line 200
    .local v0, "taskId":I
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$NetworkRunnable;->runnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    # getter for: Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->g:I
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->access$200()I

    move-result v1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    .line 204
    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->g:I
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->access$202(I)I

    .line 206
    :cond_1
    # ++operator for: Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->g:I
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->access$204()I

    move-result v1

    move v0, v1

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$NetworkRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    return-void

    .line 209
    :catchall_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "LoggingAsyncTaskExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "taskId=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] run ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 211
    :catchall_1
    move-exception v1

    throw v1
.end method
