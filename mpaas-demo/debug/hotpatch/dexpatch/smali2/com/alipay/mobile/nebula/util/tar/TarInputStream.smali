.class public Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
.super Ljava/io/FilterInputStream;
.source "TarInputStream.java"


# static fields
.field private static final SKIP_BUFFER_SIZE:I = 0x800


# instance fields
.field private bytesRead:J

.field private currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

.field private currentFileSize:J

.field private defaultSkip:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 22
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->defaultSkip:Z

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    .line 24
    iput-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->bytesRead:J

    .line 25
    return-void
.end method


# virtual methods
.method protected closeCurrentEntry()V
    .locals 10

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    .line 122
    const-wide/16 v0, 0x0

    move-wide v2, v4

    .line 123
    .local v0, "bs":J
    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v6, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    .line 124
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v6, v8

    sub-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->skip(J)J

    move-result-wide v6

    .line 127
    .local v2, "res":J
    move-wide v2, v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    .line 128
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-gtz v8, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Possible tar file corruption"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_1
    :goto_1
    add-long/2addr v0, v2

    .line 134
    .end local v2    # "res":J
    goto :goto_0

    .line 137
    .end local v0    # "bs":J
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    .line 138
    iput-wide v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->skipPad()V

    .line 141
    :cond_3
    return-void
.end method

.method public getCurrentOffset()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->bytesRead:J

    return-wide v0
.end method

.method public getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .locals 7

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->closeCurrentEntry()V

    .line 80
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v1

    .line 81
    .local v1, "header":[B
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 82
    .local v2, "theader":[B
    const/4 v3, 0x0

    .local v3, "tr":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 85
    :goto_0
    if-ge v3, v0, :cond_0

    .line 86
    rsub-int v6, v3, 0x200

    invoke-virtual {p0, v2, v4, v6}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([BII)I

    move-result v6

    .line 88
    .local v5, "res":I
    move v5, v6

    if-ltz v6, :cond_0

    .line 92
    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int/2addr v3, v5

    .line 94
    .end local v5    # "res":I
    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x1

    .line 98
    .local v0, "eof":Z
    array-length v5, v1

    :goto_1
    if-ge v4, v5, :cond_2

    aget-byte v6, v1, v4

    .line 99
    if-eqz v6, :cond_1

    .line 100
    const/4 v0, 0x0

    .line 101
    goto :goto_2

    .line 98
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 106
    new-instance v4, Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-direct {v4, v1}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;-><init>([B)V

    iput-object v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    .line 109
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 110
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 111
    iget-object v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    return-object v4
.end method

.method public isDefaultSkip()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->defaultSkip:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 34
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5

    .line 43
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 45
    .local v1, "buf":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([BII)I

    move-result v0

    move v3, v2

    .line 47
    .local v3, "res":I
    move v3, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 48
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 51
    :cond_0
    return v3
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 57
    iget-wide v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 64
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    const/4 v2, 0x0

    .line 66
    .local v2, "br":I
    move v2, v0

    if-eq v0, v1, :cond_3

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    if-eqz v0, :cond_2

    .line 68
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->currentFileSize:J

    .line 71
    :cond_2
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->bytesRead:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->bytesRead:J

    .line 74
    :cond_3
    return v2
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 38
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local p0    # "this":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultSkip(Z)V
    .locals 0
    .param p1, "defaultSkip"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->defaultSkip:Z

    .line 194
    return-void
.end method

.method public skip(J)J
    .locals 10
    .param p1, "n"    # J

    .line 159
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->defaultSkip:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 163
    .local v0, "bs":J
    iget-wide v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->bytesRead:J

    .line 165
    return-wide v0

    .line 168
    .end local v0    # "bs":J
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 169
    return-wide v0

    .line 172
    :cond_1
    move-wide v2, p1

    .line 173
    .local v2, "left":J
    const/16 v4, 0x800

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v4

    .local v4, "buffer":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 175
    :goto_0
    cmp-long v7, v2, v0

    if-lez v7, :cond_3

    .line 176
    const-wide/16 v7, 0x800

    cmp-long v9, v2, v7

    if-gez v9, :cond_2

    move-wide v7, v2

    :cond_2
    long-to-int v8, v7

    invoke-virtual {p0, v4, v5, v8}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([BII)I

    move-result v7

    .line 178
    .local v6, "res":I
    move v6, v7

    if-ltz v7, :cond_3

    .line 181
    int-to-long v7, v6

    sub-long/2addr v2, v7

    .line 182
    .end local v6    # "res":I
    goto :goto_0

    .line 183
    :cond_3
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 185
    sub-long v0, p1, v2

    return-wide v0
.end method

.method protected skipPad()V
    .locals 6

    .line 144
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->bytesRead:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 145
    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    .line 147
    .local v0, "extra":I
    move v0, v1

    if-lez v1, :cond_0

    .line 148
    const-wide/16 v1, 0x0

    .line 149
    .local v1, "bs":J
    :goto_0
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 150
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->skip(J)J

    move-result-wide v3

    .line 151
    .local v3, "res":J
    add-long/2addr v1, v3

    .line 152
    .end local v3    # "res":J
    goto :goto_0

    .line 155
    .end local v0    # "extra":I
    .end local v1    # "bs":J
    :cond_0
    return-void
.end method
