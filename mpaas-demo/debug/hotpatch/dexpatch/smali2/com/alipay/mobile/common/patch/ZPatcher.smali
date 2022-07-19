.class public Lcom/alipay/mobile/common/patch/ZPatcher;
.super Lcom/alipay/mobile/common/patch/BasePatcher;
.source "ZPatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZPatcher"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/TransportCallback;

.field protected mDownloadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field patchTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFilePath"    # Ljava/lang/String;
    .param p3, "oldFilePath"    # Ljava/lang/String;
    .param p4, "patchFileUrl"    # Ljava/lang/String;
    .param p5, "newFileMD5"    # Ljava/lang/String;
    .param p6, "patchFileMD5"    # Ljava/lang/String;
    .param p7, "callBack"    # Lcom/alipay/mobile/common/patch/PatchCallBack;

    .line 26
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/common/patch/BasePatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    .line 49
    new-instance v0, Lcom/alipay/mobile/common/patch/ZPatcher$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZPatcher$1;-><init>(Lcom/alipay/mobile/common/patch/ZPatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->patchTask:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/alipay/mobile/common/patch/ZPatcher$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/patch/ZPatcher$2;-><init>(Lcom/alipay/mobile/common/patch/ZPatcher;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ZPatcher"

    const-string v2, "ZPatcher init"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private a()V
    .locals 3

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ZPatcher"

    const-string/jumbo v2, "verifyNewFileMD5..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 150
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "newFile":Ljava/io/File;
    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFileMD5:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Success(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Fail(Ljava/lang/String;)V

    .line 156
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/patch/ZPatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/patch/ZPatcher;

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/common/patch/ZPatcher;->a()V

    return-void
.end method


# virtual methods
.method public CancelTask()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 169
    :cond_0
    return-void
.end method

.method protected downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 4
    .param p1, "callBack"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->getPatchFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "patchFile":Ljava/lang/String;
    iput-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFilePath:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZPatcher;->delPatcherFile()V

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mOldFilePath:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ZPatcher"

    const-string/jumbo v3, "start downloadPatch..."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mPatchFileUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V

    move-object v2, v3

    .line 95
    .local v2, "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v2, v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUseEtag(Z)V

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->mDownloadTask:Ljava/util/concurrent/Future;

    .line 98
    return-void

    .line 90
    .end local v2    # "request":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    :cond_1
    :goto_0
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 91
    return-void
.end method

.method protected getPatchTask()Ljava/lang/Runnable;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->patchTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/ZPatcher;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    return-object v0
.end method

.method public startPatch()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/alipay/mobile/common/patch/ZPatcher;->isLoadLibrary:Z

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "ZPatcher"

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logDoPatchServiceStart(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/ZPatcher;->getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    return-void

    .line 40
    :cond_0
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/ZPatcher;->onFail(I)V

    .line 42
    return-void
.end method
