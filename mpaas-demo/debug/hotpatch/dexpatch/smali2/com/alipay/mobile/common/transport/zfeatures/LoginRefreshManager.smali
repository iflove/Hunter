.class public Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;
.super Ljava/lang/Object;
.source "LoginRefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;,
        Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;


# instance fields
.field private b:B

.field private c:I

.field private d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/common/transport/http/HttpWorker;",
            "Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private g:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    .line 34
    iput v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d:I

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 52
    return-void
.end method

.method private a()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d:I

    if-nez v0, :cond_1

    .line 141
    return-void

    .line 144
    :cond_1
    iput v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d:I

    .line 147
    const-string v0, "LoginRefreshManager"

    const-string/jumbo v1, "reseted"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/http/HttpWorker;)Z
    .locals 5
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 180
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isSwitchLoginRpc()Z

    move-result v0

    const-string v1, "LoginRefreshManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "loginRespSeq is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return v2

    .line 186
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 187
    return v2

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;

    const/4 v3, 0x0

    .line 190
    .local v3, "workSeqModel":Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;
    move-object v3, v0

    if-nez v0, :cond_2

    .line 191
    return v2

    .line 194
    :cond_2
    iget v0, v3, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;->seqNum:I

    iget v4, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    if-gt v0, v4, :cond_3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " checkIn it\'s false. API is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", loginRespSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rpcReqSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;->seqNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_3
    return v2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->f()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b()V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private b(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 3
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 202
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isSwitchLoginRpc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;-><init>(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d()V

    .line 207
    return-void
.end method

.method private c(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 1
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a()V

    .line 223
    return-void
.end method

.method private c()Z
    .locals 3

    .line 172
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 173
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 175
    :cond_1
    return v1
.end method

.method private d()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    new-instance v0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;

    invoke-direct {v0, p0, p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SafetyInspector;-><init>(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;)V

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 218
    :cond_1
    return-void
.end method

.method private e()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->d:I

    return v0
.end method

.method private f()V
    .locals 10

    const/4 v0, 0x0

    .line 231
    .local v0, "logBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 234
    return-void

    .line 236
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v1, "gclist":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 238
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;

    .line 239
    .local v4, "seqModel":Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;->getCreateTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x493e0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 240
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "seqModel":Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;
    :cond_1
    goto :goto_0

    .line 243
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 244
    return-void

    .line 246
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gcReqSeqMap.  The GC RPC are: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 248
    .local v3, "httpWorker":Lcom/alipay/mobile/common/transport/http/HttpWorker;
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    nop

    .end local v3    # "httpWorker":Lcom/alipay/mobile/common/transport/http/HttpWorker;
    goto :goto_1

    .line 252
    .end local v1    # "gclist":Ljava/util/List;
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 253
    nop

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoginRefreshManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 252
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;
    .locals 2

    .line 55
    sget-object v0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    if-eqz v0, :cond_0

    .line 56
    return-object v0

    .line 58
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    if-nez v1, :cond_1

    .line 60
    new-instance v1, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    .line 62
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    monitor-exit v0

    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkIn(Lcom/alipay/mobile/common/transport/http/HttpWorker;)Z
    .locals 4
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 98
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 99
    return v1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a(Lcom/alipay/mobile/common/transport/http/HttpWorker;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 103
    return v0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "LoginRefreshManager"

    const-string v3, "checkIn error. "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 108
    nop

    .line 109
    return v1

    .line 107
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public cleanMapAndReset()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public enableRefresh()V
    .locals 2

    .line 67
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iput-byte v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    .line 71
    const-string v0, "LoginRefreshManager"

    const-string v1, "enableRefresh. mEnabledLoginRefresh is 1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public isEnabledLoginRefresh(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->LOGIN_REFRESH_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "loginRefreshSwitch":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 78
    return v2

    .line 81
    :cond_0
    iget-byte v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    .line 82
    if-ne v1, v4, :cond_1

    return v4

    :cond_1
    return v2

    .line 85
    :cond_2
    const-string v1, "login_refresh_feature"

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getBooleanFromMetaData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 86
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isEnabledLoginRefresh. meta-data value : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LoginRefreshManager"

    invoke-static {v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v1, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    int-to-byte v3, v3

    :try_start_0
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "isEnabledLoginRefresh. mEnabledLoginRefresh : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v6, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return v1

    .line 91
    :catchall_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Throwable;
    const-string v6, "isEnabledLoginRefresh error"

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v3    # "e":Ljava/lang/Throwable;
    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b:B

    if-ne v3, v4, :cond_4

    return v4

    :cond_4
    return v2
.end method

.method public recordRpc(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 2
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 113
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->b(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public removeRecord(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 2
    .param p1, "httpWorker"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 125
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->c(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
