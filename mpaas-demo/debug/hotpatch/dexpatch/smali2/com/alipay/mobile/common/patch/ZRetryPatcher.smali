.class public Lcom/alipay/mobile/common/patch/ZRetryPatcher;
.super Lcom/alipay/mobile/common/patch/BasePatcher;
.source "ZRetryPatcher.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/common/transport/TransportCallback;

.field private c:Lcom/alipay/mobile/common/transport/TransportCallback;

.field protected mNewFileDownloadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field protected mPatchDownloadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field patchTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFileUrl"    # Ljava/lang/String;
    .param p3, "newFilePath"    # Ljava/lang/String;
    .param p4, "oldFilePath"    # Ljava/lang/String;
    .param p5, "patchFileUrl"    # Ljava/lang/String;
    .param p6, "newFileMD5"    # Ljava/lang/String;
    .param p7, "patchFileMD5"    # Ljava/lang/String;
    .param p8, "callBack"    # Lcom/alipay/mobile/common/patch/PatchCallBack;

    .line 29
    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/patch/BasePatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    .line 23
    iput-object v0, v8, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    .line 50
    new-instance v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher$1;-><init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V

    iput-object v0, v8, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->patchTask:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher$2;-><init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V

    iput-object v0, v8, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 160
    new-instance v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher$3;-><init>(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)V

    iput-object v0, v8, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->c:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 31
    move-object v0, p2

    iput-object v0, v8, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ZRetryPatcher"

    const-string v3, "ZRetryPatcher init"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 4
    .param p1, "callBack"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadNewFile url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZRetryPatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->onFail(I)V

    .line 110
    return-void

    .line 112
    :cond_0
    const-string v0, "downloadNewFile-Start-ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "start downloadNewFile..."

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    move-object v1, v3

    .line 115
    .local v1, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUseEtag(Z)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    .line 118
    return-void
.end method

.method private a()Z
    .locals 3

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ZRetryPatcher"

    const-string/jumbo v2, "verifyNewFileMD5..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    return v1

    .line 208
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "newFile":Ljava/io/File;
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileMD5:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const/4 v1, 0x1

    return v1

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 213
    return v1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/patch/ZRetryPatcher;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/patch/ZRetryPatcher;
    .param p1, "x1"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/patch/ZRetryPatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/patch/ZRetryPatcher;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public CancelTask()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mNewFileDownloadTask:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 225
    :cond_1
    return-void
.end method

.method protected downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 4
    .param p1, "callBack"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->getPatchFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "patchFile":Ljava/lang/String;
    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFilePath:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->delPatcherFile()V

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mOldFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ZRetryPatcher"

    const-string/jumbo v3, "start downloadPatch..."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchFileUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    move-object v2, v3

    .line 101
    .local v2, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v2, v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUseEtag(Z)V

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->mPatchDownloadTask:Ljava/util/concurrent/Future;

    .line 104
    return-void

    .line 96
    .end local v2    # "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 97
    return-void
.end method

.method protected getPatchTask()Ljava/lang/Runnable;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->patchTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->c:Lcom/alipay/mobile/common/transport/TransportCallback;

    return-object v0
.end method

.method public startPatch()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->isLoadLibrary:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "ZRetryPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logDoPatchServiceStart(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->b:Lcom/alipay/mobile/common/transport/TransportCallback;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/patch/ZRetryPatcher;->a(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 43
    return-void
.end method
