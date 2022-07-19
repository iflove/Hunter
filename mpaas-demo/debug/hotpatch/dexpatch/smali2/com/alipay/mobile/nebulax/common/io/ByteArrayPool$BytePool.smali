.class Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;
.super Landroidx/collection/LruCache;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BytePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/Integer;",
        "Ljava/util/LinkedList<",
        "[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->this$0:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    .line 135
    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;ILcom/alipay/mobile/nebulax/common/io/ByteArrayPool$1;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;-><init>(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "[B>;",
            "Ljava/util/LinkedList<",
            "[B>;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->this$0:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    # getter for: Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mSizeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->access$200(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 145
    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    .line 146
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->this$0:Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;

    # getter for: Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->access$300(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;)I

    move-result p4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    mul-int p2, p2, p3

    sub-int/2addr p4, p2

    # setter for: Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->mCurrentSize:I
    invoke-static {p1, p4}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;->access$302(Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool;I)I

    .line 148
    :cond_1
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/util/LinkedList;

    check-cast p4, Ljava/util/LinkedList;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulax/common/io/ByteArrayPool$BytePool;->entryRemoved(ZLjava/lang/Integer;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-void
.end method
