.class public Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$ConcurrentLinkedList;,
        Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;
    }
.end annotation


# instance fields
.field private final mBuffersFastCache:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;

.field private mCurrentSize:I

.field private final mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSizeLimit:I

.field private final mSizeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;-><init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;ILcom/alipay/mobile/nebulax/common/io/ByteArrayPool$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput v1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    .line 66
    iput p1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLimit:I

    .line 67
    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    return p0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    return p1
.end method

.method private trim()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    iget v1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLimit:I

    if-le v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->trimToSize(I)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mIsTriming:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method public getBuf(I)[B
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 76
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 79
    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget p1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    array-length v2, v0

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    .line 82
    monitor-exit v1

    .line 83
    return-object v0

    .line 82
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 87
    :cond_0
    new-array p1, p1, [B

    return-object p1
.end method

.method public returnBuf([B)V
    .locals 3

    .line 94
    if-eqz p1, :cond_2

    array-length v0, p1

    iget v1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLimit:I

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget v1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 104
    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$ConcurrentLinkedList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$ConcurrentLinkedList;-><init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$1;)V

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mBuffersFastCache:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->trim()V

    .line 113
    return-void

    .line 101
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 95
    :cond_2
    :goto_1
    return-void
.end method
