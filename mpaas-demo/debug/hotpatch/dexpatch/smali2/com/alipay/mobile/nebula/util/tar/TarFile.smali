.class public Lcom/alipay/mobile/nebula/util/tar/TarFile;
.super Ljava/lang/Object;
.source "TarFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1

.field private static final SKIP_BUFFER_SIZE:I = 0x800

.field public static final TAG:Ljava/lang/String; = "TarFile"


# instance fields
.field private byteBuffer:Ljava/nio/MappedByteBuffer;

.field private bytesRead:J

.field private currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

.field private currentFileSize:J

.field private fileToDeleteOnClose:Ljava/io/File;

.field private final filename:Ljava/lang/String;

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->filename:Ljava/lang/String;

    .line 40
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    .line 48
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 54
    :goto_1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->raf:Ljava/io/RandomAccessFile;

    .line 56
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->byteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "TarFile"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .end local v0    # "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->byteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->byteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/tar/TarFile;-><init>(Ljava/io/File;I)V

    .line 36
    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 99
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tar file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->raf:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    move-object v2, v1

    .line 81
    .local v2, "localRaf":Ljava/io/RandomAccessFile;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 82
    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->byteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 85
    iput-object v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->raf:Ljava/io/RandomAccessFile;

    .line 86
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 90
    iput-object v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->fileToDeleteOnClose:Ljava/io/File;

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 93
    :cond_0
    :goto_0
    return-void
.end method

.method protected closeCurrentEntry()V
    .locals 10

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    if-nez v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    .line 172
    const-wide/16 v0, 0x0

    move-wide v2, v4

    .line 173
    .local v0, "bs":J
    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    sub-long/2addr v6, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_3

    .line 174
    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    sub-long/2addr v6, v8

    sub-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->skip(J)J

    move-result-wide v6

    .line 175
    .local v2, "res":J
    move-wide v2, v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_2

    iget-object v6, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    sub-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-gtz v8, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Possible tar file corruption"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_2
    :goto_1
    add-long/2addr v0, v2

    .line 181
    .end local v2    # "res":J
    goto :goto_0

    .line 184
    .end local v0    # "bs":J
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    .line 185
    iput-wide v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    .line 187
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->skipPad()V

    .line 188
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 72
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .locals 5

    .line 138
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->checkNotClosed()V

    .line 140
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->closeCurrentEntry()V

    .line 142
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v1

    .line 144
    .local v1, "header":[B
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->byteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v1, v2, v0}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "TarFile"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :goto_0
    const/4 v0, 0x1

    .line 151
    .local v0, "eof":Z
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v4, v1, v2

    .line 152
    if-eqz v4, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 154
    goto :goto_2

    .line 151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 159
    new-instance v2, Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;-><init>([B)V

    iput-object v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    .line 162
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    return-object v2
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B

    .line 102
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .line 106
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->checkNotClosed()V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 109
    iget-wide v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 110
    return v1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    sub-long/2addr v2, v4

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 116
    :cond_1
    move v0, p3

    .line 118
    .local v0, "readed":I
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->byteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "TarFile"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v0, -0x1

    .line 125
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :goto_0
    if-eq v0, v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentEntry:Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    if-eqz v1, :cond_2

    .line 127
    iget-wide v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->currentFileSize:J

    .line 129
    :cond_2
    iget-wide v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->bytesRead:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->bytesRead:J

    .line 134
    return p3

    .line 131
    :cond_3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public skip(J)J
    .locals 10
    .param p1, "n"    # J

    .line 206
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 207
    return-wide v0

    .line 210
    :cond_0
    const/16 v2, 0x800

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 211
    .local v2, "buffer":[B
    move-wide v3, p1

    .local v3, "left":J
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 212
    :goto_0
    cmp-long v7, v3, v0

    if-lez v7, :cond_2

    .line 213
    const-wide/16 v7, 0x800

    cmp-long v9, v3, v7

    if-gez v9, :cond_1

    move-wide v7, v3

    :cond_1
    long-to-int v8, v7

    invoke-virtual {p0, v2, v5, v8}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->read([BII)I

    move-result v7

    .line 214
    .local v6, "res":I
    move v6, v7

    if-ltz v7, :cond_2

    .line 217
    int-to-long v7, v6

    sub-long/2addr v3, v7

    .line 218
    .end local v6    # "res":I
    goto :goto_0

    .line 219
    :cond_2
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 221
    sub-long v0, p1, v3

    return-wide v0
.end method

.method protected skipPad()V
    .locals 6

    .line 191
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/util/tar/TarFile;->bytesRead:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    .line 195
    .local v0, "extra":I
    move v0, v1

    if-gtz v1, :cond_1

    .line 196
    return-void

    .line 198
    :cond_1
    const-wide/16 v1, 0x0

    .line 199
    .local v1, "bs":J
    :goto_0
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 200
    rsub-int v3, v0, 0x200

    int-to-long v3, v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->skip(J)J

    move-result-wide v3

    .line 201
    .local v3, "res":J
    add-long/2addr v1, v3

    .line 202
    .end local v3    # "res":J
    goto :goto_0

    .line 203
    :cond_2
    return-void
.end method
