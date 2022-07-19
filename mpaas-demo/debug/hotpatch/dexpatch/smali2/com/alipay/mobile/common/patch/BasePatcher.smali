.class public abstract Lcom/alipay/mobile/common/patch/BasePatcher;
.super Ljava/lang/Object;
.source "BasePatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BasePatcher"

.field protected static isLoadLibrary:Z


# instance fields
.field protected mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

.field protected mContext:Landroid/content/Context;

.field protected mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

.field protected mExecutor:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

.field protected mHandler:Landroid/os/Handler;

.field protected mNewFileMD5:Ljava/lang/String;

.field protected mNewFilePath:Ljava/lang/String;

.field protected mOldFilePath:Ljava/lang/String;

.field protected mPatchFileMD5:Ljava/lang/String;

.field protected mPatchFilePath:Ljava/lang/String;

.field protected mPatchFileUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/patch/BasePatcher;->initLibrary()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/patch/PatchCallBack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFilePath"    # Ljava/lang/String;
    .param p3, "oldFilePath"    # Ljava/lang/String;
    .param p4, "patchFileUrl"    # Ljava/lang/String;
    .param p5, "newFileMD5"    # Ljava/lang/String;
    .param p6, "patchFileMD5"    # Ljava/lang/String;
    .param p7, "callBack"    # Lcom/alipay/mobile/common/patch/PatchCallBack;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p2, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFilePath:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mOldFilePath:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileUrl:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFileMD5:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileMD5:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mHandler:Landroid/os/Handler;

    .line 63
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mExecutor:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    .line 65
    return-void
.end method

.method protected static initLibrary()V
    .locals 4

    .line 39
    const-string v0, "BasePatcher"

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    .line 40
    const-string/jumbo v1, "patcher"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "load so success"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "load so fail!!"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    .line 45
    const-string v2, "loadLibrary-Fail-BasePatcher"

    invoke-static {v2}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "newFilePath"    # Ljava/lang/String;
    .param p1, "oldFilePath"    # Ljava/lang/String;
    .param p2, "patchFilePath"    # Ljava/lang/String;
    .param p3, "newFileMD5"    # Ljava/lang/String;
    .param p4, "patchFileMD5"    # Ljava/lang/String;

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BasePatcher"

    if-nez v0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 185
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 186
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 191
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "patchFile":Ljava/io/File;
    invoke-static {p4, v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "verifyPatchMD5 fail"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v1

    .line 199
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "IsCanUseSdCard false"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v1

    .line 204
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "mOldFilePath is not exists"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v1

    .line 209
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "oldFile":Ljava/io/File;
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/patch/PatchUtils;->isEnoughSpaceDoPatch(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "space is not enough to patch"

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return v1

    .line 216
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/PatchUtils;->creatFileDir(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 217
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "mNewFilePath can not creat"

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return v1

    .line 222
    :cond_5
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogStart(Ljava/lang/String;)V

    .line 223
    invoke-static {p1, p0, p2}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 226
    if-nez v4, :cond_7

    .line 227
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogSuccess(Ljava/lang/String;)V

    .line 228
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, "newFile":Ljava/io/File;
    invoke-static {p3, v4}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 230
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Success(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x1

    return v1

    .line 233
    :cond_6
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/LoggerUtils;->logVerifyNewFileMD5Fail(Ljava/lang/String;)V

    .line 234
    return v1

    .line 237
    .end local v4    # "newFile":Ljava/io/File;
    :cond_7
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLogFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    return v1

    .line 241
    .end local v0    # "patchFile":Ljava/io/File;
    .end local v3    # "oldFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1

    .line 187
    :cond_8
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "param is empty"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v1
.end method

.method public static patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newFileFolder"    # Ljava/lang/String;
    .param p2, "oldFileFolder"    # Ljava/lang/String;
    .param p3, "patchFilePath"    # Ljava/lang/String;
    .param p4, "oldFileMD5"    # Ljava/lang/String;
    .param p5, "patchFileMD5"    # Ljava/lang/String;

    .line 174
    sget-boolean v0, Lcom/alipay/mobile/common/patch/BasePatcher;->isLoadLibrary:Z

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->patchDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract CancelTask()V
.end method

.method protected applyPatch()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mExecutor:Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/BasePatcher;->getPatchTask()Ljava/lang/Runnable;

    move-result-object v1

    const-string v2, "applyPatch"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected delNewFile()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected delPatcherFile()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected destory()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mDownloadEngine:Lcom/alipay/mobile/common/transport/download/DownloadManager;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->close()V

    .line 143
    :cond_0
    return-void
.end method

.method protected abstract downloadPatch(Lcom/alipay/mobile/common/transport/TransportCallback;)V
.end method

.method protected abstract getPatchTask()Ljava/lang/Runnable;
.end method

.method public abstract getPatcherDownloadListener()Lcom/alipay/mobile/common/transport/TransportCallback;
.end method

.method protected onFail(I)V
    .locals 3
    .param p1, "errCode"    # I

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BasePatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onFail(I)V

    .line 157
    :cond_0
    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSuccess "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BasePatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onSuccess(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public abstract startPatch()V
.end method

.method protected updateDownloadNewFileProgress(D)V
    .locals 1
    .param p1, "percent"    # D

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onDownloadNewFileProgressUpdate(D)V

    .line 169
    :cond_0
    return-void
.end method

.method protected updateDownloadPatchProgress(D)V
    .locals 1
    .param p1, "percent"    # D

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mCallBack:Lcom/alipay/mobile/common/patch/PatchCallBack;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/patch/PatchCallBack;->onDownloadPatchProgressUpdate(D)V

    .line 163
    :cond_0
    return-void
.end method

.method protected verifyPatchBeforeApply()Z
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/patch/PatchUtils;->getPatchFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    .local v1, "patchPath":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 88
    return v2

    .line 90
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFilePath:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "patchFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/BasePatcher;->verifyPatchMD5(Ljava/io/File;)Z

    move-result v3

    const-string v4, "BasePatcher"

    if-nez v3, :cond_1

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "verifyPatchMD5 fail"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "verifyPatchMD5-Fail-BasePatcher"

    invoke-static {v3}, Lcom/alipay/mobile/common/patch/LoggerUtils;->writePatchLog(Ljava/lang/String;)V

    .line 96
    return v2

    .line 99
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v5, "IsCanUseSdCard false"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v2

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mOldFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "mOldFilePath is not exists"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return v2

    .line 109
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mOldFilePath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "oldFile":Ljava/io/File;
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/patch/PatchUtils;->isEnoughSpaceDoPatch(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "space is not enough to patch"

    invoke-interface {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return v2

    .line 116
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mNewFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/common/patch/PatchUtils;->creatFileDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "mNewFilePath can not creat"

    invoke-interface {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v2

    .line 120
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method protected verifyPatchMD5(Ljava/io/File;)Z
    .locals 1
    .param p1, "patchFile"    # Ljava/io/File;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/BasePatcher;->mPatchFileMD5:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
