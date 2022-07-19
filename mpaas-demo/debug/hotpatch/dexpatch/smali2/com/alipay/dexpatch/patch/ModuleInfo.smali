.class public Lcom/alipay/dexpatch/patch/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# static fields
.field public static final DEX_FILES:Ljava/lang/String; = "dexFiles"

.field public static final FINGER_PRINT:Ljava/lang/String; = "print"

.field public static final MAX_EXTRACT_ATTEMPTS:I = 0x2

.field public static final MD5_SUFFIX:Ljava/lang/String; = "_md5"

.field public static final OAT_FILES:Ljava/lang/String; = "oatFiles"

.field public static final ORIGIN_APK:Ljava/lang/String; = "oriApk"

.field public static final RUNTIME_ENV:Ljava/lang/String; = "runtime_env"

.field public static final SPLIT:Ljava/lang/String; = "<split>"


# instance fields
.field public dexFiles:[Ljava/lang/String;

.field public dexFilesMd5:[Ljava/lang/String;

.field public fingerPrint:Ljava/lang/String;

.field public oatFiles:[Ljava/lang/String;

.field public oatFilesMd5:[Ljava/lang/String;

.field public originApk:Ljava/lang/String;

.field public originApkMd5:Ljava/lang/String;

.field public runtimeEnv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/File;)Lcom/alipay/dexpatch/patch/ModuleInfo;
    .locals 16

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    if-nez v2, :cond_0

    add-int/lit8 v7, v0, 0x1

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 4
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v9, p0

    :try_start_1
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v10, "dexFiles"

    .line 6
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "dexFiles_md5"

    .line 7
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "oatFiles"

    .line 8
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "oatFiles_md5"

    .line 9
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "oriApk"

    .line 10
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v10, "oriApk_md5"

    .line 11
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v10, "print"

    .line 12
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v10, "runtime_env"

    .line 13
    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-static {v8}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    const/4 v2, 0x1

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v9, p0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const-string v10, "DexP.ModuleInfo"

    .line 19
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readAndCheckProperty: read property failed, e:"

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 21
    invoke-static {v8}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    move v0, v7

    goto :goto_0

    :catchall_3
    move-exception v0

    invoke-static {v8}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw v0

    :cond_0
    if-eqz v2, :cond_5

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "<split>"

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    goto :goto_3

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 27
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    goto :goto_4

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 28
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    goto :goto_5

    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 29
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v11, 0x0

    goto :goto_6

    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 30
    :goto_6
    new-instance v0, Lcom/alipay/dexpatch/patch/ModuleInfo;

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Lcom/alipay/dexpatch/patch/ModuleInfo;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;Lcom/alipay/dexpatch/patch/ModuleInfo;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 31
    iget-object v1, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    .line 34
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rewriteModuleInfoFile: file path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ModuleInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Lcom/alipay/dexpatch/patch/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "DexP.ModuleInfo"

    invoke-static {v2, v1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    if-nez v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 52
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 53
    iget-object v4, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    const-string v5, "<split>"

    invoke-static {v4, v5}, Lcom/alipay/dexpatch/patch/ModuleInfo;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "dexFiles"

    invoke-virtual {v3, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v4, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/dexpatch/patch/ModuleInfo;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "dexFiles_md5"

    invoke-virtual {v3, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v4, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/dexpatch/patch/ModuleInfo;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "oatFiles"

    invoke-virtual {v3, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v4, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/dexpatch/patch/ModuleInfo;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oatFiles_md5"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oriApk"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oriApk_md5"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "print"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "runtime_env"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v5, "patch module workspace info"

    .line 66
    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 70
    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    .line 71
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rewriteModuleInfoFile: write property failed, e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    :goto_2
    invoke-static {v4}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 76
    invoke-static {p0}, Lcom/alipay/dexpatch/patch/ModuleInfo;->a(Ljava/io/File;)Lcom/alipay/dexpatch/patch/ModuleInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v3, p1}, Lcom/alipay/dexpatch/patch/ModuleInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_2

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    .line 81
    invoke-static {v4}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw p0

    :cond_4
    return v3

    :cond_5
    return v0
.end method

.method public static readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/alipay/dexpatch/patch/ModuleInfo;
    .locals 5

    const-string/jumbo v0, "readAndCheckPropertyWithLock: releaseInfoLock error"

    const-string v1, "DexP.ModuleInfo"

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    nop

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPFileLock;->getFileLock(Ljava/io/File;)Lcom/alipay/dexpatch/util/DPFileLock;

    move-result-object v2

    .line 10
    invoke-static {p0}, Lcom/alipay/dexpatch/patch/ModuleInfo;->a(Ljava/io/File;)Lcom/alipay/dexpatch/patch/ModuleInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 16
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {v1, p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    .line 20
    :try_start_2
    new-instance p1, Lcom/alipay/dexpatch/exception/DPException;

    const-string/jumbo v3, "readAndCheckPropertyWithLock: fail"

    invoke-direct {p1, v3, p0}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v2, :cond_2

    .line 24
    :try_start_3
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    .line 27
    invoke-static {v1, p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 28
    :cond_2
    :goto_1
    throw p0

    :cond_3
    return-object v2
.end method

.method public static rewriteModuleInfoFileWithLock(Ljava/io/File;Lcom/alipay/dexpatch/patch/ModuleInfo;Ljava/io/File;)Z
    .locals 4

    const-string/jumbo v0, "rewriteModuleInfoFileWithLock: releaseInfoLock error"

    const-string v1, "DexP.ModuleInfo"

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-static {p2}, Lcom/alipay/dexpatch/util/DPFileLock;->getFileLock(Ljava/io/File;)Lcom/alipay/dexpatch/util/DPFileLock;

    move-result-object v2

    .line 9
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/patch/ModuleInfo;->a(Ljava/io/File;Lcom/alipay/dexpatch/patch/ModuleInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 15
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {v1, p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p0

    :catchall_1
    move-exception p0

    .line 19
    :try_start_2
    new-instance p1, Lcom/alipay/dexpatch/exception/DPException;

    const-string/jumbo p2, "rewriteModuleInfoFileWithLock: fail"

    invoke-direct {p1, p2, p0}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v2, :cond_2

    .line 23
    :try_start_3
    invoke-virtual {v2}, Lcom/alipay/dexpatch/util/DPFileLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    .line 26
    invoke-static {v1, p1, v0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 27
    :cond_2
    :goto_1
    throw p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    check-cast p1, Lcom/alipay/dexpatch/patch/ModuleInfo;

    .line 5
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 14
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 19
    :cond_1
    if-eqz v0, :cond_d

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    if-eqz v2, :cond_d

    array-length v3, v0

    array-length v2, v2

    if-ne v3, v2, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 21
    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 30
    :cond_4
    if-eqz v0, :cond_d

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    if-eqz v2, :cond_d

    array-length v3, v0

    array-length v2, v2

    if-ne v3, v2, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 31
    :goto_1
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 32
    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 41
    :cond_7
    if-eqz v0, :cond_d

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    if-eqz v2, :cond_d

    array-length v3, v0

    array-length v2, v2

    if-ne v3, v2, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 42
    :goto_2
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 43
    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    return v1

    .line 50
    :cond_9
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 52
    :cond_a
    if-eqz v0, :cond_d

    iget-object v2, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    if-eqz v2, :cond_d

    array-length v3, v0

    array-length v2, v2

    if-ne v3, v2, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 53
    :goto_3
    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_c

    .line 54
    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    return v1

    :cond_c
    const/4 p1, 0x1

    return p1

    :cond_d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    const-string v2, ","

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 12
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 19
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v5, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 21
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 28
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    iget-object v6, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 30
    array-length v7, v6

    :goto_3
    if-ge v3, v7, :cond_7

    aget-object v8, v6, v3

    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_6
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 37
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ModuleInfo{dexFiles:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dexFilesMd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", oatFiles:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", oatFilesMd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", originApk:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", originApkMd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fingerPrint:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", runtimeEnv:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
