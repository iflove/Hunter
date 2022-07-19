.class public Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;
.super Ljava/lang/Object;
.source "BlockablePipelineInvoker.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->a:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 6

    .line 36
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->a:Ljava/util/List;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;

    .line 43
    .local v2, "pipeline":Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;
    const-string v3, "PipelineInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "trigger pipeline "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;->doStart()V

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 46
    .end local v2    # "pipeline":Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;
    goto :goto_0

    .line 47
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static enqueuePipeline(Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;)V
    .locals 2
    .param p0, "pipeline"    # Lcom/alipay/mobile/framework/pipeline/BlockablePipeline;

    .line 17
    if-eqz p0, :cond_0

    .line 18
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->a:Ljava/util/List;

    monitor-enter v0

    .line 19
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->a()V

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public static setBlockPipeline(Z)V
    .locals 1
    .param p0, "blockPipeline"    # Z

    .line 28
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/BlockablePipelineInvoker;->a()V

    .line 33
    :cond_0
    return-void
.end method
