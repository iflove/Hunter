.class public final Lcom/alipay/mobile/quinox/bundle/b;
.super Ljava/lang/Object;
.source "BundleDelete.java"


# direct methods
.method private static a(Ljava/io/File;Ljava/util/Collection;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "files"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeBack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BundleDelete"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 260
    .local v2, "deleteFiles":[Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 261
    move-object v0, v3

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringArray2(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 266
    return-void

    .line 265
    .end local v2    # "deleteFiles":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "write "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 266
    return-void

    .line 265
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1

    .line 268
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 3
    .param p0, "mInstallDir"    # Ljava/lang/String;
    .param p1, "mOptDir"    # Ljava/lang/String;
    .param p2, "bundles"    # [Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 53
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.deleteBundleData.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 56
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/b;->c(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 3
    .param p0, "mInstallDir"    # Ljava/lang/String;
    .param p1, "mNativeLibDir"    # Ljava/lang/String;
    .param p2, "bundles"    # [Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 157
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.deleteSoData.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 160
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/b;->d(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private static varargs c(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 11
    .param p0, "mInstallDir"    # Ljava/lang/String;
    .param p1, "mOptDir"    # Ljava/lang/String;
    .param p2, "bundles"    # [Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 63
    const-string v0, "dynamicLoadToCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteBundleData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-class v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    monitor-enter v0

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "deleteFiles":[Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "delete.cfg"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 68
    .local v4, "file":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 72
    .local v5, "deleteFile":Z
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    move-object v2, v6

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v6

    .line 83
    :try_start_2
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    :cond_0
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v6

    .line 75
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v7, "BundleDelete"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "read "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    instance-of v7, v6, Ljava/lang/OutOfMemoryError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_1

    .line 80
    const/4 v5, 0x1

    .line 83
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_4
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 84
    if-eqz v5, :cond_0

    .line 85
    const-string v6, "BundleDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 85
    nop

    .end local p0    # "mInstallDir":Ljava/lang/String;
    .end local p1    # "mOptDir":Ljava/lang/String;
    .end local p2    # "bundles":[Lcom/alipay/mobile/quinox/bundle/Bundle;
    throw v3

    .line 90
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "deleteFile":Z
    .restart local p0    # "mInstallDir":Ljava/lang/String;
    .restart local p1    # "mOptDir":Ljava/lang/String;
    .restart local p2    # "bundles":[Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_8

    .line 91
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v5, "files":Ljava/util/Set;
    if-eqz v1, :cond_4

    array-length v6, v1

    if-lez v6, :cond_4

    .line 93
    array-length v6, v1

    move-object v8, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v9, v1, v7

    .line 94
    .local v8, "deleteFile":Ljava/lang/String;
    move-object v8, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 95
    invoke-virtual {v8, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 97
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v8    # "deleteFile":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    :cond_4
    move-object v8, v3

    :cond_5
    array-length v6, p2

    :goto_2
    if-ge v2, v6, :cond_7

    aget-object v7, p2, v2

    .line 105
    .local v8, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v3, "location":Ljava/lang/String;
    move-object v3, v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 107
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_6
    invoke-static {v3, p1}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    nop

    .end local v3    # "location":Ljava/lang/String;
    .end local v8    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 112
    :cond_7
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 113
    .end local v5    # "files":Ljava/util/Set;
    goto/16 :goto_5

    .line 114
    :cond_8
    if-eqz v1, :cond_f

    array-length v5, v1

    if-lez v5, :cond_f

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v5, "files":Ljava/util/List;
    array-length v6, v1

    :goto_3
    if-ge v2, v6, :cond_a

    aget-object v7, v1, v2

    .line 117
    .local v3, "deleteFile":Ljava/lang/String;
    move-object v3, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 118
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v3    # "deleteFile":Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 121
    :cond_a
    const/4 v2, 0x1

    .line 122
    .local v2, "del":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 123
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 125
    .local v6, "deleteFile":Ljava/lang/String;
    const/4 v7, 0x1

    .line 126
    .local v7, "delete":Z
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 127
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    move-result v8

    move v7, v8

    .line 130
    :cond_b
    const-string v8, "BundleDelete"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Delete bundle/so file ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-eqz v7, :cond_c

    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 134
    :cond_c
    and-int/2addr v2, v7

    .line 135
    .end local v6    # "deleteFile":Ljava/lang/String;
    .end local v7    # "delete":Z
    goto :goto_4

    .line 136
    :cond_d
    if-eqz v2, :cond_e

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_f

    .line 138
    const-string v6, "BundleDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 141
    :cond_e
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 145
    .end local v1    # "deleteFiles":[Ljava/lang/String;
    .end local v2    # "del":Z
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "files":Ljava/util/List;
    :cond_f
    :goto_5
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method private static varargs d(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 12
    .param p0, "mInstallDir"    # Ljava/lang/String;
    .param p1, "mNativeLibDir"    # Ljava/lang/String;
    .param p2, "bundles"    # [Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 167
    const-string v0, "dynamicLoadToCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteSoData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-class v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    monitor-enter v0

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "deleteFiles":[Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "delete_so.cfg"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 172
    .local v4, "file":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 176
    .local v5, "deleteFile":Z
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 177
    move-object v2, v6

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v6

    .line 187
    :try_start_2
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    :cond_0
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v6

    .line 179
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v7, "BundleDelete"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "read "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    instance-of v7, v6, Ljava/lang/OutOfMemoryError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_1

    .line 184
    const/4 v5, 0x1

    .line 187
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_4
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 188
    if-eqz v5, :cond_0

    .line 189
    const-string v6, "BundleDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 189
    nop

    .end local p0    # "mInstallDir":Ljava/lang/String;
    .end local p1    # "mNativeLibDir":Ljava/lang/String;
    .end local p2    # "bundles":[Lcom/alipay/mobile/quinox/bundle/Bundle;
    throw v3

    .line 194
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "deleteFile":Z
    .restart local p0    # "mInstallDir":Ljava/lang/String;
    .restart local p1    # "mNativeLibDir":Ljava/lang/String;
    .restart local p2    # "bundles":[Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_8

    .line 195
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 196
    .local v5, "files":Ljava/util/Set;
    if-eqz v1, :cond_4

    array-length v6, v1

    if-lez v6, :cond_4

    .line 197
    array-length v6, v1

    move-object v8, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v9, v1, v7

    .line 198
    .local v8, "deleteFile":Ljava/lang/String;
    move-object v8, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 199
    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 201
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v8    # "deleteFile":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 207
    :cond_4
    move-object v8, v3

    :cond_5
    array-length v6, p2

    :goto_2
    if-ge v2, v6, :cond_7

    aget-object v7, p2, v2

    .line 208
    .local v8, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v7

    .line 209
    .local v3, "libs":Ljava/util/List;
    move-object v3, v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 210
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 211
    .local v9, "lib":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    nop

    .end local v9    # "lib":Ljava/lang/String;
    goto :goto_3

    .line 207
    .end local v3    # "libs":Ljava/util/List;
    .end local v8    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 216
    :cond_7
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 217
    .end local v5    # "files":Ljava/util/Set;
    goto/16 :goto_6

    .line 218
    :cond_8
    if-eqz v1, :cond_f

    array-length v5, v1

    if-lez v5, :cond_f

    .line 219
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v5, "files":Ljava/util/List;
    array-length v6, v1

    :goto_4
    if-ge v2, v6, :cond_a

    aget-object v7, v1, v2

    .line 221
    .local v3, "deleteFile":Ljava/lang/String;
    move-object v3, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 222
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v3    # "deleteFile":Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 225
    :cond_a
    const/4 v2, 0x1

    .line 226
    .local v2, "del":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 227
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 228
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 229
    .local v6, "deleteFile":Ljava/lang/String;
    const/4 v7, 0x1

    .line 230
    .local v7, "delete":Z
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 231
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    move-result v8

    move v7, v8

    .line 234
    :cond_b
    const-string v8, "BundleDelete"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Delete so file ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz v7, :cond_c

    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 238
    :cond_c
    and-int/2addr v2, v7

    .line 239
    .end local v6    # "deleteFile":Ljava/lang/String;
    .end local v7    # "delete":Z
    goto :goto_5

    .line 240
    :cond_d
    if-eqz v2, :cond_e

    .line 241
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_f

    .line 242
    const-string v6, "BundleDelete"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "delete "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 245
    :cond_e
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 249
    .end local v1    # "deleteFiles":[Ljava/lang/String;
    .end local v2    # "del":Z
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "files":Ljava/util/List;
    :cond_f
    :goto_6
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
