.class public final Lcom/alipay/mobile/quinox/bundle/a;
.super Ljava/lang/Object;
.source "ApkZipFile.java"


# direct methods
.method private static a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p2, "so"    # Ljava/lang/String;
    .param p3, "mNativeLibDir"    # Ljava/lang/String;
    .param p4, "checkMD5"    # Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "sharedLibraryFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "sharedLibraryFile":Ljava/io/File;
    const/4 v2, 0x1

    .line 94
    .local v2, "md5Valid":Z
    if-eqz p4, :cond_2

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "currentFile":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 99
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 101
    .local v4, "originFileIS":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v5, "currentFileIS":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->checkMd5(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 104
    const/4 v2, 0x0

    .line 110
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 111
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 112
    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 111
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 107
    return-void

    .line 110
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 111
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v6

    .line 115
    .end local v3    # "currentFile":Ljava/io/File;
    .end local v4    # "originFileIS":Ljava/io/InputStream;
    .end local v5    # "currentFileIS":Ljava/io/InputStream;
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    return-void

    .line 119
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 121
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    move-object v3, v4

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    .line 123
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 126
    return-void

    .line 125
    :catchall_1
    move-exception v4

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static a(Ljava/util/zip/ZipFile;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "dls"    # [Ljava/lang/String;
    .param p2, "mNativeLibDir"    # Ljava/lang/String;
    .param p3, "checkMD5"    # Z

    .line 45
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.extractSosFromZipFile1.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/mobile/quinox/bundle/a;->b(Ljava/util/zip/ZipFile;[Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public static a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 3
    .param p0, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "dls"    # [Ljava/lang/String;
    .param p3, "mNativeLibDir"    # Ljava/lang/String;
    .param p4, "N"    # I
    .param p5, "checkMD5"    # Z

    .line 184
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.extractSosFromZipFile3.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 187
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/quinox/bundle/a;->b(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 187
    return v1

    .line 189
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private static b(Ljava/util/zip/ZipFile;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "dls"    # [Ljava/lang/String;
    .param p2, "mNativeLibDir"    # Ljava/lang/String;
    .param p3, "checkMD5"    # Z

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_5

    array-length v3, v1

    if-gtz v3, :cond_0

    move/from16 v12, p3

    goto/16 :goto_3

    .line 60
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList()[Ljava/lang/String;

    move-result-object v3

    .local v3, "supportCPUs":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object v5, v4

    .line 63
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 64
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    array-length v7, v1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_4

    aget-object v10, v1, v9

    .line 65
    .local v4, "so":Ljava/lang/String;
    move-object v4, v10

    if-eqz v10, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 69
    array-length v10, v3

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v3, v11

    .line 70
    .local v12, "cpuAbi":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lib"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    .line 73
    move-object v6, v13

    if-nez v13, :cond_1

    .line 69
    .end local v12    # "cpuAbi":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 78
    :cond_1
    const-string v10, "copy so: "

    const-string v11, "BootLoader"

    if-eqz v6, :cond_2

    .line 79
    move/from16 v12, p3

    invoke-static {v0, v6, v4, v2, v12}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v13, "sharedLibraryFile":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " finish, exist:"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", length:"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move/from16 v16, v9

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-static {v11, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v13    # "sharedLibraryFile":Ljava/io/File;
    goto :goto_2

    .line 85
    :cond_2
    move/from16 v12, p3

    move/from16 v16, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " error, not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 65
    .end local v4    # "so":Ljava/lang/String;
    :cond_3
    move/from16 v12, p3

    move/from16 v16, v9

    .line 64
    :goto_2
    add-int/lit8 v9, v16, 0x1

    goto/16 :goto_0

    .line 88
    :cond_4
    move/from16 v12, p3

    return-void

    .line 56
    .end local v3    # "supportCPUs":[Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    move/from16 v12, p3

    .line 57
    :goto_3
    return-void
.end method

.method private static b(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 10
    .param p0, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "dls"    # [Ljava/lang/String;
    .param p3, "mNativeLibDir"    # Ljava/lang/String;
    .param p4, "N"    # I
    .param p5, "checkMD5"    # Z

    const-string v0, "BootLoader"

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 196
    .local v3, "file":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    const/4 v1, 0x0

    .line 201
    .local v1, "bRet":Z
    const/4 v4, 0x0

    .local v4, "retry":I
    :goto_0
    if-gt v4, p4, :cond_3

    .line 202
    const/4 v5, 0x0

    .line 204
    .local v5, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 206
    move-object v5, v6

    invoke-static {v6, p2, p3, p5}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/util/zip/ZipFile;[Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    const/4 v1, 0x1

    .line 218
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    :goto_1
    goto :goto_5

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 209
    :catchall_0
    move-exception v6

    .line 210
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "extractSosFromZipFile"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(zipFilePath="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", dls="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") an exception occurs: retry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 210
    invoke-static {v7, v6, v8}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 212
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 213
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 214
    new-instance v7, Lcom/alipay/mobile/quinox/bundle/h;

    invoke-direct {v7}, Lcom/alipay/mobile/quinox/bundle/h;-><init>()V

    invoke-virtual {v7, p0, v6, v4}, Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    .end local v6    # "e":Ljava/lang/Throwable;
    if-eqz v5, :cond_1

    .line 218
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 221
    :goto_2
    goto :goto_3

    .line 219
    :catch_1
    move-exception v6

    .line 220
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 201
    .end local v5    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    .restart local v5    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_2

    .line 218
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 221
    goto :goto_4

    .line 219
    :catch_2
    move-exception v6

    .line 220
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v2

    .line 225
    .end local v4    # "retry":I
    .end local v5    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    :goto_5
    return v1
.end method
