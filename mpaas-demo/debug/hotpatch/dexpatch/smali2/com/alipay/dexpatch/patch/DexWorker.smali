.class public Lcom/alipay/dexpatch/patch/DexWorker;
.super Ljava/lang/Object;
.source "DexWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 73
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 75
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "classes"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;I)Z"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    mul-int v0, v0, p1

    const/16 p1, 0x78

    if-le v0, p1, :cond_1

    const/16 v0, 0x78

    .line 44
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string/jumbo v3, "waitAndCheckDexOptFile: raw dex count: %d, dex opt dex count: %d, final wait times: %d"

    invoke-static {p1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DexP.DexWorker"

    invoke-static {v2, p1}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-ge p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 47
    invoke-static {p0, p1}, Lcom/alipay/dexpatch/patch/DexWorker;->b(Ljava/util/ArrayList;I)Z

    move-result v3

    if-nez v3, :cond_2

    const-wide/16 v6, 0x2710

    .line 49
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "waitAndCheckDexOptFile: thread sleep InterruptedException e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    const-string/jumbo v8, "waitAndCheckDexOptFile: check dex optimizer file exist: %s, size %d"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v3}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string/jumbo v8, "waitAndCheckDexOptFile: final parallel dex optimizer file %s is not exist, return false"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 66
    const-string/jumbo p0, "waitAndCheckDexOptFile: check exist failed"

    invoke-static {v2, p0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 69
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_a

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v3, v0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    const-string/jumbo v9, "waitAndCheckDexOptFile: check dex optimizer file format: %s, size %d"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_1
    invoke-static {v6}, Lcom/alipay/dexpatch/util/DPElfFile;->getFileTypeByMagic(Ljava/io/File;)I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v7, v1, :cond_7

    .line 83
    :try_start_2
    new-instance v7, Lcom/alipay/dexpatch/util/DPElfFile;

    invoke-direct {v7, v6}, Lcom/alipay/dexpatch/util/DPElfFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    invoke-static {v7}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 90
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string/jumbo v8, "waitAndCheckDexOptFile: final parallel dex optimizer file %s is not elf format, return false"

    :try_start_4
    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw p0

    :catch_1
    move-exception v6

    goto :goto_2

    .line 98
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "CHECK_DEX_OAT_FORMAT_FAIL"

    if-nez v3, :cond_9

    .line 99
    new-instance p1, Lcom/alipay/dexpatch/exception/DPException;

    invoke-direct {p1, p0}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/alipay/dexpatch/exception/DPException;

    invoke-direct {p1, p0, v3}, Lcom/alipay/dexpatch/exception/DPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :goto_3
    const-string/jumbo p0, "waitAndCheckDexOptFile: failed"

    invoke-static {v2, p1, p0}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return v4

    :cond_a
    return v1
.end method

.method private static a(Ljava/util/List;Ljava/io/File;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/dexpatch/patch/DexInfo;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    if-nez v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extract: try Extract to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexP.DexWorker"

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 40
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/dexpatch/patch/DexInfo;

    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "extract: try Extracting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v6, Lcom/alipay/dexpatch/patch/DexInfo;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/alipay/dexpatch/patch/DexInfo;->entryName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    :try_start_2
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, v6, Lcom/alipay/dexpatch/patch/DexInfo;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v9, v6, Lcom/alipay/dexpatch/patch/DexInfo;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v8, 0x4000

    .line 47
    :try_start_3
    new-array v8, v8, [B

    .line 48
    new-instance v9, Ljava/util/zip/ZipEntry;

    iget-object v6, v6, Lcom/alipay/dexpatch/patch/DexInfo;->newEntryName:Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 50
    invoke-virtual {v7, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    :goto_2
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    .line 52
    invoke-virtual {v4, v8, v0, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 53
    invoke-virtual {v7, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    goto :goto_2

    .line 55
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    invoke-static {v7}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v7

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    :cond_2
    invoke-static {v4}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 65
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v2

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "extract: isExtractionSuccessful: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "extract: Failed to delete corrupted merge result "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    move-object v2, v4

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 72
    :goto_4
    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw p0

    :cond_4
    return v2
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/zip/ZipFile;",
            "Lcom/alipay/dexpatch/patch/PatchInfo;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/dexpatch/patch/DexInfo;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "DexP.DexWorker"

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    .line 1
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p0, "loadDexInfoList: applicationInfo == null!!!!"

    .line 3
    invoke-static {v0, p0}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_0
    invoke-virtual {p2, p3}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModulePatchNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 9
    new-instance v2, Lcom/alipay/dexpatch/patch/DexInfo;

    invoke-direct {v2}, Lcom/alipay/dexpatch/patch/DexInfo;-><init>()V

    .line 10
    iput p4, v2, Lcom/alipay/dexpatch/patch/DexInfo;->type:I

    .line 11
    iput-object p1, v2, Lcom/alipay/dexpatch/patch/DexInfo;->zipFile:Ljava/util/zip/ZipFile;

    .line 12
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/classes.dex"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lcom/alipay/dexpatch/patch/DexInfo;->entryName:Ljava/lang/String;

    .line 13
    iget-object p4, v2, Lcom/alipay/dexpatch/patch/DexInfo;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p4, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p3

    iput-object p3, v2, Lcom/alipay/dexpatch/patch/DexInfo;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 14
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_3

    .line 18
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 19
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/zip/ZipEntry;

    .line 21
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p3

    .line 22
    invoke-static {p3}, Lcom/alipay/dexpatch/util/DPFileUtil;->zipPathSecurityCheck(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_2

    const-string p6, "classes"

    invoke-virtual {p3, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 23
    new-instance p3, Lcom/alipay/dexpatch/patch/DexInfo;

    invoke-direct {p3}, Lcom/alipay/dexpatch/patch/DexInfo;-><init>()V

    .line 24
    iput v1, p3, Lcom/alipay/dexpatch/patch/DexInfo;->type:I

    .line 25
    iput-object p0, p3, Lcom/alipay/dexpatch/patch/DexInfo;->zipFile:Ljava/util/zip/ZipFile;

    .line 26
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p3, Lcom/alipay/dexpatch/patch/DexInfo;->entryName:Ljava/lang/String;

    .line 27
    iput-object p2, p3, Lcom/alipay/dexpatch/patch/DexInfo;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 28
    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    return p4

    :catchall_0
    move-exception p0

    .line 33
    const-string p1, "loadDexInfoList: extract failed"

    invoke-static {v0, p0, p1}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1

    :cond_4
    nop

    .line 34
    const-string p0, "loadDexInfoList: load dexInfoList, params empty"

    invoke-static {v0, p0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static b(Ljava/util/ArrayList;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;I)Z"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 77
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "checkAllDexOptFile: parallel dex optimizer file %s is not exist, just wait %d times"

    invoke-static {p0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexP.DexWorker"

    invoke-static {p1, p0}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    return v1
.end method

.method private static b(Ljava/util/List;Ljava/io/File;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/dexpatch/patch/DexInfo;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_5

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extract: try Extract to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexP.DexWorker"

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/dexpatch/patch/DexInfo;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "extract: try Extracting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lcom/alipay/dexpatch/patch/DexInfo;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/alipay/dexpatch/patch/DexInfo;->entryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, v4, Lcom/alipay/dexpatch/patch/DexInfo;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v8, v4, Lcom/alipay/dexpatch/patch/DexInfo;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v7, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v4, v4, Lcom/alipay/dexpatch/patch/DexInfo;->newEntryName:Ljava/lang/String;

    invoke-direct {v8, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x4000

    .line 11
    :try_start_2
    new-array v4, v4, [B

    .line 13
    :goto_2
    invoke-virtual {v6, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    .line 14
    invoke-virtual {v7, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 17
    :cond_0
    invoke-static {v6}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 18
    invoke-static {v7}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v5, v7

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v6, v5

    .line 19
    :goto_3
    invoke-static {v6}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 20
    invoke-static {v5}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw p0

    :cond_1
    nop

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/dexpatch/patch/DexInfo;

    .line 27
    new-instance v7, Ljava/io/File;

    iget-object v6, v6, Lcom/alipay/dexpatch/patch/DexInfo;->newEntryName:Ljava/lang/String;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/alipay/dexpatch/util/DPFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    goto :goto_4

    .line 29
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "extract: isExtractionSuccessful: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_4

    .line 32
    invoke-static {p1}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "extract: Failed to delete corrupted extract results in "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    :cond_4
    move v2, v5

    goto/16 :goto_0

    .line 34
    :cond_5
    return v2
.end method

.method public static prepareDexFiles(Landroid/content/Context;Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;)Z
    .locals 24

    .line 1
    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleWorkspacePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: got workspacePath empty"

    .line 3
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: mkdir for workDir failed"

    .line 11
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 16
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getModuleCLType(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 25
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: applicationInfo == null!!!!"

    .line 27
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 262
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: originApkFilePath == null!!!!"

    .line 264
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 267
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "DexP.DexWorker"

    const-string/jumbo v2, "prepareDexFiles: get apk zip failed"

    .line 270
    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 497
    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_e

    .line 275
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/dexpatch/DexPatchManager;->getDPContext()Lcom/alipay/dexpatch/DexPatchContext;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/alipay/dexpatch/DexPatchContext;->getOriginDexFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: originApkFilePath == null!!!!"

    .line 277
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 280
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 281
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v12, v2

    .line 289
    :goto_0
    :try_start_3
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/dexpatch/patch/PatchInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 295
    :try_start_4
    invoke-static {v9}, Lcom/alipay/dexpatch/util/DPFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 296
    invoke-static {v9}, Lcom/alipay/dexpatch/util/DPFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 297
    invoke-static {v14, v15}, Lcom/alipay/dexpatch/patch/ModuleInfo;->readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/alipay/dexpatch/patch/ModuleInfo;

    move-result-object v2

    if-nez v2, :cond_6

    .line 299
    new-instance v2, Lcom/alipay/dexpatch/patch/ModuleInfo;

    invoke-direct {v2}, Lcom/alipay/dexpatch/patch/ModuleInfo;-><init>()V

    move-object v7, v2

    goto :goto_1

    .line 297
    :cond_6
    move-object v7, v2

    .line 302
    :goto_1
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v2, v7, Lcom/alipay/dexpatch/patch/ModuleInfo;->fingerPrint:Ljava/lang/String;

    .line 303
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/alipay/dexpatch/patch/ModuleInfo;->runtimeEnv:Ljava/lang/String;

    .line 305
    iput-object v0, v7, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApk:Ljava/lang/String;

    .line 306
    iput-object v1, v7, Lcom/alipay/dexpatch/patch/ModuleInfo;->originApkMd5:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isVmArt()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleUseMerge(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 310
    move-object v1, v12

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v16, v5

    move-object/from16 v5, p0

    const/4 v11, 0x1

    move-object/from16 v6, v16

    move-object v11, v7

    move v7, v0

    invoke-static/range {v1 .. v7}, Lcom/alipay/dexpatch/patch/DexWorker;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: load dexInfoList failed"

    .line 312
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 315
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 316
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 317
    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/dexpatch/patch/DexInfo;

    const-string v3, ".dex"

    .line 318
    invoke-static {v0, v3}, Lcom/alipay/dexpatch/patch/DexWorker;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/dexpatch/patch/DexInfo;->newEntryName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v16, v1

    goto :goto_2

    .line 321
    :cond_8
    move-object/from16 v1, v16

    new-instance v0, Ljava/io/File;

    invoke-static {v9}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDexDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: make dex dir failed"

    .line 325
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 330
    :cond_9
    new-instance v2, Ljava/io/File;

    const-string v3, "dexpatch_merged.jar"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    iget-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_a

    iget-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 337
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 338
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 339
    iget-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    aget-object v0, v0, v10

    .line 340
    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {v0}, Lcom/alipay/dexpatch/util/DPFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_c

    .line 349
    :try_start_5
    invoke-static {v1, v2}, Lcom/alipay/dexpatch/patch/DexWorker;->a(Ljava/util/List;Ljava/io/File;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    const-string v0, "DexP.DexWorker"

    const-string/jumbo v4, "prepareDexFiles: extract error"

    .line 351
    invoke-static {v0, v3, v4}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_b

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: extract failed"

    .line 355
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_b
    nop

    .line 359
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v10

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    .line 360
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v10

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    :cond_c
    nop

    .line 364
    const/4 v3, 0x0

    iput-object v3, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    .line 365
    iput-object v3, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    .line 368
    invoke-static {v14, v11, v15}, Lcom/alipay/dexpatch/patch/ModuleInfo;->rewriteModuleInfoFileWithLock(Ljava/io/File;Lcom/alipay/dexpatch/patch/ModuleInfo;Ljava/io/File;)Z

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-static {v9}, Lcom/alipay/dexpatch/util/DPFileUtil;->getODexDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    .line 376
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 378
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-static {v2, v4}, Lcom/alipay/dexpatch/util/DPFileUtil;->getOptimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 380
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleUseSpeedCompile(Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleDisablePCOat(Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleEnableDexImage(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getDexOptimizeParam(Ljava/lang/String;)Lcom/alipay/dexpatch/patch/DexOptimizeParam;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v23}, Lcom/alipay/dexpatch/patch/DexOptimizer;->optimizeAll(Ljava/util/Collection;Ljava/io/File;ZZZLcom/alipay/dexpatch/patch/DexOptimizeParam;Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: optdex failed"

    .line 384
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 387
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v3, v0}, Lcom/alipay/dexpatch/patch/DexWorker;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 391
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    .line 392
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    .line 394
    invoke-static {v14, v11, v15}, Lcom/alipay/dexpatch/patch/ModuleInfo;->rewriteModuleInfoFileWithLock(Ljava/io/File;Lcom/alipay/dexpatch/patch/ModuleInfo;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_a

    .line 308
    :cond_f
    move-object v11, v7

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 403
    move-object v1, v12

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/alipay/dexpatch/patch/DexWorker;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Lcom/alipay/dexpatch/patch/PatchInfo;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: load dexInfoList failed"

    .line 405
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 408
    :cond_10
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 409
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/dexpatch/patch/DexInfo;

    const-string v3, ".dex"

    .line 411
    invoke-static {v1, v3}, Lcom/alipay/dexpatch/patch/DexWorker;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/dexpatch/patch/DexInfo;->newEntryName:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 414
    :cond_11
    new-instance v1, Ljava/io/File;

    invoke-static {v9}, Lcom/alipay/dexpatch/util/DPFileUtil;->getDexDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    .line 416
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_12

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: make dex dir failed"

    .line 418
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_b

    .line 424
    :cond_12
    :try_start_7
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/patch/DexWorker;->b(Ljava/util/List;Ljava/io/File;)Z

    move-result v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v2, :cond_13

    :try_start_8
    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: extract failed"

    .line 430
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 434
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/dexpatch/patch/DexInfo;

    .line 436
    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lcom/alipay/dexpatch/patch/DexInfo;->newEntryName:Ljava/lang/String;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 438
    :cond_14
    invoke-static {v9}, Lcom/alipay/dexpatch/util/DPFileUtil;->getODexDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_15

    .line 441
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 443
    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/dexpatch/patch/DexInfo;

    .line 445
    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Lcom/alipay/dexpatch/patch/DexInfo;->newEntryName:Ljava/lang/String;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/alipay/dexpatch/util/DPFileUtil;->getOptimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 446
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 449
    :cond_16
    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->getDexOptimizeParam(Ljava/lang/String;)Lcom/alipay/dexpatch/patch/DexOptimizeParam;

    move-result-object v0

    .line 450
    iput-boolean v10, v0, Lcom/alipay/dexpatch/patch/DexOptimizeParam;->enableQImage:Z

    .line 451
    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleUseSpeedCompile(Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {p1 .. p2}, Lcom/alipay/dexpatch/patch/PatchInfo;->isModuleDisablePCOat(Ljava/lang/String;)Z

    move-result v20

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v22, v0

    invoke-static/range {v17 .. v23}, Lcom/alipay/dexpatch/patch/DexOptimizer;->optimizeAll(Ljava/util/Collection;Ljava/io/File;ZZZLcom/alipay/dexpatch/patch/DexOptimizeParam;Lcom/alipay/dexpatch/patch/DexOptimizer$ResultCallback;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v1, "prepareDexFiles: optdex failed"

    .line 453
    invoke-static {v0, v1}, Lcom/alipay/dexpatch/util/DPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_17
    nop

    .line 456
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/alipay/dexpatch/patch/DexWorker;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 463
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 465
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 468
    :cond_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 469
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/alipay/dexpatch/util/DPFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 473
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFiles:[Ljava/lang/String;

    .line 474
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->dexFilesMd5:[Ljava/lang/String;

    .line 475
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFiles:[Ljava/lang/String;

    .line 476
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v11, Lcom/alipay/dexpatch/patch/ModuleInfo;->oatFilesMd5:[Ljava/lang/String;

    .line 479
    invoke-static {v14, v11, v15}, Lcom/alipay/dexpatch/patch/ModuleInfo;->rewriteModuleInfoFileWithLock(Ljava/io/File;Lcom/alipay/dexpatch/patch/ModuleInfo;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 488
    :cond_1a
    sget-object v1, Lcom/alipay/dexpatch/util/ToolsUtil;->PATCH_PROCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 489
    move-object/from16 v2, p1

    const/4 v3, 0x1

    :try_start_9
    invoke-virtual {v2, v8, v3}, Lcom/alipay/dexpatch/patch/PatchInfo;->setModulePrepared(Ljava/lang/String;Z)V

    .line 490
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 492
    invoke-static {v12}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 493
    invoke-static {v13}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v3

    :catchall_3
    move-exception v0

    .line 494
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0

    .line 394
    :cond_1b
    :goto_a
    goto :goto_b

    .line 494
    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "DexP.DexWorker"

    const-string/jumbo v2, "prepareDexFiles: extract error"

    .line 495
    invoke-static {v0, v1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 260
    :goto_b
    move-object v11, v12

    move-object v3, v13

    goto :goto_c

    .line 495
    :catchall_4
    move-exception v0

    move-object v11, v13

    goto :goto_f

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    :try_start_c
    const-string v1, "DexP.DexWorker"

    const-string/jumbo v2, "prepareDexFiles: get patch zip failed"

    .line 496
    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v11, v12

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object v11, v3

    goto :goto_f

    :catchall_7
    move-exception v0

    const/4 v3, 0x0

    :try_start_d
    const-string v1, "DexP.DexWorker"

    const-string/jumbo v2, "prepareDexFiles: get apk zip failed"

    .line 497
    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object v11, v3

    .line 260
    :goto_c
    invoke-static {v11}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 261
    invoke-static {v3}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 3
    :goto_d
    return v10

    .line 497
    :catchall_8
    move-exception v0

    :goto_e
    move-object v11, v3

    move-object v12, v11

    .line 706
    :goto_f
    invoke-static {v12}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 707
    invoke-static {v11}, Lcom/alipay/dexpatch/util/DPFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    throw v0
.end method
