.class public Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;
.super Ljava/io/BufferedInputStream;
.source "RpcBufferedInputStream.java"


# instance fields
.field protected mReaded:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 18
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 62
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->count:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->pos:I

    return v0
.end method

.method public getReaded()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    .line 23
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    .line 24
    .local v0, "tmpmReaded":I
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 27
    .local v1, "tmpReaded":I
    iget v2, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    if-ne v0, v2, :cond_0

    .line 28
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;
    :cond_0
    monitor-exit p0

    return v1

    .line 22
    .end local v0    # "tmpmReaded":I
    .end local v1    # "tmpReaded":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B

    .line 35
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    const/4 v1, 0x0

    .line 42
    .local v1, "readed":I
    move v1, v0

    if-lez v0, :cond_0

    .line 43
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;
    :cond_0
    monitor-exit p0

    return v1

    .line 40
    .end local v1    # "readed":I
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
