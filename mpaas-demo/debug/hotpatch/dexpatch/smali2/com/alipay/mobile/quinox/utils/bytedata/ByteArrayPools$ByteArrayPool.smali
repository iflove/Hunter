.class abstract Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;
.super Lcom/alipay/mobile/quinox/utils/Pool;
.source "ByteArrayPools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ByteArrayPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/quinox/utils/Pool<",
        "[B>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 14
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/quinox/utils/Pool;-><init>(II)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$1;

    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic free(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;->free([B)V

    return-void
.end method

.method public declared-synchronized free([B)V
    .locals 0
    .param p1, "object"    # [B

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/utils/Pool;->free(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 23
    .end local p0    # "this":Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;
    .end local p1    # "object":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;->obtain()[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized obtain()[B
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/quinox/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 19
    .end local p0    # "this":Lcom/alipay/mobile/quinox/utils/bytedata/ByteArrayPools$ByteArrayPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
