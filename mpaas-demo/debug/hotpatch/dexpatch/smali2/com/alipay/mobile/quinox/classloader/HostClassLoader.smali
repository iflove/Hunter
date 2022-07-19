.class public Lcom/alipay/mobile/quinox/classloader/HostClassLoader;
.super Ljava/lang/ClassLoader;
.source "HostClassLoader.java"


# static fields
.field public static volatile b:Z

.field public static volatile c:Z


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/classloader/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

.field private final f:Lcom/alipay/mobile/quinox/classloader/a;

.field private final g:Ldalvik/system/PathClassLoader;

.field private final h:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/classloader/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ClassNotFoundException;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Z

    .line 54
    sput-boolean v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundleManager;Ldalvik/system/PathClassLoader;)V
    .locals 5
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p4, "pathClassLoader"    # Ldalvik/system/PathClassLoader;

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Z

    .line 101
    move-object v2, p2

    check-cast v2, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 102
    iput-object p3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 103
    iput-object p4, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Ldalvik/system/PathClassLoader;

    .line 104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Ljava/util/HashMap;

    .line 105
    new-instance v2, Lcom/alipay/mobile/quinox/classloader/a;

    invoke-direct {v2, p3, p0}, Lcom/alipay/mobile/quinox/classloader/a;-><init>(Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->f:Lcom/alipay/mobile/quinox/classloader/a;

    .line 106
    new-instance v2, Ljava/lang/ClassNotFoundException;

    const-string v3, "HostClassLoader"

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/lang/ClassNotFoundException;

    .line 110
    sput-boolean v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mShouldOptimizeBootFinishSpeed:Z

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/classloader/d;->a(J)Lcom/alipay/mobile/quinox/classloader/d;

    move-result-object v1

    .line 114
    .local v1, "lock":Lcom/alipay/mobile/quinox/classloader/d;
    const-class v2, Lcom/alipay/mobile/quinox/classloader/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v2, Lcom/alipay/mobile/quinox/classloader/c;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Lcom/alipay/mobile/quinox/classloader/c;-><init>(Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/util/Set;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v2, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->needOptHostClassLoader()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Z

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mNeedOptClassLoader: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mytest"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;)Lcom/alipay/mobile/quinox/classloader/c;
    .locals 4
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "dependNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/classloader/c;"
        }
    .end annotation

    .line 70
    sget-boolean v0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Z

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    const-string v2, "android-phone-mobilesdk-quinox"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c:Z

    .line 77
    :cond_0
    monitor-exit v0

    .local v0, "hitTest":Lcom/alipay/mobile/quinox/classloader/c;
    goto :goto_0

    .end local v0    # "hitTest":Lcom/alipay/mobile/quinox/classloader/c;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 80
    .restart local v0    # "hitTest":Lcom/alipay/mobile/quinox/classloader/c;
    :goto_0
    sget-boolean v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b:Z

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/c;

    goto :goto_1

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 84
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/classloader/c;

    move-object v0, v2

    .line 85
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    :goto_1
    if-nez v0, :cond_4

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 89
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/classloader/c;

    .line 90
    move-object v0, v2

    if-nez v2, :cond_3

    .line 91
    new-instance v2, Lcom/alipay/mobile/quinox/classloader/c;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-direct {v2, v3, p2}, Lcom/alipay/mobile/quinox/classloader/c;-><init>(Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/util/Set;)V

    move-object v0, v2

    .line 92
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 96
    :cond_4
    :goto_2
    return-object v0

    .line 85
    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 8
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "classLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ", className="

    const-string v3, "createBundleClassLoader(bundleName="

    const-string v4, "HostClassLoader"

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    .line 379
    .local v1, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "), bundle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 382
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getDependNames()Ljava/util/Set;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/alipay/mobile/quinox/classloader/c;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/quinox/classloader/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), ignore: no export-package hit."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_1

    .line 383
    .restart local v1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    goto :goto_1

    .line 388
    .end local v1    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), ignore: bundleName is empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Z)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 355
    move-object v0, v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 356
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    .line 359
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "dependNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    .line 219
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 220
    return v1

    .line 222
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/alipay/mobile/quinox/classloader/c;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    .line 224
    .local v2, "bundles":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    return v1

    .line 227
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 6

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->m()Ljava/util/Collection;

    move-result-object v0

    .line 453
    .local v0, "bundles":Ljava/util/Collection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 454
    .local v3, "_bundles":Ljava/util/List;
    move-object v3, v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 456
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 458
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 460
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v2, v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containCode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getInitLevel()I

    move-result v4

    const v5, 0xa98670

    if-eq v4, v5, :cond_0

    .line 461
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    goto :goto_0

    .line 465
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 4
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "classLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    const-string v1, "HostClassLoader"

    if-nez p1, :cond_0

    .line 407
    const-string v2, "createBundleClassLoader(null), ignore."

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->containCode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createBundleClassLoader("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), ignore: !bundle.containCode()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start to createBundleClassLoader("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->f:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished to createBundleClassLoader("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): classLoader="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Class;
    .locals 10
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "dependNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    .line 234
    .local v0, "clazz":Ljava/lang/Class;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 235
    .local v3, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b(Ljava/lang/String;Z)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v1

    move-object v4, v2

    .line 238
    .local v4, "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    move-object v4, v1

    if-eqz v1, :cond_1

    .line 240
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 243
    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    goto :goto_0

    .line 247
    .end local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :cond_0
    move-object v4, v2

    :cond_1
    :goto_0
    if-nez v0, :cond_c

    .line 248
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/alipay/mobile/quinox/classloader/c;

    move-result-object v1

    .line 249
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/quinox/classloader/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v5, v2

    .line 250
    .local v5, "bundles":Ljava/util/List;
    move-object v5, v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 254
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 255
    .local v1, "iterator":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 256
    .local v2, "lazyBundles":Ljava/util/List;
    :cond_3
    :goto_1
    const-string v6, "HostClassLoader"

    if-nez v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 258
    iget-object v7, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 260
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b(Ljava/lang/String;Z)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v7

    .line 261
    .restart local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    move-object v4, v7

    if-nez v7, :cond_7

    .line 265
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android-phone-mobilesdk-mtop"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 266
    const-string v7, "com.taobao.android.ssologinwrapper"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 267
    const-string v7, "com.taobao.android.sso."

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 268
    const-string v7, "com.alipay.android.phone.mobilesdk.mtopbiz"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 269
    :cond_4
    const-string v7, "give up create BundleClassLoader(android-phone-mobilesdk-mtop)"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    :cond_5
    if-nez v2, :cond_6

    .line 272
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 274
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_7
    :try_start_1
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    .line 281
    :goto_2
    goto :goto_1

    .line 279
    :catch_1
    move-exception v6

    goto :goto_2

    .line 286
    .end local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :cond_8
    if-nez v0, :cond_c

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 287
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 288
    .local v7, "_iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    if-nez v0, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 289
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "createBundleClassLoader: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mytest"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v8

    .line 292
    .restart local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    move-object v4, v8

    if-nez v8, :cond_a

    .line 293
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LogUtil;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Finished to createBundleClassLoader("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): bundleClassLoader=null, className="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 299
    :cond_a
    :try_start_2
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v8

    .line 302
    :goto_4
    goto :goto_3

    .line 300
    :catch_2
    move-exception v8

    goto :goto_4

    .line 251
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "lazyBundles":Ljava/util/List;
    .end local v4    # "bundleClassLoader":Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .end local v7    # "_iterator":Ljava/util/Iterator;
    :cond_b
    :goto_5
    return-object v2

    .line 307
    .end local v5    # "bundles":Ljava/util/List;
    :cond_c
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/ClassLoader;
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "create"    # Z

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Ldalvik/system/PathClassLoader;

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b(Ljava/lang/String;Z)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    move-result-object v1

    .line 332
    move-object v0, v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Ldalvik/system/PathClassLoader;

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create BundleClassLoader(bundleName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "). return PathClassLoader instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HostClassLoader"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public final b()Ldalvik/system/PathClassLoader;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->g:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

.method public final c()V
    .locals 5

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$1;-><init>(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V

    const-wide/32 v2, 0x1d4c0

    const-string v4, "bundle_manager_verify"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;

    .line 440
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$2;-><init>(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V

    const-string v2, "createBundleClassLoaders"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public containsBundleClassLoader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
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

    .line 140
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->recordIfNeed(Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 149
    sget-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mLauncherActivated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    sget-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mShouldOptimizeBootFinishSpeed:Z

    if-nez v0, :cond_1

    .line 155
    const-string v0, "com.alipay.android.app.MspService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.alipay.android.app.TransProcessPayActivity"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->h:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->setFirstClass(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mShouldOptimizeBootFinishSpeed:Z

    .line 165
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/quinox/compat/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "clazz":Ljava/lang/Class;
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->k:Z

    if-eqz v1, :cond_2

    const-string v1, "com.alipay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 177
    :cond_3
    :goto_0
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->r()Z

    move-result v1

    if-nez v1, :cond_6

    .line 178
    const-string v1, "android-phone-mobilesdk-quinox"

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->l()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 180
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 181
    .local v1, "currentThreadId":J
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/classloader/d;

    const/4 v4, 0x0

    .line 182
    .local v4, "lock":Lcom/alipay/mobile/quinox/classloader/d;
    move-object v4, v3

    if-nez v3, :cond_4

    .line 183
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/classloader/d;->a(J)Lcom/alipay/mobile/quinox/classloader/d;

    move-result-object v3

    move-object v4, v3

    .line 184
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/classloader/d;->a()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-nez v3, :cond_5

    .line 187
    const/4 v4, 0x0

    .line 191
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 192
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    :try_start_2
    const-string v3, "android-phone-mobilesdk-quinox"

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->e:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v5}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->l()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0, p1, v3, v5}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 194
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 194
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "clazz":Ljava/lang/Class;
    .end local p1    # "className":Ljava/lang/String;
    .end local p2    # "resolve":Z
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 197
    .end local v1    # "currentThreadId":J
    .end local v4    # "lock":Lcom/alipay/mobile/quinox/classloader/d;
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local p1    # "className":Ljava/lang/String;
    .restart local p2    # "resolve":Z
    :catchall_1
    move-exception v1

    nop

    .line 210
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 214
    return-object v0

    .line 211
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->j:Ljava/lang/ClassNotFoundException;

    throw v1

    .line 166
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_8
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HostClassLoader failed to load class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
