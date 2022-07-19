.class public final Lcom/alipay/mobile/quinox/apkfile/ApkFile;
.super Ljava/lang/Object;
.source "ApkFile.java"


# static fields
.field private static d:Lcom/alipay/mobile/quinox/apkfile/ApkFile;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/zip/ZipFile;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->b:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/apkfile/ApkFile;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    sget-object v0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->d:Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->d:Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->d:Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    .line 75
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->d:Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    return-object v0
.end method


# virtual methods
.method public final getApkFilePath()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getZipFile()Ljava/util/zip/ZipFile;
    .locals 4

    .line 95
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->b:Z

    if-nez v0, :cond_1

    .line 96
    const-class v0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->b:Z

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->c:Ljava/util/zip/ZipFile;

    .line 101
    const-string v1, "ApkFile"

    const-string v2, "success to create java.zip.ZipFile"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "ApkFile"

    const-string v3, "failed to access the apk file."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 108
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->c:Ljava/util/zip/ZipFile;

    return-object v0
.end method
