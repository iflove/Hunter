.class public Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;
.super Ljava/io/FilterInputStream;
.source "TarInputStream.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 20
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->d:Z

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    .line 22
    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->c:J

    .line 23
    return-void
.end method


# virtual methods
.method protected closeCurrentEntry()V
    .locals 10

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    .line 118
    const-wide/16 v0, 0x0

    move-wide v2, v4

    .line 119
    .local v0, "bs":J
    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    sub-long/2addr v6, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    .line 120
    iget-object v6, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    sub-long/2addr v6, v8

    sub-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->skip(J)J

    move-result-wide v6

    .line 123
    .local v2, "res":J
    move-wide v2, v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    .line 124
    invoke-virtual {v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    sub-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-gtz v8, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Possible tar file corruption"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_1
    :goto_1
    add-long/2addr v0, v2

    .line 130
    .end local v2    # "res":J
    goto :goto_0

    .line 133
    .end local v0    # "bs":J
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    .line 134
    iput-wide v4, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->skipPad()V

    .line 137
    :cond_3
    return-void
.end method

.method public getCurrentOffset()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->c:J

    return-wide v0
.end method

.method public getNextEntry()Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;
    .locals 7

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->closeCurrentEntry()V

    .line 78
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 79
    .local v1, "header":[B
    new-array v2, v0, [B

    .line 80
    .local v2, "theader":[B
    const/4 v3, 0x0

    .local v3, "tr":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 83
    :goto_0
    if-ge v3, v0, :cond_0

    .line 84
    rsub-int v6, v3, 0x200

    invoke-virtual {p0, v2, v4, v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->read([BII)I

    move-result v6

    .line 86
    .local v5, "res":I
    move v5, v6

    if-ltz v6, :cond_0

    .line 90
    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/2addr v3, v5

    .line 92
    .end local v5    # "res":I
    goto :goto_0

    .line 95
    :cond_0
    const/4 v5, 0x1

    .line 96
    .local v5, "eof":Z
    nop

    :goto_1
    if-ge v4, v0, :cond_2

    aget-byte v6, v1, v4

    .line 97
    if-eqz v6, :cond_1

    .line 98
    const/4 v5, 0x0

    .line 99
    goto :goto_2

    .line 96
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 104
    new-instance v0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    return-object v0
.end method

.method public isDefaultSkip()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->d:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5

    .line 41
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 43
    .local v1, "buf":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->read([BII)I

    move-result v0

    move v3, v2

    .line 45
    .local v3, "res":I
    move v3, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 46
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 49
    :cond_0
    return v3
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 55
    iget-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    sub-long/2addr v2, v4

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 62
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    const/4 v2, 0x0

    .line 64
    .local v2, "br":I
    move v2, v0

    if-eq v0, v1, :cond_3

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->a:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    if-eqz v0, :cond_2

    .line 66
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->b:J

    .line 69
    :cond_2
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->c:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->c:J

    .line 72
    :cond_3
    return v2
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local p0    # "this":Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultSkip(Z)V
    .locals 0
    .param p1, "defaultSkip"    # Z

    .line 188
    iput-boolean p1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->d:Z

    .line 189
    return-void
.end method

.method public skip(J)J
    .locals 10
    .param p1, "n"    # J

    .line 155
    iget-boolean v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->d:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 159
    .local v0, "bs":J
    iget-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->c:J

    .line 161
    return-wide v0

    .line 164
    .end local v0    # "bs":J
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 165
    return-wide v0

    .line 168
    :cond_1
    move-wide v2, p1

    .line 169
    .local v2, "left":J
    const/16 v4, 0x800

    new-array v4, v4, [B

    .local v4, "sBuff":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 171
    :goto_0
    cmp-long v7, v2, v0

    if-lez v7, :cond_3

    .line 172
    const-wide/16 v7, 0x800

    cmp-long v9, v2, v7

    if-gez v9, :cond_2

    move-wide v7, v2

    :cond_2
    long-to-int v8, v7

    invoke-virtual {p0, v4, v5, v8}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->read([BII)I

    move-result v7

    .line 174
    .local v6, "res":I
    move v6, v7

    if-ltz v7, :cond_3

    .line 177
    int-to-long v7, v6

    sub-long/2addr v2, v7

    .line 178
    .end local v6    # "res":I
    goto :goto_0

    .line 180
    :cond_3
    sub-long v0, p1, v2

    return-wide v0
.end method

.method protected skipPad()V
    .locals 6

    .line 140
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 141
    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    .line 143
    .local v0, "extra":I
    move v0, v1

    if-lez v1, :cond_0

    .line 144
    const-wide/16 v1, 0x0

    .line 145
    .local v1, "bs":J
    :goto_0
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 146
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->skip(J)J

    move-result-wide v3

    .line 147
    .local v3, "res":J
    add-long/2addr v1, v3

    .line 148
    .end local v3    # "res":J
    goto :goto_0

    .line 151
    .end local v0    # "extra":I
    .end local v1    # "bs":J
    :cond_0
    return-void
.end method
