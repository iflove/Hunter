.class public final Lcom/alipay/mobile/quinox/hotpath/a;
.super Ljava/lang/Object;
.source "DexPatch.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/quinox/hotpath/a;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 32
    const-string v0, "plugins_patch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/a;->a:Ljava/io/File;

    .line 33
    return-void
.end method


# virtual methods
.method public final onBundleLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 62
    instance-of v0, p2, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    const-string v1, "DexPatch"

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/hotpath/a;->a:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 64
    .local v3, "dexPatch":Ljava/io/File;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "files":Ljava/util/ArrayList;
    move-object v2, v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/a;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->p()Lcom/alipay/mobile/quinox/bundle/e;

    move-result-object v0

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/quinox/bundle/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/hotpath/a;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 72
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundleManager()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v4}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x1

    invoke-static {p2, v0, v2, v5, v4}, Landroidx/multidex/MultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;ZZ)V

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v2    # "files":Ljava/util/ArrayList;
    :cond_0
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "dexPatch":Ljava/io/File;
    :cond_1
    return-void

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DexPatch.onBundleLoad("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is not BundleClassLoader"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onBundleUnload(Ljava/lang/String;)V
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/quinox/hotpath/a;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getHostClassLoader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x0

    .line 88
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    move-object v2, v0

    instance-of v0, v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(Z)V

    .line 91
    :cond_0
    return-void
.end method
