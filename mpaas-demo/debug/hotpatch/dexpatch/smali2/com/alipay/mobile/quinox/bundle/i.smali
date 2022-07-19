.class public final Lcom/alipay/mobile/quinox/bundle/i;
.super Ljava/lang/Object;
.source "NativeLibUpdate.java"


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

    .line 252
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeBack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeLibUpdate"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 259
    .local v2, "deleteFiles":[Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 260
    move-object v0, v3

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringArray2(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 265
    return-void

    .line 264
    .end local v2    # "deleteFiles":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    .line 262
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

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 265
    return-void

    .line 264
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1

    .line 267
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 3
    .param p0, "mInstallDir"    # Ljava/lang/String;
    .param p1, "mNativeLibDir"    # Ljava/lang/String;
    .param p2, "bundles"    # [Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 146
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.extractSosFromBundle.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 149
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/i;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p0, "mInstallDir"    # Ljava/lang/String;
    .param p1, "mNativeLibDir"    # Ljava/lang/String;
    .param p2, "sos"    # [Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.recoverSosFromApk.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 32
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private static varargs b(Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/mobile/quinox/bundle/Bundle;)V
    .locals 19
    .param p0, "mInstallDir"    # Ljava/lang/String;
    .param p1, "mNativeLibDir"    # Ljava/lang/String;
    .param p2, "bundles"    # [Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 156
    move-object/from16 v1, p2

    const-string v0, "dynamicLoadToCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractSosFromBundle:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-class v2, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    monitor-enter v2

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "bundlesToExtract":[Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "extractBundleLibs.cfg"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v5, p0

    :try_start_1
    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v6, v4

    .line 161
    .local v6, "file":Ljava/io/File;
    move-object v6, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_2

    .line 162
    const/4 v7, 0x0

    .line 163
    .local v7, "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 165
    .local v8, "deleteFile":Z
    :try_start_2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 166
    move-object v7, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    .line 176
    :try_start_3
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 178
    :cond_0
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v9, "NativeLibUpdate"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    instance-of v9, v0, Ljava/lang/OutOfMemoryError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_1

    .line 173
    const/4 v8, 0x1

    .line 176
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_5
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 178
    if-eqz v8, :cond_0

    .line 179
    const-string v0, "NativeLibUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delete file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 179
    nop

    .end local p0    # "mInstallDir":Ljava/lang/String;
    .end local p1    # "mNativeLibDir":Ljava/lang/String;
    .end local p2    # "bundles":[Lcom/alipay/mobile/quinox/bundle/Bundle;
    throw v0

    .line 185
    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "deleteFile":Z
    .restart local p0    # "mInstallDir":Ljava/lang/String;
    .restart local p1    # "mNativeLibDir":Ljava/lang/String;
    .restart local p2    # "bundles":[Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_8

    .line 187
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 188
    .local v7, "files":Ljava/util/Set;
    if-eqz v3, :cond_4

    array-length v8, v3

    if-lez v8, :cond_4

    .line 189
    array-length v8, v3

    move-object v10, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    aget-object v11, v3, v9

    .line 190
    .local v10, "bundleName":Ljava/lang/String;
    move-object v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 191
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v10    # "bundleName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 197
    :cond_4
    move-object v10, v4

    :cond_5
    array-length v8, v1

    :goto_2
    if-ge v0, v8, :cond_7

    aget-object v9, v1, v0

    .line 198
    .local v10, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-virtual {v9}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v4, "bundleName":Ljava/lang/String;
    move-object v4, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 200
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v4    # "bundleName":Ljava/lang/String;
    .end local v10    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    :cond_7
    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 205
    .end local v7    # "files":Ljava/util/Set;
    goto/16 :goto_6

    .line 207
    :cond_8
    if-eqz v3, :cond_10

    array-length v7, v3

    if-lez v7, :cond_10

    .line 208
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v7, "files":Ljava/util/List;
    array-length v8, v3

    move-object v9, v4

    :goto_3
    if-ge v0, v8, :cond_a

    aget-object v10, v3, v0

    .line 210
    .local v9, "bundleName":Ljava/lang/String;
    move-object v9, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 211
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v9    # "bundleName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 215
    :cond_a
    const/4 v0, 0x1

    .line 216
    .local v0, "result":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v4

    .line 217
    .local v8, "iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 218
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 219
    .local v10, "bundleName":Ljava/lang/String;
    const/4 v11, 0x1

    .line 221
    .local v11, "extracted":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v12, v10}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v12

    .line 222
    .local v4, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v4, v12

    if-nez v12, :cond_b

    .line 223
    const-string v12, "NativeLibUpdate"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Cannot find Bundle ("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "), take as extracted"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 225
    :cond_b
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getNativeLibs()Ljava/util/List;

    move-result-object v12

    .line 226
    .local v9, "nativeLibs":Ljava/util/List;
    move-object v9, v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    .line 227
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 228
    .local v12, "sos":[Ljava/lang/String;
    invoke-interface {v9, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v13

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v15, v12

    move-object/from16 v16, p1

    invoke-static/range {v13 .. v18}, Lcom/alipay/mobile/quinox/bundle/a;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v13

    move v11, v13

    .line 232
    .end local v12    # "sos":[Ljava/lang/String;
    :cond_c
    const-string v12, "NativeLibUpdate"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Extract bundle sos ("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ") : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v9    # "nativeLibs":Ljava/util/List;
    :goto_5
    if-eqz v11, :cond_d

    .line 235
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 237
    :cond_d
    and-int/2addr v0, v11

    .line 238
    .end local v4    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local v10    # "bundleName":Ljava/lang/String;
    .end local v11    # "extracted":Z
    goto/16 :goto_4

    .line 239
    :cond_e
    if-eqz v0, :cond_f

    .line 240
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_10

    .line 241
    const-string v4, "NativeLibUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Extract "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 244
    :cond_f
    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 248
    .end local v0    # "result":Z
    .end local v3    # "bundlesToExtract":[Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "files":Ljava/util/List;
    .end local v8    # "iterator":Ljava/util/Iterator;
    :cond_10
    :goto_6
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    :goto_7
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7
.end method

.method private static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 39
    const-string v0, "dynamicLoadToCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recoverSosFromApk:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->array2String([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-class v0, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;

    monitor-enter v0

    .line 42
    nop

    .line 43
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "extractApkLibs.cfg"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    .line 45
    nop

    .line 46
    nop

    .line 48
    :try_start_1
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringArray2(Ljava/io/BufferedInputStream;)[Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :try_start_3
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 61
    :cond_0
    goto :goto_2

    .line 50
    :catchall_0
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object p0, v2

    .line 51
    :goto_0
    :try_start_4
    const-string v6, "NativeLibUpdate"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    instance-of v5, v5, Ljava/lang/OutOfMemoryError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_1

    .line 56
    const/4 v5, 0x1

    goto :goto_1

    .line 52
    :cond_1
    const/4 v5, 0x0

    .line 59
    :goto_1
    :try_start_5
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 61
    if-eqz v5, :cond_0

    .line 62
    const-string p0, "NativeLibUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 59
    :catchall_2
    move-exception p1

    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 62
    throw p1

    .line 68
    :cond_2
    :goto_2
    if-eqz p2, :cond_7

    .line 70
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 71
    if-eqz v2, :cond_4

    array-length p1, v2

    if-lez p1, :cond_4

    .line 72
    array-length p1, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p1, :cond_4

    aget-object v5, v2, v3

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 74
    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 80
    :cond_4
    array-length p1, p2

    :goto_4
    if-ge v4, p1, :cond_6

    aget-object v2, p2, v4

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 82
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 86
    :cond_6
    invoke-static {v1, p0}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 87
    goto/16 :goto_7

    .line 89
    :cond_7
    if-eqz v2, :cond_c

    array-length p0, v2

    if-lez p0, :cond_c

    .line 94
    sput v4, Lcom/alipay/mobile/quinox/bundle/j;->b:I

    .line 96
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 97
    array-length p2, v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, p2, :cond_9

    aget-object v6, v2, v5

    .line 98
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 99
    invoke-interface {p0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 103
    :cond_9
    nop

    .line 104
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/apkfile/ApkFile;

    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcom/alipay/mobile/quinox/apkfile/ApkFile;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 107
    if-eqz p2, :cond_a

    .line 109
    :try_start_6
    invoke-static {p2, v2, p1, v3}, Lcom/alipay/mobile/quinox/bundle/a;->a(Ljava/util/zip/ZipFile;[Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 113
    goto :goto_6

    .line 110
    :catchall_3
    move-exception p1

    .line 111
    nop

    .line 112
    :try_start_7
    const-string v2, "NativeLibUpdate"

    invoke-static {v2, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 114
    :goto_6
    const-string p1, "NativeLibUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "recoverSosFromApk.extractSosFromZipFile[java.zip]("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), result="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_a
    if-eqz v3, :cond_b

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_c

    .line 134
    const-string p0, "NativeLibUpdate"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Extrace "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 137
    :cond_b
    invoke-static {v1, p0}, Lcom/alipay/mobile/quinox/bundle/i;->a(Ljava/io/File;Ljava/util/Collection;)V

    .line 141
    :cond_c
    :goto_7
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method
