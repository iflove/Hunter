.class public Lcom/alipay/mobile/quinox/utils/TimingLogger;
.super Ljava/lang/Object;
.source "TimingLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;
    }
.end annotation


# static fields
.field private static sBootLogger:Lcom/alipay/mobile/quinox/utils/TimingLogger;

.field private static sPreLaunchLogger:Lcom/alipay/mobile/quinox/utils/TimingLogger;


# instance fields
.field private mLabel:Ljava/lang/String;

.field mSplitLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mSplits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field mThreadNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 278
    new-instance v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;

    const-string v1, "BootPerformance"

    const-string v2, "Startup"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->sBootLogger:Lcom/alipay/mobile/quinox/utils/TimingLogger;

    .line 283
    new-instance v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;

    const-string v1, "PreLaunchPerformance"

    const-string v2, "PreLaunch"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->sPreLaunchLogger:Lcom/alipay/mobile/quinox/utils/TimingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static getBootLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;
    .locals 1

    .line 280
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->sBootLogger:Lcom/alipay/mobile/quinox/utils/TimingLogger;

    return-object v0
.end method

.method public static getPreLaunchLogger()Lcom/alipay/mobile/quinox/utils/TimingLogger;
    .locals 1

    .line 286
    sget-object v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->sPreLaunchLogger:Lcom/alipay/mobile/quinox/utils/TimingLogger;

    return-object v0
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 265
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "applog"    # Z

    .line 268
    if-eqz p3, :cond_0

    .line 270
    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method


# virtual methods
.method public addSplit(Ljava/lang/String;)V
    .locals 8
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 136
    .local v0, "now":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x0

    .line 137
    .local v3, "current":Ljava/lang/Thread;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 138
    .local v4, "id":J
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mThreadNames:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    if-eqz p1, :cond_2

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v0    # "now":J
    .end local v3    # "current":Ljava/lang/Thread;
    .end local v4    # "id":J
    :cond_2
    return-void

    .line 151
    :catchall_0
    move-exception v0

    .line 154
    return-void
.end method

.method public addSplitSpecfic(Ljava/lang/String;)V
    .locals 7
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 162
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 164
    .local v0, "now":J
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mThreadNames:Ljava/util/Map;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "main"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->log(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v0    # "now":J
    return-void

    .line 175
    :catchall_0
    move-exception v0

    .line 178
    return-void
.end method

.method public dumpSeperately()V
    .locals 18

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": begin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mThreadNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 245
    .local v4, "id":Ljava/lang/Long;
    iget-object v5, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mThreadNames:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    .local v5, "threadName":Ljava/lang/String;
    iget-object v6, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Thread, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v6, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 248
    .local v6, "threadSplits":Ljava/util/ArrayList;
    iget-object v7, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 249
    .local v7, "threadSplitLabels":Ljava/util/ArrayList;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 250
    .local v2, "first":J
    move-wide v2, v8

    .line 251
    .local v8, "now":J
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 252
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 253
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 254
    .local v11, "splitLabel":Ljava/lang/String;
    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 256
    .local v12, "prev":J
    iget-object v14, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":      "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v4

    move-object/from16 v17, v5

    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "threadName":Ljava/lang/String;
    .local v1, "id":Ljava/lang/Long;
    .local v17, "threadName":Ljava/lang/String;
    sub-long v4, v8, v12

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v14, v4}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v11    # "splitLabel":Ljava/lang/String;
    .end local v12    # "prev":J
    add-int/lit8 v10, v10, 0x1

    move-object v4, v1

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    goto :goto_1

    .end local v1    # "id":Ljava/lang/Long;
    .end local v17    # "threadName":Ljava/lang/String;
    .restart local v4    # "id":Ljava/lang/Long;
    .restart local v5    # "threadName":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v1

    move-object v1, v4

    move-object/from16 v17, v5

    .line 258
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "threadName":Ljava/lang/String;
    .end local v10    # "i":I
    .restart local v1    # "id":Ljava/lang/Long;
    .restart local v17    # "threadName":Ljava/lang/String;
    iget-object v4, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": end, "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v8, v2

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "first":J
    .end local v6    # "threadSplits":Ljava/util/ArrayList;
    .end local v7    # "threadSplitLabels":Ljava/util/ArrayList;
    .end local v8    # "now":J
    .end local v17    # "threadName":Ljava/lang/String;
    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method public dumpTogether()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 181
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v3, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 184
    iget-object v6, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 185
    nop

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 186
    new-instance v7, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;-><init>(Lcom/alipay/mobile/quinox/utils/TimingLogger$1;)V

    .line 187
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;->stamp:J

    .line 188
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;->id:J

    .line 189
    iput v5, v7, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;->index:I

    .line 190
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 192
    :cond_0
    goto :goto_0

    .line 195
    :cond_1
    new-instance v3, Lcom/alipay/mobile/quinox/utils/TimingLogger$1;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/quinox/utils/TimingLogger$1;-><init>(Lcom/alipay/mobile/quinox/utils/TimingLogger;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 203
    nop

    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;

    .line 205
    iget-wide v7, v6, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;->id:J

    .line 206
    iget v6, v6, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;->index:I

    .line 207
    iget-object v9, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 208
    iget-object v10, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 211
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 213
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 214
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    add-int/lit8 v14, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v14

    .line 216
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_3
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v15, v5, :cond_3

    .line 218
    const-string v5, "      "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v5, 0x0

    goto :goto_3

    .line 221
    :cond_3
    if-nez v6, :cond_4

    .line 222
    iget-object v5, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mThreadNames:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin:"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    if-eqz v10, :cond_5

    .line 224
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 227
    :cond_4
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v5, v6, -0x1

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v11, v7

    .line 229
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    const-string v5, " ms."

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_5
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v6, v5, :cond_6

    .line 235
    const-string v5, "end, "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v11, v6

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 233
    :cond_6
    const/4 v5, 0x0

    .line 237
    :goto_5
    iget-object v6, v0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    goto/16 :goto_2

    .line 239
    :cond_7
    return-object v1
.end method

.method public reset()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplits:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mThreadNames:Ljava/util/Map;

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mSplitLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mThreadNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 123
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mTag:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/alipay/mobile/quinox/utils/TimingLogger;->mLabel:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/TimingLogger;->reset()V

    .line 103
    return-void
.end method
