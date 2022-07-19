.class public final Lcom/alipay/mobile/quinox/bundle/d;
.super Ljava/lang/Object;
.source "BundleResMerge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/bundle/d$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-string v0, "bundlesResMerged.cfg"

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 5
    .param p0, "realPackageId"    # I

    .line 124
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    new-instance v1, Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    .line 125
    .local v0, "mergedResBundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/d;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 127
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 129
    const v2, 0xa98670

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 130
    const-string v2, "Quinox"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setCreatedBy(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 131
    const-string v2, "1.0.0"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setManifestVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 132
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setPackageId(I)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1.0.0."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 134
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "res_merge_info_v2_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "useV2Str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 82
    .local v4, "useV2":Z
    if-eqz v3, :cond_1

    .line 84
    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 91
    move-object v5, v2

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v5

    move-object v5, v2

    .line 87
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/LauncherApplication;->isMainProcess()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    move-object v5, v2

    .line 93
    :goto_0
    const-string v6, "bundlesResMergedV2.cfg"

    if-nez v3, :cond_4

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 95
    .local v5, "assetManager":Landroid/content/res/AssetManager;
    move-object v5, v7

    if-eqz v7, :cond_3

    .line 97
    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 98
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v2, v7

    if-eqz v7, :cond_2

    .line 99
    const-string v7, "true"

    move-object v3, v7

    .line 100
    const/4 v4, 0x1

    .line 101
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_2
    goto :goto_1

    .line 104
    :catchall_1
    move-exception v7

    .local v2, "e":Ljava/lang/Throwable;
    instance-of v7, v7, Ljava/io/FileNotFoundException;

    if-eqz v7, :cond_3

    .line 105
    const-string v3, "false"

    .line 109
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    .end local v5    # "assetManager":Landroid/content/res/AssetManager;
    :cond_4
    if-eqz v4, :cond_5

    .line 114
    sput-object v6, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    return-void

    .line 116
    :cond_5
    const-string v2, "bundlesResMerged.cfg"

    sput-object v2, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static a(Landroid/util/SparseArray;)Z
    .locals 10
    .param p0, "mergeInfoMap"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)Z"
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 149
    .local v0, "startTime":J
    const-string v2, "BundleResMerge"

    const-string v3, "start read bundleResMergedCfg from assets"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v3, 0x1

    new-array v3, v3, [Z

    .line 152
    .local v3, "result":[Z
    new-instance v4, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;

    invoke-direct {v4}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    new-instance v8, Lcom/alipay/mobile/quinox/bundle/d$1;

    invoke-direct {v8, v3, p0}, Lcom/alipay/mobile/quinox/bundle/d$1;-><init>([ZLandroid/util/SparseArray;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;Z)Z

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read bundleResMergedCfg from assets finished, costTime "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x0

    aget-boolean v2, v3, v2

    return v2
.end method

.method public static a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    .local v1, "name":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    const-string v0, "merged-bundles-res-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    return v0

    .line 74
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/io/InputStream;Landroid/util/SparseArray;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "mergeInfoMap"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)Z"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 262
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    const-string v2, "bundlesResMerged.cfg"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 264
    .local v2, "sources":Ljava/util/List;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 265
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    invoke-static {v3}, Lcom/alipay/mobile/quinox/bundle/d$a;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/d$a;

    move-result-object v3

    .line 267
    .local v3, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    if-nez p1, :cond_1

    .line 268
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object p1, v4

    .line 270
    :cond_1
    invoke-static {v3}, Lcom/alipay/mobile/quinox/bundle/d$a;->a(Lcom/alipay/mobile/quinox/bundle/d$a;)I

    move-result v4

    invoke-virtual {p1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v3    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    goto :goto_1

    .line 272
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 276
    .end local v2    # "sources":Ljava/util/List;
    :cond_3
    goto :goto_2

    .line 274
    :catchall_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "BundleResMerge"

    const-string v3, "BundleResMerge parse failed!"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    const/4 v1, 0x0

    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "installDir"    # Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.bundlesResMerged.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 183
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 184
    .local v2, "cfgFile":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 185
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 188
    const-string v1, "BundleResMerge"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 189
    return v3

    .line 192
    .end local v2    # "cfgFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 193
    nop

    .line 194
    return v3

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method public static a(Ljava/lang/String;Landroid/util/SparseArray;)Z
    .locals 8
    .param p0, "installDir"    # Ljava/lang/String;
    .param p1, "mergeInfoMap"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)Z"
        }
    .end annotation

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 166
    .local v0, "startTime":J
    const-string v2, "BundleResMerge"

    const-string v3, "start read bundleResMergedCfg from installDir"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v3, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/.bundlesResMerged.lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 171
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/bundle/d;->c(Ljava/lang/String;Landroid/util/SparseArray;)Z

    move-result v4

    .line 172
    .local v4, "result":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "read bundleResMergedCfg from installDir finished, costTime "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    nop

    .line 175
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 173
    return v4

    .line 175
    .end local v4    # "result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v2
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2
    .param p0, "realPackageId"    # I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "merged-bundles-res-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 3
    .param p0, "installDir"    # Ljava/lang/String;
    .param p1, "mergeInfoMap"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.bundlesResMerged.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 224
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/bundle/d;->d(Ljava/lang/String;Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method

.method private static c(Ljava/lang/String;Landroid/util/SparseArray;)Z
    .locals 6
    .param p0, "installDir"    # Ljava/lang/String;
    .param p1, "mergeInfoMap"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)Z"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 199
    .local v1, "cfgFile":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "BundleResMerge"

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found when readFromInstallDir()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return v2

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 205
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 206
    move-object v0, v4

    invoke-static {v4, p1}, Lcom/alipay/mobile/quinox/bundle/d;->a(Ljava/io/InputStream;Landroid/util/SparseArray;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 206
    return v2

    .line 207
    :catchall_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "BundleResMerge parse failed!"

    invoke-static {v3, v5, v4}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    .end local v4    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 211
    nop

    .line 212
    return v2

    .line 210
    :catchall_1
    move-exception v2

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static d(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 7
    .param p0, "installDir"    # Ljava/lang/String;
    .param p1, "mergeInfoMap"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;)V"
        }
    .end annotation

    .line 231
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 232
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 233
    .local v1, "targetFile":Ljava/io/File;
    move-object v1, v0

    invoke-static {v0}, Lcom/seiginonakama/res/utils/FileUtils;->getTempFileFor(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 234
    .local v0, "tmpFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 236
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v3, "contents":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 238
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/d$a;

    .line 239
    .local v5, "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/d$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    nop

    .end local v5    # "mergeInfo":Lcom/alipay/mobile/quinox/bundle/d$a;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 242
    sget-object v4, Lcom/alipay/mobile/quinox/bundle/d;->a:Ljava/lang/String;

    const-string v5, "bundlesResMergedV2.cfg"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 247
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    invoke-static {v1}, Lcom/seiginonakama/res/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 252
    :cond_2
    invoke-static {v0, v1}, Lcom/seiginonakama/res/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v3    # "contents":Ljava/util/List;
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v3

    .line 257
    .end local v0    # "tmpFile":Ljava/io/File;
    .end local v1    # "targetFile":Ljava/io/File;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    :cond_3
    return-void
.end method
