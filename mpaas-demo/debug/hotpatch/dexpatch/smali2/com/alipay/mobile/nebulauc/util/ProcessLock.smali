.class public Lcom/alipay/mobile/nebulauc/util/ProcessLock;
.super Ljava/lang/Object;
.source "ProcessLock.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ProcessLock"


# instance fields
.field private cacheLock:Ljava/nio/channels/FileLock;

.field private lockChannel:Ljava/nio/channels/FileChannel;

.field private lockFile:Ljava/io/File;

.field private lockRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "lockFile"    # Ljava/io/File;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockFilePath"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    .line 31
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5ProcessLock"

    const-string v2, "Failed to close resource"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 88
    :goto_1
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 4

    .line 39
    const-string v0, "H5ProcessLock"

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockRaf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    nop

    .line 45
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    if-nez v2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocking on lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->cacheLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    nop

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "lock error "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void

    .line 46
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock error lockRaf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " lockFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 40
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ProcessLock error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public unlock()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->cacheLock:Ljava/nio/channels/FileLock;

    const-string v1, "H5ProcessLock"

    if-eqz v0, :cond_1

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to release lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    .line 72
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lockFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unlocked"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_3
    return-void
.end method
