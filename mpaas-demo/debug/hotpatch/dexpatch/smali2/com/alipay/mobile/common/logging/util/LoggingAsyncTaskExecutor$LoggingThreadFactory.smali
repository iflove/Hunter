.class Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$LoggingThreadFactory;
.super Ljava/lang/Object;
.source "LoggingAsyncTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggingThreadFactory"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$LoggingThreadFactory;->name:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$LoggingThreadFactory;->name:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$LoggingThreadFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 175
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 180
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$LoggingThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$LoggingThreadFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor$LoggingThreadFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
