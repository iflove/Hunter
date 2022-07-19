.class public Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;
.super Ljava/lang/Object;
.source "ApkFileReader.java"


# static fields
.field public static final ASSETS:Ljava/lang/String; = "assets"

.field public static final LIB:Ljava/lang/String; = "lib"


# instance fields
.field private a:Landroid/util/Printer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    .line 54
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Failed to read apk, "

    .line 125
    const/4 v5, 0x0

    .line 126
    .local v5, "success":Z
    const/4 v6, 0x0

    .line 128
    .local v6, "inputStream":Ljava/io/InputStream;
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    move-result-object v0

    const/4 v7, 0x0

    move-object v8, v7

    .line 129
    .local v8, "apkZipFile":Lcom/alipay/mobile/quinox/apkfile/ApkFile;
    move-object v8, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v0

    move-object v9, v7

    .line 130
    .local v9, "mApkZipFile":Ljava/util/zip/ZipFile;
    move-object v9, v0

    const-string v10, "AssetsReader"

    const-string v11, ", md5="

    const-string v12, "/"

    if-eqz v0, :cond_2

    .line 132
    :try_start_0
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 133
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v7, v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "Failed to get ZipEntry:"

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v9, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 137
    move-object v6, v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v3, v6}, Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;->onInputStream(Ljava/io/InputStream;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v0

    .line 150
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_0
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 151
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v8}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getApkFilePath()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "apk":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, "md5":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    iget-object v14, v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    if-eqz v14, :cond_1

    .line 146
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 147
    iget-object v4, v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v14}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v7    # "apk":Ljava/lang/String;
    .end local v13    # "md5":Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 184
    :cond_2
    :goto_1
    if-nez v5, :cond_4

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 186
    move-object v6, v0

    if-eqz v0, :cond_4

    .line 188
    :try_start_2
    invoke-interface {v3, v6}, Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;->onInputStream(Ljava/io/InputStream;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v5, v0

    .line 198
    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 199
    goto :goto_3

    .line 189
    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 190
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 191
    .local v4, "apk":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "md5":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to load stream, "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    iget-object v10, v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    if-eqz v10, :cond_3

    .line 194
    iget-object v10, v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to read stream, "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 195
    iget-object v10, v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 198
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "apk":Ljava/lang/String;
    .end local v7    # "md5":Ljava/lang/String;
    :catchall_3
    move-exception v0

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0

    .line 203
    :cond_4
    :goto_3
    return v5
.end method


# virtual methods
.method public readAssets(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    move-result v0

    return v0
.end method

.method public readAssets(Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "genMd5OnFailed"    # Z
    .param p4, "callback"    # Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;

    .line 78
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;Z)Z

    move-result v0

    return v0
.end method

.method public readAssets(Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;Z)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "genMd5OnFailed"    # Z
    .param p4, "callback"    # Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;
    .param p5, "retryWhenFileNotFound"    # Z

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, ", md5="

    const-string v5, "/"

    const-string v6, "Failed to read asset, "

    .line 91
    const/4 v7, 0x0

    .line 92
    .local v7, "success":Z
    const/4 v8, 0x0

    .line 94
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "assets/"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "path":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 98
    .local v10, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 99
    move-object v8, v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v3, v8}, Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;->onInputStream(Ljava/io/InputStream;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    .line 115
    .end local v10    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 116
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v10, "e":Ljava/lang/Throwable;
    move-object v10, v0

    :try_start_1
    instance-of v0, v0, Ljava/io/FileNotFoundException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v11, "AssetsReader"

    if-eqz v0, :cond_1

    if-nez p5, :cond_1

    .line 104
    :try_start_2
    const-string v0, "Failed to read asset."

    invoke-static {v11, v0, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 108
    .local v0, "apk":Ljava/lang/String;
    if-eqz p3, :cond_2

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    const-string v12, "skip_gen_md5"

    .line 109
    .local v12, "md5":Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iget-object v11, v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    if-eqz v11, :cond_0

    .line 111
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 112
    iget-object v4, v1, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a:Landroid/util/Printer;

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 118
    .end local v0    # "apk":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Throwable;
    .end local v12    # "md5":Ljava/lang/String;
    :goto_2
    if-nez v7, :cond_3

    .line 119
    move-object v4, p1

    invoke-direct {p0, p1, v9, v3}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    move-result v7

    goto :goto_3

    .line 118
    :cond_3
    move-object v4, p1

    .line 121
    :goto_3
    return v7

    .line 115
    :catchall_1
    move-exception v0

    move-object v4, p1

    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public readNativeCode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cpus"    # [Ljava/lang/String;
    .param p4, "callback"    # Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "success":Z
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 217
    .local v3, "cpu":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lib/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v4, p4}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    move-result v5

    .line 219
    move v0, v5

    if-nez v5, :cond_0

    .line 216
    .end local v3    # "cpu":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return v0
.end method
