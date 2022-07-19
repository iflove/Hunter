.class public Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;
.super Ljava/lang/Object;
.source "TaskStatusAnalysis.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;

.field private f:[[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

.field private g:Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    .line 33
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->e:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;

    .line 34
    const/16 v0, 0x2000

    new-array v0, v0, [[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->f:[[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 36
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$1;-><init>(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->g:Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    .line 60
    if-nez p1, :cond_0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->b:Ljava/lang/String;

    .line 61
    if-nez p2, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->c:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method private a()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis$2;-><init>(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    .locals 8
    .param p1, "runningRunnableInfo"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .param p2, "isManual"    # Z

    .line 158
    iget v0, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 159
    .local v1, "threadIndex":I
    move v1, v0

    if-ltz v0, :cond_9

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    goto :goto_5

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->f:[[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    aget-object v2, v0, v1

    .line 163
    .local v2, "threadRunnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    const/4 v3, -0x1

    .line 165
    .local v3, "infoIndex":I
    const/16 v4, 0x40

    if-nez v2, :cond_1

    .line 166
    new-array v2, v4, [Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 167
    aput-object v2, v0, v1

    .line 168
    const/4 v3, 0x0

    goto :goto_1

    .line 171
    :cond_1
    const/16 v0, 0x3f

    .local v0, "i":I
    const/4 v5, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 172
    aget-object v6, v2, v0

    .line 173
    .local v5, "threadRunnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v5, v6

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 177
    :cond_2
    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 171
    .end local v5    # "threadRunnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_4
    :goto_1
    if-ltz v3, :cond_8

    if-lt v3, v4, :cond_5

    goto :goto_4

    .line 185
    :cond_5
    aput-object p1, v2, v3

    .line 187
    if-eqz p2, :cond_6

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_2

    :cond_6
    iget-wide v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startRunningUptime:J

    :goto_2
    iput-wide v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startAnalysisUptime:J

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->e:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;

    iget v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;->getSnapshot(I)Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 190
    iget-object v0, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    iget-object v4, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startThreadName:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->name:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    iput v0, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    .line 192
    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x3

    :goto_3
    iput v0, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    .line 193
    return-void

    .line 183
    :cond_8
    :goto_4
    return-void

    .line 160
    .end local v2    # "threadRunnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .end local v3    # "infoIndex":I
    :cond_9
    :goto_5
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;
    .param p1, "x1"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .param p2, "x2"    # Z

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;
    .param p1, "x1"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .param p2, "x2"    # Z

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->b(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;

    .line 22
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    return v0
.end method

.method private b(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    .locals 11
    .param p1, "runningRunnableInfo"    # Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .param p2, "isManual"    # Z

    .line 196
    iget v0, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 197
    .local v1, "index":I
    move v1, v0

    if-ltz v0, :cond_7

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    goto/16 :goto_3

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->f:[[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 201
    .local v3, "threadRunnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 202
    return-void

    .line 204
    :cond_1
    const/16 v0, 0x3f

    move-object v4, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 205
    aget-object v5, v3, v0

    .line 206
    .local v4, "threadRunnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v4, v5

    if-eqz v5, :cond_5

    .line 209
    iget-object v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    iget v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    if-ne v5, v6, :cond_4

    .line 210
    iget-wide v7, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    iput-wide v7, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    .line 211
    if-eqz p2, :cond_2

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    goto :goto_1

    :cond_2
    iget-wide v7, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endRunningUptime:J

    :goto_1
    iput-wide v7, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endAnalysisUptime:J

    .line 214
    iget-wide v7, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endAnalysisUptime:J

    iget-wide v9, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->startAnalysisUptime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x32

    cmp-long v5, v7, v9

    if-lez v5, :cond_4

    .line 215
    iget-object v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->e:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;

    iget v7, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->tid:I

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;->getSnapshot(I)Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 216
    iget-object v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadSnapshot:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    iget-object v7, p1, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->endThreadName:Ljava/lang/String;

    iput-object v7, v5, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->name:Ljava/lang/String;

    .line 217
    const/4 v5, 0x2

    iput v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    .line 219
    iget v7, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    if-ne v7, v6, :cond_3

    .line 220
    if-eqz p2, :cond_4

    .line 221
    iput v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    goto :goto_2

    .line 223
    :cond_3
    iget v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    .line 224
    if-eqz p2, :cond_4

    .line 225
    const/4 v5, 0x4

    iput v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->uptimeType:I

    .line 230
    :cond_4
    :goto_2
    iget v5, v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->analysisType:I

    if-ne v5, v6, :cond_6

    .line 231
    aput-object v2, v3, v0

    return-void

    .line 204
    .end local v4    # "threadRunnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_6
    return-void

    .line 198
    .end local v3    # "threadRunnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :cond_7
    :goto_3
    return-void
.end method

.method public static convertToMdapString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "parcelString"    # Ljava/lang/String;

    .line 325
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x2c

    const/16 v1, 0x26

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parcelToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p0, "collections"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 286
    return-object v0

    .line 289
    :cond_0
    const/4 v1, 0x0

    .line 290
    .local v1, "buffer":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 291
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 292
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v4, "runnableInfos":Ljava/util/List;
    const-string v5, ","

    if-nez v1, :cond_1

    .line 295
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_1
    const-string/jumbo v6, "{\"tasks\":["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 302
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;->parcelString()Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "string":Ljava/lang/String;
    if-lez v6, :cond_2

    .line 304
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    nop

    .end local v7    # "string":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 308
    .end local v6    # "i":I
    :cond_3
    const-string v5, "]}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "runnableInfos":Ljava/util/List;
    goto :goto_0

    .line 310
    :cond_4
    if-eqz v1, :cond_5

    .line 311
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 315
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 316
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TaskStatusAnalysis"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    return-object v0
.end method


# virtual methods
.method public collectAnalysis()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;",
            ">;>;"
        }
    .end annotation

    .line 241
    iget v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 242
    return-object v1

    .line 244
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "analysisRunnableInfoSS":Ljava/util/Map;
    const/4 v2, -0x1

    .line 249
    .local v2, "pid":I
    const/4 v3, 0x0

    move v4, v3

    move v3, v2

    move-object v2, v1

    .end local v2    # "pid":I
    .local v3, "pid":I
    .local v4, "threadIndex":I
    :goto_0
    const/16 v5, 0x2000

    if-ge v4, v5, :cond_5

    .line 250
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->f:[[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    aget-object v5, v5, v4

    .line 251
    .local v1, "threadRunnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v1, v5

    if-eqz v5, :cond_4

    .line 254
    if-gez v3, :cond_1

    .line 255
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    move v3, v5

    .line 257
    :cond_1
    add-int v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 258
    .local v5, "tid":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 260
    .local v6, "analysisRunnableInfos":Ljava/util/List;
    const/4 v7, 0x0

    .local v7, "infoIndex":I
    :goto_1
    const/16 v8, 0x40

    if-ge v7, v8, :cond_4

    .line 261
    aget-object v8, v1, v7

    .line 262
    .local v2, "threadRunnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    move-object v2, v8

    if-eqz v8, :cond_4

    .line 265
    if-nez v0, :cond_2

    .line 266
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v0, v8

    .line 268
    :cond_2
    if-nez v6, :cond_3

    .line 269
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v8

    .line 270
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_3
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    nop

    .end local v2    # "threadRunnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 249
    .end local v1    # "threadRunnableInfos":[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .end local v5    # "tid":Ljava/lang/Integer;
    .end local v6    # "analysisRunnableInfos":Ljava/util/List;
    .end local v7    # "infoIndex":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    .end local v4    # "threadIndex":I
    :catchall_0
    move-exception v1

    .line 276
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v4, "TaskStatusAnalysis"

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 277
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_5
    nop

    .line 278
    :goto_2
    return-object v0
.end method

.method public destroySelf()V
    .locals 3

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->b:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->c:Landroid/os/Handler;

    .line 70
    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->e:Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;

    .line 71
    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->f:[[Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;

    .line 72
    iget v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->g:Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->removeRecordListener(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;)Z

    .line 75
    :cond_0
    iput-object v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->g:Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    .line 76
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "TaskStatusAnalysis"

    const-string v2, "destroySelf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public endAnalysis()V
    .locals 7

    const-string v0, "TaskStatusAnalysis"

    .line 129
    iget v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->g:Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->removeRecordListener(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;)Z

    .line 136
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->getRunnableInfos()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 137
    .local v2, "runnableInfos":Ljava/util/List;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 138
    return-void

    .line 140
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    .local v3, "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->b(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v5

    .line 145
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-boolean v6, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->d:Z

    if-nez v6, :cond_2

    .line 146
    iput-boolean v4, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->d:Z

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v3    # "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    goto :goto_0

    .line 151
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "endAnalysis"

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    .end local v2    # "runnableInfos":Ljava/util/List;
    return-void

    .line 152
    :catchall_1
    move-exception v1

    .line 153
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public startAnalysis()V
    .locals 7

    const-string v0, "TaskStatusAnalysis"

    .line 84
    iget v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a:I

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->g:Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;

    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->addRecordListener(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager$RecordListener;)Z

    .line 91
    invoke-static {}, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableManager;->getRunnableInfos()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .line 92
    .local v3, "runnableInfos":Ljava/util/List;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a()V

    .line 93
    return-void

    .line 95
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .local v4, "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    :try_start_2
    invoke-direct {p0, v4, v2}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a(Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v5

    .line 100
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-boolean v6, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->d:Z

    if-nez v6, :cond_2

    .line 101
    iput-boolean v2, p0, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->d:Z

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .end local v4    # "runnableInfo":Lcom/alipay/mobile/framework/pipeline/analysis/AnalysedRunnableInfo;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    goto :goto_0

    .line 109
    .end local v3    # "runnableInfos":Ljava/util/List;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a()V

    .line 110
    return-void

    .line 106
    :catchall_1
    move-exception v1

    .line 107
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 109
    :catchall_2
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/TaskStatusAnalysis;->a()V

    throw v0
.end method
