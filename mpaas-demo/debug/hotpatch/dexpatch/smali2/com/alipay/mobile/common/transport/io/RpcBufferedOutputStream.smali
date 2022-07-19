.class public Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "RpcBufferedOutputStream.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 16
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->a:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->a:I

    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 26
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 24
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;
    .end local p1    # "oneByte":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 38
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 32
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 30
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/io/RpcBufferedOutputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
