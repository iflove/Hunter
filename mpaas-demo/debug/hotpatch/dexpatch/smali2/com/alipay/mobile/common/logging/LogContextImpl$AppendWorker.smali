.class public Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;
.super Ljava/lang/Thread;
.source "LogContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/LogContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppendWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 129
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "AppendWorker finally: "

    const-string v1, "LogContext"

    .line 138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    .line 139
    .local v3, "priority":I
    move v3, v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 140
    const/4 v3, 0x5

    .line 142
    :cond_0
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->setPriority(I)V

    .line 146
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Z

    if-eqz v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/util/Queue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 153
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;)V

    .line 154
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 155
    .local v5, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v6, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/logging/LogContextImpl;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 156
    iget-object v6, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v6}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 157
    nop

    .end local v5    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    goto :goto_1

    .line 158
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/util/Queue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v2

    .line 160
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v2    # "t":Ljava/lang/Throwable;
    return-void

    .line 149
    :catchall_1
    move-exception v4

    .line 150
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AppendWorker take: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 153
    .end local v4    # "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;)V

    .line 154
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 155
    .restart local v5    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v6, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/logging/LogContextImpl;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 156
    iget-object v6, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v6}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 157
    nop

    .end local v5    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    goto :goto_3

    .line 158
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/util/Queue;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    return-void

    .line 159
    :catchall_2
    move-exception v2

    .line 160
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 152
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_3
    move-exception v4

    .line 153
    :try_start_4
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;)V

    .line 154
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v5}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 155
    .local v6, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/common/logging/LogContextImpl;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 156
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-static {v7}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 157
    nop

    .end local v6    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    goto :goto_4

    .line 158
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->this$0:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/util/Queue;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 161
    goto :goto_5

    .line 159
    :catchall_4
    move-exception v2

    .line 160
    .restart local v2    # "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_5
    throw v4
.end method
