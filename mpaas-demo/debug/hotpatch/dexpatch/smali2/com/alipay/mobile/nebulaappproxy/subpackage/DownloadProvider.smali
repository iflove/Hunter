.class public Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;
.super Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
.source "DownloadProvider.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    .line 37
    const-class v0, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 38
    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v0, "subpackage.DownloadProvider"

    const-string v1, "get h5ExternalDownloadManager failed, use H5AppDownLoadImpl"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoadImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoadImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 42
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .line 360
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "subpackage.DownloadProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "downloadUrl"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/nebulaInstallApps/"

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 5
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addDownload subpackage url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subpackage.DownloadProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 236
    .local v3, "downloadRequest":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    move-object v3, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    invoke-interface {v0, v3, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    return-void

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    const-string v1, "TINY_APP_SUBPACKAGE_DOWNLOAD_EXCEPTION"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 242
    .local v2, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object v2, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v4, "downloadUrl"

    invoke-virtual {v1, v4, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 243
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 247
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v3    # "downloadRequest":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "downloadFilePath"    # Ljava/lang/String;

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "subpackage.DownloadProvider"

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "installSubPackage failed, download file path is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return v1

    .line 287
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 288
    .local v3, "file":Ljava/io/File;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    return v1

    .line 291
    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 292
    return v4

    .line 294
    :cond_2
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c(Ljava/lang/String;)V

    .line 295
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 296
    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 307
    :cond_3
    const-string v0, "installSubPackage success!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    return v4

    .line 298
    :cond_4
    :goto_0
    :try_start_1
    const-string/jumbo v0, "subpackage unzip fail"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    nop

    .line 304
    :try_start_2
    const-string v0, "installSubPackage unZipResult || isInstalled() return false"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "installSubPackage delete exception"

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 302
    return v1

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 312
    .local v0, "globalException":Ljava/lang/Exception;
    const-string/jumbo v3, "subpackage parse error: "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    return v1
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .locals 3
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadRequest;-><init>()V

    .line 50
    .local v1, "request":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setAppId(Ljava/lang/String;)V

    .line 51
    const-string v0, "Subpackage Download"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setDescription(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setTitle(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->setFileName(Ljava/lang/String;)V

    .line 55
    return-object v1

    .line 47
    .end local v1    # "request":Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "downloadUrl"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    .line 257
    .local v1, "installSuccess":Z
    move v1, v0

    if-nez v0, :cond_1

    .line 259
    const-string v0, "TINY_APP_SUBPACKAGE_INSTALL_FAILED"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const/4 v2, 0x0

    .line 260
    .local v2, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v3, "downloadUrl"

    invoke-virtual {v0, v3, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 261
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DownloadedFilePath"

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 262
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 263
    .end local v2    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    goto :goto_0

    .line 265
    .end local v1    # "installSuccess":Z
    :cond_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 267
    .restart local v1    # "installSuccess":Z
    :cond_1
    :goto_0
    return v1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .line 325
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .param p0, "filPath"    # Ljava/lang/String;

    .line 318
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteOldPkgByFullInstall "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subpackage.DownloadProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 322
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 335
    .local v1, "downloadDirectoryPath":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    .line 336
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    .line 338
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "downloadedFilePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadedFilePath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "subpackage.DownloadProvider"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-object v0

    .line 342
    .end local v0    # "downloadedFilePath":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "downloadUrl"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 4
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 369
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "downloadPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 371
    .local v1, "isAvailable":Z
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    const/4 v1, 0x1

    .line 374
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isPkgAvailable: path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isExist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "subpackage.DownloadProvider"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return v1
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 379
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 380
    .local v2, "installedPath":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    const-string/jumbo v4, "subpackage.DownloadProvider"

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "getInstalledPath() is empty"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return v3

    .line 385
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    .line 386
    .local v5, "file":Ljava/io/File;
    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 388
    .local v1, "listFiles":[Ljava/io/File;
    move-object v1, v0

    array-length v0, v0

    .line 389
    .local v0, "length":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isInstalled length:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-eqz v1, :cond_5

    if-lez v0, :cond_5

    .line 391
    const/4 v6, 0x0

    .line 392
    .local v6, "containTar":Z
    array-length v7, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v1, v8

    .line 393
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 394
    .local v9, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "installed dir file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v10, "tar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_1

    .line 396
    const/4 v6, 0x1

    .line 392
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 401
    :cond_2
    const/4 v7, 0x4

    const-string v8, "installSubPackage files broken, delete broken files"

    if-ge v0, v7, :cond_3

    .line 402
    if-nez v6, :cond_3

    .line 403
    :try_start_1
    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c(Ljava/lang/String;)V

    .line 405
    return v3

    .line 408
    :cond_3
    if-eqz v6, :cond_4

    .line 409
    const/4 v3, 0x1

    return v3

    .line 411
    :cond_4
    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    return v3

    .line 419
    .end local v0    # "length":I
    .end local v1    # "listFiles":[Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "containTar":Z
    :cond_5
    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;)V
    .locals 7
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "downloadCallback"    # Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->a()Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 70
    .local v2, "installCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;
    move-object v2, v0

    const-string/jumbo v3, "subpackage.DownloadProvider"

    if-nez v0, :cond_1

    .line 71
    const-string v0, "SubPackageInstallCallback in SubPackageDownloadCallback is null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    const-string v5, " url:"

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "prepareSubpackage Package has been downloaded and installed, appId: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 81
    invoke-interface {v2, v4, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;->a(ZLjava/lang/String;)V

    return-void

    .line 82
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "prepareSubpackage Package downloaded not installed, to install, appId: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v2, v4, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;->a(ZLjava/lang/String;)V

    return-void

    .line 93
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2, v0, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;->a(ZLjava/lang/String;)V

    .line 94
    const-string/jumbo v0, "prepareSubpackage install failed"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepareSubpackage Package not downloaded not installed, to download and install, appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5
    invoke-direct {p0, p1, p0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 105
    return-void
.end method

.method public onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 142
    if-nez p1, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 146
    .local v2, "downloadUrl":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 150
    return-void

    .line 152
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;

    .line 153
    .local v1, "downloadCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_3
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 5
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 196
    if-nez p1, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 200
    .local v2, "downloadUrl":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 204
    return-void

    .line 206
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;

    .line 207
    .local v0, "downloadCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "subpackage.DownloadProvidersubpackage download onFailed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", errorMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v1, "downloadFilePath":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 212
    const-string v3, "IO"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 222
    :cond_3
    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_4
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 7
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "savePath"    # Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "subpackage.DownloadProvider"

    const-string/jumbo v1, "subpackage get add download onFinished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-nez p1, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "downloadUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;

    const/4 v4, 0x0

    move-object v5, v4

    .line 172
    .local v5, "downloadCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
    move-object v5, v3

    if-nez v3, :cond_2

    .line 173
    const-string v3, "get SubPackageDownloadCallback from map Failed"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void

    .line 176
    :cond_2
    invoke-virtual {v5, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 181
    .local v3, "installResult":Z
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->a()Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;

    move-result-object v6

    .line 182
    .local v4, "installCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;
    move-object v4, v6

    if-eqz v6, :cond_4

    .line 183
    if-eqz v3, :cond_3

    .line 184
    const/4 v0, 0x1

    invoke-interface {v4, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v4, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_4
    const-string v6, "SubPackageInstallCallback from SubPackageDownloadCallback is null"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void

    .line 169
    .end local v3    # "installResult":Z
    .end local v4    # "installCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageInstallCallback;
    .end local v5    # "downloadCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
    :cond_5
    :goto_1
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 109
    if-nez p1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 113
    .local v2, "downloadUrl":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;

    .line 117
    .local v1, "downloadCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V

    .line 120
    :cond_2
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V
    .locals 3
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "progress"    # I

    .line 124
    if-nez p1, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 128
    .local v2, "downloadUrl":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 132
    return-void

    .line 134
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;

    .line 135
    .local v1, "downloadCallback":Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageDownloadCallback;->onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V

    .line 138
    :cond_3
    return-void
.end method
