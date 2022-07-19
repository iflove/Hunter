.class Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;
.super Ljava/lang/Object;
.source "ExternalStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessLock"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ExternalStorageUtil.ProcessLock"


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Ljava/nio/channels/FileChannel;

.field private d:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "lockFile"    # Ljava/io/File;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->a:Ljava/io/File;

    .line 179
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockFilePath"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->a:Ljava/io/File;

    .line 175
    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 218
    if-eqz p0, :cond_0

    .line 219
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExternalStorageUtil.ProcessLock"

    const-string v3, "Failed to close resource"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 223
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method lock()V
    .locals 4

    .line 183
    const-string v0, "ExternalStorageUtil.ProcessLock"

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->a:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->b:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    nop

    .line 189
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->a:Ljava/io/File;

    if-nez v2, :cond_0

    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lock error lockRaf = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lockFile = null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->c:Ljava/nio/channels/FileChannel;

    .line 196
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->d:Ljava/nio/channels/FileLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "lock error "

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ProcessLock error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-void
.end method

.method unlock()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->d:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to release lock on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->a:Ljava/io/File;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalStorageUtil.ProcessLock"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->c:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    .line 211
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->a(Ljava/io/Closeable;)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->b:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->a(Ljava/io/Closeable;)V

    .line 214
    return-void
.end method
