.class final Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector$1;
.super Ljava/lang/Object;
.source "H5BugmeLogCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->flushFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "flush log cost: "

    const-string v1, "H5BugmeLogCollector"

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 109
    .local v2, "start":J
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->readLog()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 110
    .local v5, "logs":Ljava/util/List;
    move-object v5, v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    const/4 v4, 0x0

    .line 114
    .local v4, "writer":Ljava/io/BufferedWriter;
    new-instance v6, Lcom/alipay/mobile/nebula/process/ProcessLock;

    # invokes: Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getLockFilePath()Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alipay/mobile/nebula/process/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, "lock":Lcom/alipay/mobile/nebula/process/ProcessLock;
    :try_start_0
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/process/ProcessLock;->lock()V

    .line 117
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    # invokes: Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->getFilePath()Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/dev/H5BugmeLogCollector;->access$100()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v7

    .line 118
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 119
    .local v8, "log":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v8    # "log":Ljava/lang/String;
    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 122
    :catchall_0
    move-exception v7

    .line 123
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "write bugme log file error "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .end local v7    # "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :catchall_1
    move-exception v7

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 126
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/process/ProcessLock;->unlock()V

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 111
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .end local v6    # "lock":Lcom/alipay/mobile/nebula/process/ProcessLock;
    :cond_2
    :goto_2
    return-void
.end method
