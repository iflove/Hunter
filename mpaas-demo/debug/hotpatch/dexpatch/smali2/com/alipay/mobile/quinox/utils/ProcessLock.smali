.class public Lcom/alipay/mobile/quinox/utils/ProcessLock;
.super Ljava/lang/Object;
.source "ProcessLock.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProcessLock"


# instance fields
.field private cacheLock:Ljava/nio/channels/FileLock;

.field private lockChannel:Ljava/nio/channels/FileChannel;

.field private lockFile:Ljava/io/File;

.field private lockRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "lockFile"    # Ljava/io/File;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockFile:Ljava/io/File;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockFilePath"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockFile:Ljava/io/File;

    .line 24
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ProcessLock"

    const-string v2, "Failed to close resource"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 73
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 4

    .line 32
    const-string v0, "ProcessLock"

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockFile:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockRaf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    nop

    .line 38
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockFile:Ljava/io/File;

    if-nez v2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;

    .line 45
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->cacheLock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "lock error "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void

    .line 39
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lock error lockRaf = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " lockFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ProcessLock error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public unlock()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->cacheLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to release lock on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockFile:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessLock"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    .line 61
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lockRaf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->closeQuietly(Ljava/io/Closeable;)V

    .line 64
    return-void
.end method
