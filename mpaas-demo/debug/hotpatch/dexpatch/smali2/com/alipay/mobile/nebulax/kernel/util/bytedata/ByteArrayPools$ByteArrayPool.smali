.class abstract Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArrayPool;
.super Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;
.source "ByteArrayPools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ByteArrayPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool<",
        "[B>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 7
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;-><init>(II)V

    .line 8
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArrayPool;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-void
.end method

.method public declared-synchronized free([B)V
    .locals 0

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->free(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized obtain()[B
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
