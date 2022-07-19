.class Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;
.super Ljava/lang/Object;
.source "PipelineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    .line 355
    iput-object p1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 358
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doStartPipeline, async, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v2, v2, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isPreloadLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    :goto_0
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doStartPipeline, async, preload waited "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v2, v2, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    nop

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v0, v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->c:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$400(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v1, v1, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 371
    const-string v1, "com.alipay.mobile.TASK_SCHEDULE_SERVICE_IDLE_TASK"

    const-string v2, "com.alipay.mobile.PORTAL_IDLE"

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 372
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 374
    iget-object v7, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v7, v7, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->b(Ljava/lang/String;)Z
    invoke-static {v7}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$500(Ljava/lang/String;)Z

    move-result v7

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 377
    :try_start_1
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "new valve.runnable, valve="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    if-eqz v7, :cond_2

    .line 390
    iget-object v9, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v9, v9, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # invokes: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a()V
    invoke-static {v9}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$600(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)V

    .line 391
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 392
    iget-object v10, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v10, v10, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;
    invoke-static {v10}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$700(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "intercept "

    if-eqz v10, :cond_1

    .line 393
    :try_start_2
    iget-object v10, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v10, v10, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-virtual {v10, v2}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v10

    .line 394
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getClazz()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Runnable;

    .line 395
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getThreadName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getWeight()I

    move-result v14

    invoke-interface {v10, v12, v13, v14}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 396
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " into com.alipay.mobile.PORTAL_IDLE"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    goto :goto_1

    .line 399
    :cond_1
    iget-object v10, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v10, v10, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;
    invoke-static {v10}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$800(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 400
    iget-object v10, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v10, v10, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-virtual {v10, v1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v10

    .line 401
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getClazz()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Runnable;

    .line 402
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getThreadName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getWeight()I

    move-result v14

    invoke-interface {v10, v12, v13, v14}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 403
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " into com.alipay.mobile.TASK_SCHEDULE_SERVICE_IDLE_TASK"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    goto/16 :goto_1

    .line 409
    :cond_2
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getClazz()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    .line 410
    iget-object v10, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getThreadName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getWeight()I

    move-result v12

    invoke-virtual {v10, v9, v11, v12}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 411
    invoke-virtual {v8}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    goto/16 :goto_1

    .line 413
    :catchall_0
    move-exception v9

    .line 414
    invoke-static {v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleDescriptionInitFail(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/Throwable;)V

    .line 415
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to reflect Valve["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v10, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    goto/16 :goto_1

    .line 419
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 420
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isPreloadLaunch()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e8

    goto :goto_2

    :cond_4
    const/16 v0, 0x258

    :goto_2
    int-to-long v5, v0

    cmp-long v0, v7, v5

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 421
    :goto_3
    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create pipeline runnable cost: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", adjust the priority of all Runnable ? : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 423
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v0, v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "] intercepted valves:"

    const-string v4, "PipeLine["

    const-string/jumbo v5, "perf_opt"

    if-eqz v0, :cond_7

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v1, v1, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v1, v1, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->d:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$700(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 425
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v0, v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v1, v1, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v1, v1, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->this$0:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    # getter for: Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->e:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->access$800(Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_8
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v1, v1, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] valves:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper$1;->this$1:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;

    iget-object v0, v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager$StandardPipelineWrapper;->mTarget:Lcom/alipay/mobile/framework/pipeline/StandardPipeline;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/StandardPipeline;->start()V

    .line 431
    return-void
.end method
