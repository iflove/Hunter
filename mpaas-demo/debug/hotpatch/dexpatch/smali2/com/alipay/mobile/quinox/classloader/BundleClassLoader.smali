.class public Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "BundleClassLoader.java"


# instance fields
.field private a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private b:[Ljava/io/File;

.field private c:Ljava/util/zip/ZipFile;

.field private d:Ljava/io/File;

.field private e:Z

.field private f:Z

.field private g:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/classloader/d;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

.field private mDexFile:Ldalvik/system/DexFile;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "."

    invoke-direct {p0, v1, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->e:Z

    .line 60
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->f:Z

    .line 266
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V
    .locals 18
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p3, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p4, "hostClassLoader"    # Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 87
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "."

    move-object/from16 v4, p1

    invoke-direct {v1, v0, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->e:Z

    .line 60
    iput-boolean v0, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->f:Z

    .line 266
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    iput-object v2, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 90
    move-object/from16 v5, p4

    iput-object v5, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->g:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 91
    iput-object v3, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 92
    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->f()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "optimizedDir":Ljava/lang/String;
    :try_start_0
    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mt6592"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, ".so"

    const/4 v9, 0x1

    const-string v10, "BundleClassLoader"

    if-nez v7, :cond_0

    .line 95
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isNubiaBugDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    const-string v7, "try to call bundleManager.extractBundle(mt6592)"

    invoke-static {v10, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2, v7, v9}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 103
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v11, 0x0

    if-nez v7, :cond_3

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not exists, try to call bundleManager.extractBundle(1)"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v3, v2, v11, v9}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 109
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "optimizedDir":Ljava/lang/String;
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    .end local p2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p3    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .end local p4    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    throw v0

    .line 115
    .restart local v6    # "optimizedDir":Ljava/lang/String;
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    .restart local p2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local p3    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .restart local p4    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 118
    .local v12, "start":J
    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->p()Lcom/alipay/mobile/quinox/bundle/e;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v7

    move v14, v0

    .line 119
    .local v14, "checkSignRet":Z
    move v14, v7

    if-nez v7, :cond_5

    .line 120
    const-string v7, "checkSign"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "file.length="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-wide/from16 v16, v12

    .end local v12    # "start":J
    .local v16, "start":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",file.name="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    const/4 v9, 0x0

    invoke-static {v7, v9, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    invoke-interface {v3, v2, v9, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 125
    invoke-interface/range {p3 .. p3}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->p()Lcom/alipay/mobile/quinox/bundle/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 126
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " check sign fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "optimizedDir":Ljava/lang/String;
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    .end local p2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p3    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .end local p4    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    throw v0

    .line 119
    .end local v16    # "start":J
    .restart local v6    # "optimizedDir":Ljava/lang/String;
    .restart local v12    # "start":J
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    .restart local p2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local p3    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .restart local p4    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    :cond_5
    move-wide/from16 v16, v12

    .line 129
    .end local v12    # "start":J
    .restart local v16    # "start":J
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ": checkSign, file="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cost="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v16

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v10, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v14    # "checkSignRet":Z
    .end local v16    # "start":J
    :cond_6
    nop

    .line 139
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "outputPathName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v7, "optFile":Ljava/io/File;
    const/4 v11, 0x0

    .line 142
    .local v11, "needHook":Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getVersion()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->needHookDexOpt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 143
    const/4 v11, 0x1

    .line 144
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v12

    invoke-static {v12}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->setDex2OatOptimized(Landroid/content/Context;)V

    .line 145
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v12}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->pauseDex2Oat(I)V

    .line 147
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v0, v13}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v12

    iput-object v12, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mDexFile:Ldalvik/system/DexFile;

    .line 148
    if-eqz v11, :cond_8

    .line 149
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v12}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeDex2Oat(I)V

    .line 150
    new-instance v12, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v13

    const-class v14, Lcom/alipay/mobile/quinox/classloader/DexOptServiceInToolsProcess;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    .line 151
    .local v9, "intent":Landroid/content/Intent;
    move-object v9, v12

    const-string v13, "src_path"

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v12, "opt_path"

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v12

    new-instance v13, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader$1;

    invoke-direct {v13, v1, v9}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader$1;-><init>(Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;Landroid/content/Intent;)V

    const-string v14, ""

    const-wide/16 v4, 0x1388

    invoke-virtual {v12, v13, v14, v4, v5}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;

    .line 165
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v4, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mDexFile:Ldalvik/system/DexFile;

    if-eqz v4, :cond_9

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DexfileSuccess : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v0    # "outputPathName":Ljava/lang/String;
    .end local v7    # "optFile":Ljava/io/File;
    .end local v11    # "needHook":Z
    goto :goto_2

    .line 166
    .restart local v0    # "outputPathName":Ljava/lang/String;
    .restart local v7    # "optFile":Ljava/io/File;
    .restart local v11    # "needHook":Z
    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v5, "DexFile load failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "optimizedDir":Ljava/lang/String;
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    .end local p2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p3    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .end local p4    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    .end local v0    # "outputPathName":Ljava/lang/String;
    .end local v7    # "optFile":Ljava/io/File;
    .end local v11    # "needHook":Z
    .restart local v6    # "optimizedDir":Ljava/lang/String;
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    .restart local p2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local p3    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .restart local p4    # "hostClassLoader":Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 172
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    invoke-direct {v1, v2, v3, v6, v0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/lang/String;Ljava/io/IOException;)V

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:[Ljava/io/File;

    .line 182
    return-void

    .line 175
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_a
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v4, "bundleFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "DexfileError : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", hardware="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", file.exist="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", file.length="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    const-string v7, "loadDex fail"

    invoke-static {v7, v0, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 178
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "bundleFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "t":Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "extractBundle"

    invoke-static {v5, v0, v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 135
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private a(Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/lang/String;Ljava/io/IOException;)V
    .locals 8
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p3, "optimizedDir"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/io/IOException;

    .line 194
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 195
    .local v3, "file":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const-string v5, "BundleClassLoader"

    if-eqz v1, :cond_1

    .line 196
    :try_start_1
    const-class v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lib"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/STLLibUtil;->getSupportCpuList()[Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-interface {p2, v1, v6, v7}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 200
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v6, v1}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->checkMd5(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to check md5: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", try to call bundleManager.extractBundle()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-interface {p2, p1, v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "location":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mDexFile:Ldalvik/system/DexFile;

    .line 204
    .end local v2    # "location":Ljava/lang/String;
    goto :goto_0

    .line 205
    :cond_0
    nop

    .end local p1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p2    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .end local p3    # "optimizedDir":Ljava/lang/String;
    throw p4

    .line 208
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local p2    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .restart local p3    # "optimizedDir":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not exists, try to call bundleManager.extractBundle(2)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface {p2, p1, v2, v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "srcBundleFilePath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/alipay/mobile/quinox/utils/DexFileUtil;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mDexFile:Ldalvik/system/DexFile;

    .line 213
    .end local v1    # "srcBundleFilePath":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mDexFile:Ldalvik/system/DexFile;

    if-eqz v1, :cond_2

    .line 221
    .end local v3    # "file":Ljava/io/File;
    return-void

    .line 214
    .restart local v3    # "file":Ljava/io/File;
    :cond_2
    nop

    .end local p1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .end local p2    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .end local p3    # "optimizedDir":Ljava/lang/String;
    throw p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v3    # "file":Ljava/io/File;
    .restart local p1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    .restart local p2    # "bundleManager":Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .restart local p3    # "optimizedDir":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 217
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "bundleFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DexfileError : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", hardware="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", file.exist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", file.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v4, "extraBundle_fail"

    invoke-static {v4, v1, v3, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 365
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 366
    .local v1, "strings":[Ljava/lang/String;
    move-object v1, v0

    array-length v0, v0

    new-array v0, v0, [Ljava/io/File;

    .line 367
    .local v0, "result":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 368
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    .line 445
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0, p1, v1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 450
    :goto_0
    if-eqz v0, :cond_0

    .line 455
    return-object v0

    .line 451
    :cond_0
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "BundleClassLoader("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") can\'t loadClassFromCurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "dexPatch"    # Z

    .line 225
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->e:Z

    .line 226
    return-void
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "clazz":Ljava/lang/Class;
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->e:Z

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 247
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 249
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mDexFile:Ldalvik/system/DexFile;

    invoke-virtual {v1, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 252
    goto :goto_1

    .line 250
    :catch_1
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BundleClassLoader("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") Failed to findClass("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 261
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->recordIfNeed(Ljava/lang/String;)V

    .line 263
    return-object v0
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .line 407
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 410
    .local v6, "directory":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .local v5, "file":Ljava/io/File;
    move-object v5, v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 412
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 409
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "directory":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 416
    :cond_1
    return-object v3
.end method

.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->c:Ljava/util/zip/ZipFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->c:Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 380
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->d:Ljava/io/File;

    .line 381
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->c:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Failed to new ZipFile"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 388
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->c:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_2

    .line 389
    return-object v1

    .line 393
    :cond_2
    :try_start_3
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jar:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    .line 394
    :catch_1
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 401
    .local v1, "result":Ljava/util/ArrayList;
    move-object v1, v0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLdLibraryPath()Ljava/lang/String;
    .locals 6

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:[Ljava/io/File;

    if-eqz v1, :cond_1

    .line 464
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 465
    .local v4, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 466
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .end local v4    # "directory":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNativeLibraryDirectories()[Ljava/io/File;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:[Ljava/io/File;

    return-object v0
.end method

.method protected declared-synchronized getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 422
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    .line 425
    .local v0, "pack":Ljava/lang/Package;
    move-object v0, v1

    if-nez v1, :cond_0

    .line 426
    const-string v4, "Unknown"

    const-string v5, "0.0"

    const-string v6, "Unknown"

    const-string v7, "Unknown"

    const-string v8, "0.0"

    const-string v9, "Unknown"

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 430
    .end local p0    # "this":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 421
    .end local v0    # "pack":Ljava/lang/Package;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 433
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 277
    nop

    .line 278
    invoke-static {p1}, Lcom/alipay/mobile/quinox/compat/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 280
    :try_start_0
    invoke-super {p0, p1, p2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    goto :goto_1

    .line 285
    :catchall_0
    move-exception p2

    goto :goto_0

    .line 283
    :catch_0
    move-exception p2

    goto :goto_0

    .line 281
    :catch_1
    move-exception p2

    .line 290
    :cond_0
    :goto_0
    move-object p2, v1

    :goto_1
    nop

    .line 291
    nop

    .line 293
    const/4 v0, 0x0

    if-nez p2, :cond_6

    .line 295
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 296
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 297
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 298
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/classloader/d;

    .line 299
    if-nez v2, :cond_2

    .line 300
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/classloader/d;->a(J)Lcom/alipay/mobile/quinox/classloader/d;

    move-result-object v2

    .line 301
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 303
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/classloader/d;->a()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 304
    move-object v2, v1

    .line 308
    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    .line 309
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 310
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->g:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v6}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->l()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Class;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 312
    if-nez p2, :cond_4

    .line 314
    :try_start_4
    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->g:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b()Ldalvik/system/PathClassLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 317
    goto :goto_4

    .line 315
    :catch_2
    move-exception v4

    .line 319
    :cond_4
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 320
    :try_start_6
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    .line 319
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 326
    :cond_5
    :goto_5
    goto :goto_6

    .line 325
    :catchall_2
    move-exception v1

    goto :goto_6

    :catchall_3
    move-exception v1

    const/4 v3, 0x0

    goto :goto_6

    .line 293
    :cond_6
    const/4 v3, 0x0

    .line 336
    :goto_6
    if-nez p2, :cond_9

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "BundleClassLoader("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") can\'t find class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", depends: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 342
    invoke-interface {v4}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->l()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", parent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pathClsLoader: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->g:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b()Ldalvik/system/PathClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    if-eqz v3, :cond_7

    .line 346
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 347
    const-string v4, "quinox_retry_load"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 349
    :try_start_9
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->g:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b()Ldalvik/system/PathClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    .line 352
    move-object p2, p1

    goto :goto_7

    .line 350
    :catch_3
    move-exception p1

    .line 356
    :cond_7
    :goto_7
    if-eqz p2, :cond_8

    goto :goto_8

    .line 357
    :cond_8
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-direct {p1, v2, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 361
    :cond_9
    :goto_8
    return-object p2
.end method

.method public markDPDexPatch()V
    .locals 2

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->f:Z

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "markDPDexPatch true for:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mBundle:Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BundleClassLoader"

    invoke-static {v1, v0}, Lcom/alipay/dexpatch/compat/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method public setNativeLibraryDirectories([Ljava/io/File;)V
    .locals 0
    .param p1, "nativeLibraryDirectories"    # [Ljava/io/File;

    .line 479
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->b:[Ljava/io/File;

    .line 480
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BundleClassLoader["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->mDexFile:Ldalvik/system/DexFile;

    invoke-virtual {v1}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
