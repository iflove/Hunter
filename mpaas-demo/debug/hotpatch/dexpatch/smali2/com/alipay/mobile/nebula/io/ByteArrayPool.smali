.class public Lcom/alipay/mobile/nebula/io/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;,
        Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ByteArrayPool"


# instance fields
.field private final mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

.field private mCurrentSize:I

.field private mEnabled:Z

.field private final mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSizeLimit:I

.field private final mSizeLock:Ljava/lang/Object;

.field private mTotallyReusedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "sizeLimit"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;ILcom/alipay/mobile/nebula/io/ByteArrayPool$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    .line 59
    iput v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    .line 62
    sget-boolean v0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    .line 68
    iput p1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLimit:I

    .line 69
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v1, v2

    .line 70
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "h5_enableByteArrayPool"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "YES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebula/io/ByteArrayPool;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    .line 43
    iget v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebula/io/ByteArrayPool;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/io/ByteArrayPool;
    .param p1, "x1"    # I

    .line 43
    iput p1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    return p1
.end method

.method private trim()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    iget v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLimit:I

    if-le v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->trimToSize(I)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method public getBuf(I)[B
    .locals 8

    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    if-nez v0, :cond_0

    .line 80
    new-array p1, p1, [B

    return-object p1

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    iget-object v2, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 89
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 92
    if-eqz v2, :cond_2

    .line 93
    iget-object v5, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 94
    :try_start_0
    iget v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    array-length v7, v2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    .line 95
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-boolean v5, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 97
    iget v5, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    array-length v6, v2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 99
    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    .line 100
    const-string v0, "ByteArrayPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "(debug only) reuse pool: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mTotallyReusedSize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") use time: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    return-object v2

    .line 95
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 109
    :cond_2
    sget-boolean v2, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 111
    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    .line 112
    const-string v0, "ByteArrayPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(debug only) new byte, use time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_3
    new-array p1, p1, [B

    return-object p1
.end method

.method public returnBuf([B)V
    .locals 10
    .param p1, "buf"    # [B

    .line 122
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mEnabled:Z

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    if-eqz p1, :cond_4

    array-length v0, p1

    iget v1, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLimit:I

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    iget v3, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    array-length v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mCurrentSize:I

    .line 136
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v3, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 139
    .local v2, "bufsMatchSize":Ljava/util/LinkedList;
    move-object v2, v3

    if-nez v3, :cond_2

    .line 140
    new-instance v3, Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$ConcurrentLinkedList;-><init>(Lcom/alipay/mobile/nebula/io/ByteArrayPool;Lcom/alipay/mobile/nebula/io/ByteArrayPool$1;)V

    .line 141
    move-object v2, v3

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 142
    iget-object v3, p0, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/nebula/io/ByteArrayPool$BytePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->trim()V

    .line 148
    sget-boolean v3, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    .line 150
    .local v7, "elapsed":J
    move-wide v7, v3

    cmp-long v9, v3, v5

    if-lez v9, :cond_3

    .line 151
    const-string v3, "ByteArrayPool"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(debug only) return use time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v7    # "elapsed":J
    :cond_3
    return-void

    .line 136
    .end local v2    # "bufsMatchSize":Ljava/util/LinkedList;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 127
    .end local v0    # "start":J
    :cond_4
    :goto_1
    return-void
.end method
