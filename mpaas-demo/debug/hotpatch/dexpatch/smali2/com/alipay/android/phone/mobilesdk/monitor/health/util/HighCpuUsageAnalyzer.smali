.class public Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;
.super Ljava/lang/Object;
.source "HighCpuUsageAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;[Ljava/lang/StackTraceElement;)Ljava/util/List;
    .locals 24
    .param p0, "puiList"    # Ljava/util/List;
    .param p1, "ignoreStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;",
            ">;[",
            "Ljava/lang/StackTraceElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, " ms."

    const-string v4, "Analyze high cpu waste "

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 39
    .local v5, "start":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 40
    .local v7, "result":Ljava/util/List;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const-string v8, "HighCpuUsageAnalyzer"

    const/4 v9, 0x2

    if-ge v0, v9, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "Analyzer require two elements at least."

    invoke-interface {v0, v8, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object v7

    .line 46
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v0, "tempMap":Ljava/util/Map;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    iget-object v9, v9, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 56
    .local v12, "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    new-instance v13, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;

    invoke-direct {v13}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;-><init>()V

    .line 57
    .local v11, "tmpAR":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    move-object v11, v13

    iget-object v14, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->a:Ljava/lang/String;

    iput-object v14, v13, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->a:Ljava/lang/String;

    .line 58
    iget-object v13, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    if-eqz v13, :cond_2

    iget-object v13, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    iget-object v13, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->b:Ljava/lang/String;

    new-instance v14, Landroid/util/Pair;

    new-instance v15, Ljava/util/HashMap;

    iget-object v10, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    .line 62
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v15, v10}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {v14, v11, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    nop

    .end local v12    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    goto :goto_0

    .line 59
    .restart local v12    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_2
    :goto_1
    iget-object v10, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->b:Ljava/lang/String;

    new-instance v13, Landroid/util/Pair;

    const/4 v14, 0x0

    invoke-direct {v13, v11, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v11    # "tmpAR":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    .end local v12    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .local v9, "idxPUI":I
    :goto_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_14

    .line 66
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;

    iget-object v12, v12, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ProcessUsageInfo;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;

    .line 67
    .local v14, "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    iget-object v15, v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->b:Ljava/lang/String;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 68
    .local v10, "tmpPair":Landroid/util/Pair;
    move-object v10, v15

    if-eqz v15, :cond_12

    .line 71
    iget-object v15, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;

    .line 73
    .local v15, "tmpAR":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    iget-object v1, v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    move-object/from16 v17, v11

    if-eqz v1, :cond_f

    iget-object v1, v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 74
    const/4 v1, 0x0

    .local v1, "idxJTI":I
    :goto_4
    iget-object v11, v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_e

    .line 75
    iget-object v11, v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->e:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;

    .line 76
    .local v17, "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    move-object/from16 v19, v11

    .end local v17    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    .local v19, "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    iget-object v11, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 79
    move-object/from16 v11, v19

    move-object/from16 v19, v12

    .end local v19    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    .local v11, "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    iget-object v12, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    if-eqz v12, :cond_c

    iget-object v12, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    array-length v12, v12

    if-eqz v12, :cond_c

    .line 83
    if-eqz v2, :cond_7

    array-length v12, v2

    if-eqz v12, :cond_7

    .line 84
    const/4 v12, 0x0

    .line 85
    .local v12, "skipStackFrame":Z
    move/from16 v17, v12

    .end local v12    # "skipStackFrame":Z
    .local v17, "skipStackFrame":Z
    array-length v12, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v20, v8

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v12, :cond_5

    move/from16 v21, v12

    :try_start_1
    aget-object v12, v2, v8

    .line 86
    iget-object v2, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    const/16 v18, 0x0

    aget-object v2, v2, v18

    invoke-virtual {v12, v2}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    const/4 v12, 0x1

    .line 88
    .end local v17    # "skipStackFrame":Z
    .restart local v12    # "skipStackFrame":Z
    goto :goto_6

    .line 85
    .end local v12    # "skipStackFrame":Z
    .restart local v17    # "skipStackFrame":Z
    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move/from16 v12, v21

    goto :goto_5

    :cond_5
    move/from16 v12, v17

    .line 91
    .end local v17    # "skipStackFrame":Z
    .restart local v12    # "skipStackFrame":Z
    :goto_6
    if-nez v12, :cond_6

    goto :goto_7

    :cond_6
    move-object/from16 v21, v3

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 83
    .end local v12    # "skipStackFrame":Z
    :cond_7
    move-object/from16 v20, v8

    .line 95
    :goto_7
    iget-object v2, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "tempThreadName":Ljava/lang/String;
    iget-object v8, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    if-nez v8, :cond_8

    .line 97
    new-instance v8, Landroid/util/Pair;

    new-instance v12, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    move-object/from16 v21, v3

    :try_start_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v8, v2, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v8, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    .line 99
    iget-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v8, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    invoke-static {v3, v8, v12}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 100
    :cond_8
    move-object/from16 v21, v3

    iget-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 101
    iget-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v8, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    invoke-static {v3, v8, v12}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 103
    :cond_9
    iget-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->d:Ljava/util/Map;

    if-nez v3, :cond_a

    .line 104
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->d:Ljava/util/Map;

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v13

    .line 106
    .local v8, "tempStackTracesList":Ljava/util/ArrayList;
    move-object v8, v3

    iget-object v12, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    const/4 v13, 0x0

    invoke-static {v3, v12, v13}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V

    .line 107
    iget-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v8

    const/4 v2, 0x0

    goto :goto_8

    .line 109
    .end local v8    # "tempStackTracesList":Ljava/util/ArrayList;
    :cond_a
    iget-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v8, v13

    .line 110
    .restart local v8    # "tempStackTracesList":Ljava/util/ArrayList;
    move-object v8, v3

    if-eqz v3, :cond_b

    .line 111
    iget-object v3, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    const/4 v12, 0x0

    invoke-static {v8, v3, v12}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V

    move-object v13, v8

    const/4 v2, 0x0

    goto :goto_8

    .line 113
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    move-object v8, v3

    iget-object v12, v11, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;->b:[Ljava/lang/StackTraceElement;

    const/4 v13, 0x0

    invoke-static {v3, v12, v13}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V

    .line 115
    iget-object v3, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v13

    move-object v13, v8

    goto :goto_8

    .line 141
    .end local v0    # "tempMap":Ljava/util/Map;
    .end local v1    # "idxJTI":I
    .end local v2    # "tempThreadName":Ljava/lang/String;
    .end local v8    # "tempStackTracesList":Ljava/util/ArrayList;
    .end local v9    # "idxPUI":I
    .end local v10    # "tmpPair":Landroid/util/Pair;
    .end local v11    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    .end local v14    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    .end local v15    # "tmpAR":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object/from16 v3, v20

    goto/16 :goto_c

    .line 79
    .restart local v0    # "tempMap":Ljava/util/Map;
    .restart local v1    # "idxJTI":I
    .restart local v9    # "idxPUI":I
    .restart local v10    # "tmpPair":Landroid/util/Pair;
    .restart local v11    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    .restart local v14    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    .restart local v15    # "tmpAR":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    :cond_c
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    const/4 v2, 0x0

    goto :goto_8

    .line 76
    .end local v11    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    .restart local v19    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    :cond_d
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    move-object/from16 v11, v19

    const/4 v2, 0x0

    move-object/from16 v19, v12

    .line 74
    .end local v19    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    .restart local v11    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p1

    move-object/from16 v17, v11

    move-object/from16 v12, v19

    move-object/from16 v8, v20

    move-object/from16 v3, v21

    goto/16 :goto_4

    .end local v11    # "tempJTI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo$JavaThreadInfo;
    :cond_e
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    move-object/from16 v19, v12

    const/4 v2, 0x0

    move-object/from16 v11, v17

    goto :goto_9

    .line 73
    .end local v1    # "idxJTI":I
    :cond_f
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    move-object/from16 v19, v12

    const/4 v2, 0x0

    .line 121
    move-object/from16 v11, v17

    :goto_9
    iget-object v1, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->e:Ljava/util/List;

    if-nez v1, :cond_10

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->e:Ljava/util/List;

    .line 124
    :cond_10
    iget-object v1, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->e:Ljava/util/List;

    iget-object v3, v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v9, v1, :cond_11

    .line 127
    iget-object v1, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    .line 128
    .local v1, "firstCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    iget-object v3, v14, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;->d:Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;

    .line 129
    .local v3, "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a()J

    move-result-wide v16

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->a()J

    move-result-wide v22

    sub-long v16, v16, v22

    const-wide/16 v22, 0x2710

    mul-long v16, v16, v22

    move-object v8, v10

    move-object v12, v11

    .end local v10    # "tmpPair":Landroid/util/Pair;
    .local v8, "tmpPair":Landroid/util/Pair;
    iget-wide v10, v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->m:J

    move-object/from16 v22, v3

    .end local v3    # "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    .local v22, "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->m:J

    sub-long/2addr v10, v2

    div-long v2, v16, v10

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->b:F

    .line 131
    move-object/from16 v2, v22

    .end local v22    # "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    .local v2, "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    iget-wide v10, v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->o:J

    move-object/from16 v22, v2

    .end local v2    # "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    .restart local v22    # "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;->o:J

    sub-long/2addr v10, v2

    iput-wide v10, v15, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->f:J

    goto :goto_a

    .line 126
    .end local v1    # "firstCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    .end local v8    # "tmpPair":Landroid/util/Pair;
    .end local v22    # "lastCUI":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/CpuUsageInfo;
    .restart local v10    # "tmpPair":Landroid/util/Pair;
    :cond_11
    move-object v8, v10

    move-object v12, v11

    .line 133
    .end local v10    # "tmpPair":Landroid/util/Pair;
    .end local v14    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    .restart local v8    # "tmpPair":Landroid/util/Pair;
    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v10, v8

    move-object v11, v12

    move-object/from16 v12, v19

    move-object/from16 v8, v20

    move-object/from16 v3, v21

    goto/16 :goto_3

    .line 68
    .end local v8    # "tmpPair":Landroid/util/Pair;
    .end local v15    # "tmpAR":Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    .restart local v10    # "tmpPair":Landroid/util/Pair;
    .restart local v14    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_12
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    move-object v8, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    .end local v10    # "tmpPair":Landroid/util/Pair;
    .restart local v8    # "tmpPair":Landroid/util/Pair;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, v20

    goto/16 :goto_3

    .line 65
    .end local v8    # "tmpPair":Landroid/util/Pair;
    .end local v14    # "tui":Lcom/alipay/android/phone/mobilesdk/monitor/health/info/ThreadUsageInfo;
    :cond_13
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v21, v3

    move-object/from16 v20, v8

    .line 135
    .end local v9    # "idxPUI":I
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    move-object v3, v12

    .line 137
    .local v3, "pair":Landroid/util/Pair;
    move-object v12, v2

    .end local v3    # "pair":Landroid/util/Pair;
    .local v12, "pair":Landroid/util/Pair;
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;

    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;Ljava/util/HashMap;)V

    .line 138
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    nop

    .end local v12    # "pair":Landroid/util/Pair;
    goto :goto_b

    .line 141
    .end local v0    # "tempMap":Ljava/util/Map;
    :cond_15
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    move-object/from16 v3, v20

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    nop

    .line 144
    return-object v7

    .line 141
    :catchall_1
    move-exception v0

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v3, v8

    :goto_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;Ljava/util/HashMap;)V
    .locals 11
    .param p0, "ar"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;
    .param p1, "duplicateSTEMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;",
            "Ljava/util/HashMap<",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 163
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 164
    .local v0, "stackTraceFrequencyMap":Ljava/util/Map;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 165
    .local v2, "steArray":[Ljava/lang/StackTraceElement;
    move-object v2, v5

    if-eqz v5, :cond_1

    array-length v5, v2

    if-eqz v5, :cond_1

    .line 168
    const/4 v4, 0x1

    .line 169
    .local v4, "weight":I
    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 171
    .local v3, "tmpFrequency":Ljava/lang/Integer;
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 172
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 175
    .end local v3    # "tmpFrequency":Ljava/lang/Integer;
    :cond_2
    array-length v5, v2

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    .line 176
    .local v7, "ste":Ljava/lang/StackTraceElement;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 177
    .restart local v3    # "tmpFrequency":Ljava/lang/Integer;
    move-object v3, v8

    if-nez v8, :cond_3

    .line 178
    add-int/lit8 v8, v4, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 183
    .end local v2    # "steArray":[Ljava/lang/StackTraceElement;
    .end local v3    # "tmpFrequency":Ljava/lang/Integer;
    :cond_4
    move-object v4, v2

    goto :goto_0

    .line 184
    .end local v4    # "weight":I
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    .local v1, "stackTraceArrayFrequencyMap":Ljava/util/Map;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 186
    .local v4, "steArray":[Ljava/lang/StackTraceElement;
    move-object v4, v3

    if-eqz v3, :cond_6

    array-length v3, v4

    if-eqz v3, :cond_6

    .line 189
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 190
    .restart local v3    # "tmpFrequency":Ljava/lang/Integer;
    array-length v5, v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_7

    aget-object v8, v4, v7

    .line 191
    .local v8, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 190
    .end local v8    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 193
    :cond_7
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v4    # "steArray":[Ljava/lang/StackTraceElement;
    goto :goto_3

    .line 195
    .end local v3    # "tmpFrequency":Ljava/lang/Integer;
    :cond_8
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;

    invoke-direct {v3, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;-><init>(Ljava/util/Map;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    return-void

    .line 158
    .end local v0    # "stackTraceFrequencyMap":Ljava/util/Map;
    .end local v1    # "stackTraceArrayFrequencyMap":Ljava/util/Map;
    :cond_9
    :goto_5
    return-void
.end method

.method private static a(Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 225
    if-eqz p1, :cond_9

    array-length v0, p1

    if-eqz v0, :cond_9

    if-nez p0, :cond_0

    goto :goto_3

    .line 228
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void

    .line 233
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 234
    nop

    .line 235
    array-length v2, v1

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    .line 236
    goto :goto_1

    .line 238
    :cond_3
    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 239
    aget-object v3, v1, v2

    aget-object v6, p1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 240
    nop

    .line 241
    goto :goto_1

    .line 238
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    .line 245
    :goto_1
    if-eqz v4, :cond_2

    .line 248
    if-eqz p2, :cond_7

    .line 249
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 250
    if-nez p0, :cond_6

    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    .line 253
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 255
    :goto_2
    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_7
    return-void

    .line 259
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-void

    .line 226
    :cond_9
    :goto_3
    return-void
.end method
