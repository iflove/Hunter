.class public Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;
.super Ljava/lang/Object;
.source "AnalysedRunnableManager.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/IAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;
    }
.end annotation


# static fields
.field public static final TID_SIZE:I = 0x2000

.field private static a:Z

.field private static b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

.field private static c:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRecordListener(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;)Z
    .locals 5
    .param p0, "recordListener"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    .line 71
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    move-object v2, v1

    .line 72
    .local v2, "recordListeners":[Ljava/lang/ref/WeakReference;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 73
    return v3

    .line 75
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_3

    .line 76
    aget-object v4, v2, v0

    .line 78
    .local v1, "existListenerRefer":Ljava/lang/ref/WeakReference;
    move-object v1, v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 75
    .end local v1    # "existListenerRefer":Ljava/lang/ref/WeakReference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .restart local v1    # "existListenerRefer":Ljava/lang/ref/WeakReference;
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v0

    .line 80
    const/4 v3, 0x1

    return v3

    .line 83
    .end local v0    # "i":I
    .end local v1    # "existListenerRefer":Ljava/lang/ref/WeakReference;
    :cond_3
    return v3
.end method

.method public static endRecord(Ljava/lang/String;)V
    .locals 13
    .param p0, "runnableName"    # Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    const/4 v1, 0x0

    move-object v2, v1

    .line 155
    .local v2, "runnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    .line 159
    .local v4, "tid":I
    move v4, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    sub-int/2addr v0, v5

    .line 161
    .local v3, "index":I
    move v3, v0

    if-ltz v0, :cond_8

    const/16 v0, 0x2000

    if-lt v3, v0, :cond_1

    goto/16 :goto_2

    .line 164
    :cond_1
    aget-object v0, v2, v3

    move-object v5, v1

    .line 166
    .local v5, "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v5, v0

    if-eqz v0, :cond_6

    iget-boolean v0, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->isRunning:Z

    if-eqz v0, :cond_6

    .line 167
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    move-object v6, v1

    .line 169
    .local v6, "recordListeners":[Ljava/lang/ref/WeakReference;
    move-object v6, v0

    if-eqz v0, :cond_6

    .line 170
    const/4 v0, 0x0

    move-object v7, v1

    .local v0, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v0, v8, :cond_6

    .line 171
    aget-object v8, v6, v0

    .line 172
    .local v1, "recordListenerRefer":Ljava/lang/ref/WeakReference;
    move-object v1, v8

    if-eqz v8, :cond_5

    .line 175
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    .line 176
    .local v7, "recordListener":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;
    move-object v7, v8

    if-eqz v8, :cond_5

    .line 180
    :try_start_0
    invoke-interface {v7, v4, p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;->isTargetRecord(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 181
    iget-object v8, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadName:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadName:Ljava/lang/String;

    .line 184
    :cond_2
    iget-wide v8, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gez v12, :cond_3

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    .line 187
    :cond_3
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->fullClone()Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    move-result-object v8

    .line 188
    .local v8, "clonedInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    invoke-interface {v7, v8}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;->onEndRecord(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v8    # "clonedInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :cond_4
    goto :goto_1

    .line 190
    :catchall_0
    move-exception v8

    .line 191
    .local v8, "t":Ljava/lang/Throwable;
    sget-boolean v9, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->a:Z

    if-nez v9, :cond_5

    .line 192
    const/4 v9, 0x1

    sput-boolean v9, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->a:Z

    .line 193
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string v10, "AnalysedRunnableManager"

    invoke-interface {v9, v10, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .end local v1    # "recordListenerRefer":Ljava/lang/ref/WeakReference;
    .end local v7    # "recordListener":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    .end local v6    # "recordListeners":[Ljava/lang/ref/WeakReference;
    :cond_6
    if-eqz v5, :cond_7

    .line 200
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->reset()V

    .line 202
    :cond_7
    return-void

    .line 162
    .end local v5    # "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :cond_8
    :goto_2
    return-void
.end method

.method public static getRunnableInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;",
            ">;"
        }
    .end annotation

    .line 205
    const/4 v0, 0x0

    .local v0, "runnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 206
    move-object v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 207
    return-object v2

    .line 209
    :cond_0
    const/4 v1, 0x0

    .line 211
    .local v1, "runnableList":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x2000

    if-ge v3, v4, :cond_3

    .line 212
    aget-object v4, v0, v3

    .line 214
    .local v2, "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v2, v4

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->isRunning:Z

    if-eqz v4, :cond_2

    .line 217
    if-nez v1, :cond_1

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 220
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->fullClone()Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    move-result-object v4

    .line 221
    .local v4, "clonedInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v2    # "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .end local v4    # "clonedInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method public static isWorking()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->d:Z

    return v0
.end method

.method public static removeRecordListener(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;)Z
    .locals 6
    .param p0, "recordListener"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    .line 87
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    move-object v2, v1

    .line 88
    .local v2, "recordListeners":[Ljava/lang/ref/WeakReference;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 89
    return v3

    .line 91
    :cond_0
    const/4 v0, 0x0

    move-object v4, v1

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 92
    aget-object v5, v2, v0

    .line 94
    .local v4, "existListenerRefer":Ljava/lang/ref/WeakReference;
    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_1

    .line 95
    aput-object v1, v2, v0

    .line 96
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v4    # "existListenerRefer":Ljava/lang/ref/WeakReference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_2
    return v3
.end method

.method public static startRecord(Ljava/lang/String;)V
    .locals 12
    .param p0, "runnableName"    # Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    const/4 v1, 0x0

    move-object v2, v1

    .line 104
    .local v2, "runnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    .line 108
    .local v4, "tid":I
    move v4, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    sub-int/2addr v0, v5

    .line 110
    .local v3, "index":I
    move v3, v0

    if-ltz v0, :cond_6

    const/16 v0, 0x2000

    if-lt v3, v0, :cond_1

    goto/16 :goto_3

    .line 113
    :cond_1
    aget-object v0, v2, v3

    move-object v5, v1

    .line 115
    .local v5, "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v5, v0

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;-><init>()V

    move-object v5, v0

    .line 117
    aput-object v5, v2, v3

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->reset()V

    .line 121
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->isRunning:Z

    .line 122
    iput v4, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    .line 123
    iput-object p0, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadName:Ljava/lang/String;

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startRunningUptime:J

    .line 127
    sget-object v6, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    move-object v7, v1

    .line 128
    .local v7, "recordListeners":[Ljava/lang/ref/WeakReference;
    move-object v7, v6

    if-eqz v6, :cond_5

    .line 129
    const/4 v6, 0x0

    move v8, v6

    move-object v6, v1

    .local v8, "i":I
    :goto_1
    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    .line 130
    aget-object v9, v7, v8

    .line 131
    .local v1, "recordListenerRefer":Ljava/lang/ref/WeakReference;
    move-object v1, v9

    if-eqz v9, :cond_4

    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    .line 135
    .local v6, "recordListener":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;
    move-object v6, v9

    if-eqz v9, :cond_4

    .line 139
    :try_start_0
    invoke-interface {v6, v4, p0}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;->isTargetRecord(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->fullClone()Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    move-result-object v9

    .line 141
    .local v9, "clonedInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    invoke-interface {v6, v9}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;->onStartRecord(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v9    # "clonedInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :cond_3
    goto :goto_2

    .line 143
    :catchall_0
    move-exception v9

    .line 144
    .local v9, "t":Ljava/lang/Throwable;
    sget-boolean v10, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->a:Z

    if-nez v10, :cond_4

    .line 145
    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->a:Z

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    const-string v11, "AnalysedRunnableManager"

    invoke-interface {v10, v11, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v1    # "recordListenerRefer":Ljava/lang/ref/WeakReference;
    .end local v6    # "recordListener":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 151
    .end local v8    # "i":I
    :cond_5
    return-void

    .line 111
    .end local v5    # "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .end local v7    # "recordListeners":[Ljava/lang/ref/WeakReference;
    :cond_6
    :goto_3
    return-void
.end method

.method public static startWorking()V
    .locals 4

    .line 41
    const-class v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AnalysedRunnableManager"

    const-string/jumbo v3, "startWorking"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    if-nez v1, :cond_1

    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    if-nez v1, :cond_0

    .line 46
    const/16 v1, 0x2000

    new-array v1, v1, [Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    sput-object v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_3

    .line 51
    monitor-enter v0

    .line 52
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/ref/WeakReference;

    sput-object v1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    .line 55
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 57
    :cond_3
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->d:Z

    .line 58
    return-void
.end method

.method public static stopWorking()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->d:Z

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->b:[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 63
    sput-object v0, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->c:[Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 0
    .param p1, "runnableName"    # Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->endRecord(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0
    .param p1, "runnableName"    # Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->startRecord(Ljava/lang/String;)V

    .line 18
    return-void
.end method
