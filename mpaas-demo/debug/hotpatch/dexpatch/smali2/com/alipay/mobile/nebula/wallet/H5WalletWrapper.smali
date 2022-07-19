.class public Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;
.super Ljava/lang/Object;
.source "H5WalletWrapper.java"


# static fields
.field public static final HPM_FILE_NAME:Ljava/lang/String; = "hpmfile.json"

.field public static final TAG:Ljava/lang/String; = "H5WalletWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 185
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 186
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 187
    nop

    .line 188
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 189
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;->submitOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 191
    return-void

    .line 195
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 196
    .local v1, "executor":Ljava/util/concurrent/Executor;
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public static final findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 122
    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "ignoreError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getClass "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5WalletWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 92
    .local v4, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    move-object v4, v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4, p0}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 94
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 102
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    :cond_1
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v2

    .line 99
    .local v2, "t":Ljava/lang/Throwable;
    if-nez p2, :cond_2

    .line 100
    const-string v3, "failed to load class bundle."

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "ignoreError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getClass :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5WalletWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 115
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v2

    .line 112
    .local v2, "t":Ljava/lang/Throwable;
    if-nez p1, :cond_0

    .line 113
    const-string v3, "failed to load class bundle."

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 45
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 46
    return-object v1

    .line 48
    :cond_0
    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .line 52
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 53
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 54
    return-object v1

    .line 56
    :cond_0
    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 210
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 177
    invoke-static {p0}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 3

    .line 200
    const/4 v0, 0x0

    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 201
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    const-string v1, "H5WalletWrapper"

    const-string v2, "h5Service == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getHpmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    const-string v1, "H5WalletWrapper"

    .line 127
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v1, v2

    goto/16 :goto_5

    .line 130
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    move-object v3, v2

    .line 131
    .local v3, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v3, v0

    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v4

    .line 133
    .local v4, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    move-object v5, v2

    .line 134
    .local v5, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v5, v0

    move-object/from16 v6, p0

    iput-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 135
    move-object/from16 v7, p1

    iput-object v7, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 136
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getInstalledPath()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 138
    .local v9, "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    const/4 v10, 0x0

    .line 140
    .local v10, "buffer":[B
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v2

    .line 141
    .local v11, "localStoreFile":Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "getHPMFileConfig path"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not exist, return"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 168
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 143
    return-object v2

    .line 145
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v0, "fis":Ljava/io/InputStream;
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v12, "bis":Ljava/io/BufferedInputStream;
    new-instance v13, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;

    invoke-direct {v13, v12}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v13

    .line 149
    const/16 v13, 0x800

    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v13

    move-object v10, v13

    .line 150
    :goto_0
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    move-result-object v13

    move-object v14, v13

    .local v14, "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    if-eqz v13, :cond_4

    .line 151
    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 152
    const-string v15, "hpmfile.json"

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 154
    new-instance v13, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v13}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 155
    .local v13, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([B)I

    move-result v15

    move/from16 v16, v15

    .local v16, "count":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_2

    .line 156
    const/4 v2, 0x0

    move/from16 v15, v16

    .end local v16    # "count":I
    .local v15, "count":I
    invoke-virtual {v13, v10, v2, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, 0x0

    goto :goto_1

    .line 158
    .end local v15    # "count":I
    .restart local v16    # "count":I
    :cond_2
    move/from16 v15, v16

    .end local v16    # "count":I
    .restart local v15    # "count":I
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 159
    .local v2, "data":[B
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    move-object/from16 v16, v0

    .end local v0    # "fis":Ljava/io/InputStream;
    .local v16, "fis":Ljava/io/InputStream;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    nop

    .line 167
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 168
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 161
    return-object v0

    .line 163
    .end local v2    # "data":[B
    .end local v13    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "count":I
    .end local v16    # "fis":Ljava/io/InputStream;
    .restart local v0    # "fis":Ljava/io/InputStream;
    :cond_3
    move-object/from16 v16, v0

    .end local v0    # "fis":Ljava/io/InputStream;
    .restart local v16    # "fis":Ljava/io/InputStream;
    const/4 v2, 0x0

    goto :goto_0

    .line 150
    .end local v16    # "fis":Ljava/io/InputStream;
    .restart local v0    # "fis":Ljava/io/InputStream;
    :cond_4
    move-object/from16 v16, v0

    .line 167
    .end local v0    # "fis":Ljava/io/InputStream;
    .end local v11    # "localStoreFile":Ljava/io/File;
    .end local v12    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 168
    :goto_2
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    goto :goto_4

    .line 167
    :goto_3
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 168
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 131
    .end local v4    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .end local v10    # "buffer":[B
    :cond_5
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 172
    :goto_4
    const/4 v1, 0x0

    return-object v1

    .line 127
    .end local v3    # "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    :cond_6
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v1, v2

    .line 128
    :goto_5
    return-object v1
.end method

.method public static getNebulaBizResources()Landroid/content/res/Resources;
    .locals 2

    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 67
    nop

    .line 68
    const-string v1, "android-phone-wallet-nebulabiz"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public static getNebulaCoreResources()Landroid/content/res/Resources;
    .locals 2

    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 73
    nop

    .line 74
    const-string v1, "android-phone-wallet-nebula"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method public static getNebulaResources()Landroid/content/res/Resources;
    .locals 2

    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 61
    nop

    .line 62
    const-string v1, "android-phone-wallet-nebula"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 181
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method
