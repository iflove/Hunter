.class public Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;
.super Ljava/lang/Object;
.source "TemplateDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;
    .locals 1

    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$a;->a()Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    const-string v2, "isDownloading..downloadUrl is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    .local v1, "cacheDir":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, ""

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 183
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

    const-string v1, "/nebulaInstallApps/template_app_config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    const-string v2, "isDownloaded..downloadUrl is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v1

    .line 63
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 65
    .local v3, "file":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 66
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDownloaded...e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()V
    .locals 5

    .line 195
    const/4 v0, 0x0

    .local v0, "templateConfigDiskCacheDir":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->c()Ljava/lang/String;

    move-result-object v1

    .line 196
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    return-void

    .line 201
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 202
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    nop

    .end local v2    # "file":Ljava/io/File;
    return-void

    .line 203
    :catchall_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkTemplateConfigDiskCacheDirExist..e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "downloadUrl"    # Ljava/lang/String;

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    const-string v1, "addDownloadTask..downloadUrl is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addDownloadTask..isDownloading..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 91
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addDownloadTask..isDownloaded..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 96
    :cond_2
    const-class v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 98
    .local v2, "downloadService":Lcom/alipay/mobile/framework/service/common/DownloadService;
    move-object v2, v0

    if-nez v0, :cond_3

    .line 99
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a:Ljava/lang/String;

    const-string v1, "downloadService == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->d()V

    .line 105
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 106
    .local v3, "downloadRequest":Lcom/alipay/mobile/common/transport/download/DownloadRequest;
    move-object v3, v0

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 138
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/common/DownloadService;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 139
    .local v1, "task":Ljava/util/concurrent/Future;
    move-object v1, v0

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_4

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_5
    return-void
.end method
