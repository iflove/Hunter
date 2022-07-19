.class Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SharedPrefLagFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpRunnableProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field volatile isHandleSleeping:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->isHandleSleeping:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$1;

    .line 187
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->poll()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Runnable;
    .locals 9

    .line 193
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->isHandleSleeping:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->realPoll()Ljava/lang/Runnable;

    move-result-object v0

    .line 196
    .local v2, "ret":Ljava/lang/Runnable;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 198
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->isHandleSleeping:Z

    .line 200
    :cond_0
    return-object v2

    .line 204
    .end local v2    # "ret":Ljava/lang/Runnable;
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    move-object v3, v2

    .line 205
    .local v3, "traceElements":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 206
    .local v6, "traceElement":Ljava/lang/StackTraceElement;
    const-string v7, "handleSleeping"

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ActivityThread"

    .line 207
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->realPoll()Ljava/lang/Runnable;

    move-result-object v0

    move-object v4, v2

    .line 209
    .local v4, "ret":Ljava/lang/Runnable;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->isHandleSleeping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_2
    return-object v4

    .line 205
    .end local v4    # "ret":Ljava/lang/Runnable;
    .end local v6    # "traceElement":Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "traceElements":[Ljava/lang/StackTraceElement;
    :cond_4
    goto :goto_1

    .line 217
    :catchall_0
    move-exception v0

    .line 221
    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix$SpRunnableProxy;->isHandleSleeping:Z

    .line 222
    return-object v2
.end method

.method realPoll()Ljava/lang/Runnable;
    .locals 1

    .line 226
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method
