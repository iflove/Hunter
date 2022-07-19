.class public Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;
.super Ljava/lang/Object;
.source "ThreadDumpUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadDumpUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadsStackTrace()Ljava/lang/String;
    .locals 13

    .line 34
    const-string v0, "getThreadsStackTrace"

    const-string v1, "ThreadDumpUtil"

    const-string v2, "\n"

    const-string v3, ""

    .line 36
    .local v3, "threadsStackTrace":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v4, "stackTracesBuf":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 38
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .local v6, "entry":Ljava/util/Map$Entry;
    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 41
    .local v7, "targetThread":Ljava/lang/Thread;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StackTraceElement;

    .line 42
    .local v8, "stackTraces":[Ljava/lang/StackTraceElement;
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "threadName":Ljava/lang/String;
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    const-string v10, "ThreadName="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v8, v11

    .line 47
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 48
    .local v12, "traces":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    nop

    .end local v12    # "traces":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v7    # "targetThread":Ljava/lang/Thread;
    .end local v8    # "stackTraces":[Ljava/lang/StackTraceElement;
    .end local v9    # "threadName":Ljava/lang/String;
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v7

    .line 53
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v1, v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v0

    .line 59
    .end local v4    # "stackTracesBuf":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 57
    :catchall_1
    move-exception v2

    .line 58
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    return-object v3
.end method

.method public static logAllThreadsTraces()V
    .locals 4

    const-string v0, "ThreadDumpUtil"

    .line 24
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->getThreadsStackTrace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 25
    .local v2, "trace":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "All Threads Traces: ###"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v2    # "trace":Ljava/lang/String;
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "logAllThreadsTraces failed"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method
