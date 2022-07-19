.class public Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;
.super Ljava/lang/Object;
.source "ApplicationManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/core/ApplicationManager;


# static fields
.field public static final KEY_APPLICATION_MANAGER:Ljava/lang/String; = "ApplicationManager"

.field public static final KEY_APPLICATION_MANAGER_ENTRY_APP:Ljava/lang/String; = "ApplicationManager.EntryApp"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/app/IApplicationEngine;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/framework/app/IApplicationInstaller;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    .line 103
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 518
    .local v2, "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 519
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    return-object v2

    .line 523
    .end local v2    # "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :cond_0
    goto :goto_0

    .line 525
    :cond_1
    return-object v1
.end method

.method private a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 3
    .param p1, "targetAppDes"    # Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .param p2, "sceneParams"    # Landroid/os/Bundle;
    .param p3, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 386
    invoke-direct {p0, p1, p3}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroidx/fragment/app/FragmentActivity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    .local v1, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v1, v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->setAppId(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->h:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;Landroid/os/Bundle;)V

    .line 389
    return-object v1
.end method

.method private a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroidx/fragment/app/FragmentActivity;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 11
    .param p1, "targetAppDes"    # Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .param p2, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 402
    .local v3, "engineType":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/IApplicationEngine;

    move-object v4, v2

    .line 404
    .local v4, "engine":Lcom/alipay/mobile/framework/app/IApplicationEngine;
    move-object v4, v1

    if-eqz v1, :cond_0

    .line 405
    invoke-interface {v4}, Lcom/alipay/mobile/framework/app/IApplicationEngine;->createApplication()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_0
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createApplicationByDescription(): [IApplicationEngine engine == null, engineType= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v4    # "engine":Lcom/alipay/mobile/framework/app/IApplicationEngine;
    goto :goto_0

    .line 410
    :cond_1
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "createApplicationByDescription(): [targetAppDes.engineType is empty]"

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :goto_0
    if-nez v0, :cond_5

    .line 414
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "createApplicationByDescription(): [failed to create application by IApplicationEngine]"

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "targetAppClassName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v2

    .line 419
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    move-object v6, v5

    if-eqz v5, :cond_3

    .line 420
    invoke-virtual {v6, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v7, v2

    .line 421
    .local v7, "clazz":Ljava/lang/Class;
    move-object v7, v5

    if-eqz v5, :cond_3

    .line 422
    if-nez p2, :cond_2

    .line 423
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    goto :goto_1

    .line 425
    :cond_2
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroidx/fragment/app/FragmentActivity;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    move-object v9, v2

    .line 426
    .local v9, "constructor":Ljava/lang/reflect/Constructor;
    move-object v9, v8

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 427
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v10

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 432
    .end local v7    # "clazz":Ljava/lang/Class;
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_3
    :goto_1
    nop

    instance-of v5, v1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v5, :cond_4

    .line 436
    move-object v5, v1

    check-cast v5, Lcom/alipay/mobile/framework/app/MicroApplication;

    move-object v0, v5

    .line 441
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_2

    .line 433
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    :cond_4
    new-instance v5, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "App "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not a App"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    .end local v0    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "engineType":Ljava/lang/String;
    .end local v4    # "targetAppClassName":Ljava/lang/String;
    .end local p1    # "targetAppDes":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .end local p2    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v0    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v3    # "engineType":Ljava/lang/String;
    .restart local v4    # "targetAppClassName":Ljava/lang/String;
    .restart local p1    # "targetAppDes":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .restart local p2    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :catchall_0
    move-exception v5

    .line 439
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleDescriptionInitFail(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/Throwable;)V

    .line 440
    new-instance v2, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Create App Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v5}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 444
    .end local v1    # "object":Ljava/lang/Object;
    .end local v4    # "targetAppClassName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 902
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    monitor-enter v2

    .line 903
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 904
    .local v4, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v4, v5

    if-eqz v5, :cond_0

    .line 905
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " @ "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 907
    .end local v4    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_0
    goto :goto_0

    .line 908
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 909
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    monitor-enter v1

    .line 910
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 911
    .restart local v4    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v4, v3

    if-eqz v3, :cond_2

    .line 912
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " @ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(Isolate)\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .end local v4    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_2
    goto :goto_1

    .line 915
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 915
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 908
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "app"    # Lcom/alipay/mobile/framework/app/MicroApplication;
    .param p2, "params"    # Landroid/os/Bundle;

    const-string/jumbo v0, "startFromExternal"

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "clearTop":Z
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const-string v3, "appClearTop"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 321
    .local v3, "c":Ljava/lang/Object;
    sget-object v4, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doRestart(): appClearTop : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 323
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 324
    :cond_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 325
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 326
    :cond_1
    if-eqz v3, :cond_3

    .line 327
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 331
    .end local v3    # "c":Ljava/lang/Object;
    :cond_2
    move-object v3, v2

    :cond_3
    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_7

    .line 333
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 334
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    .local v3, "obj":Ljava/lang/Object;
    move-object v3, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 336
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setStartFromExternal(Z)V

    goto :goto_1

    .line 337
    :cond_4
    instance-of v0, v3, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 338
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setStartFromExternal(Z)V

    goto :goto_1

    .line 340
    :cond_5
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setStartFromExternal(Z)V

    .line 342
    .end local v3    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 343
    :cond_6
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setStartFromExternal(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    goto :goto_1

    .line 345
    :catchall_0
    move-exception v0

    .line 346
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 352
    if-eqz v1, :cond_9

    .line 354
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    move-object v3, v0

    .local v3, "tmp":Lcom/alipay/mobile/framework/app/MicroApplication;
    if-eq p1, v0, :cond_8

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doRestart() pop appId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto :goto_2

    .line 359
    .end local v3    # "tmp":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_8
    goto :goto_5

    .line 360
    :cond_9
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 361
    .local v0, "tmpStack":Ljava/util/Stack;
    :goto_3
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq p1, v3, :cond_a

    .line 362
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 364
    :cond_a
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 365
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 367
    :goto_4
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 368
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 370
    :cond_b
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->stop()V

    .line 371
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v3, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doRestart() bring appId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to top"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v0    # "tmpStack":Ljava/util/Stack;
    :cond_c
    :goto_5
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "doRestart:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", clearTop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", stack="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "APM_FRAMEWORK_FINISHED"

    invoke-static {v3, v2, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->restart(Landroid/os/Bundle;)V

    .line 381
    invoke-static {v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleMicroAppStartupSuccess(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 8
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppDes"    # Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v0, "startFromExternal"

    const-string v1, "ap_framework_sceneId"

    .line 260
    invoke-direct {p0, p2, p4, p5}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 261
    .local v4, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v4, v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->setSourceId(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    move-object v5, v3

    .line 264
    .local v5, "referrerApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v5, v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->setReferrer(Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-virtual {v4, p2}, Lcom/alipay/mobile/framework/app/MicroApplication;->setmDes(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 270
    if-eqz p3, :cond_5

    .line 272
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v3

    .line 274
    .local v2, "obj":Ljava/lang/Object;
    move-object v2, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 275
    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setStartFromExternal(Z)V

    goto :goto_0

    .line 276
    :cond_1
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 277
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setStartFromExternal(Z)V

    .line 281
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "sceneId":Ljava/lang/String;
    goto :goto_2

    .line 284
    .end local v0    # "sceneId":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 285
    .restart local v0    # "sceneId":Ljava/lang/String;
    :goto_1
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_2
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->setSceneId(Ljava/lang/String;)V

    .line 288
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "doStart ap_sceneId = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v0    # "sceneId":Ljava/lang/String;
    goto :goto_3

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_5
    :goto_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const-string v1, "APM_FRAMEWORK_FINISHED"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v4, p3}, Lcom/alipay/mobile/framework/app/MicroApplication;->create(Landroid/os/Bundle;)V

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->stop()V

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=== >doStart:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->start()V

    .line 306
    invoke-static {v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v0

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleMicroAppStartupSuccess(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Z
    .locals 9
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "bRet":Z
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v7

    .line 153
    .local v7, "targetAppDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startApp() targetAppDescription="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 156
    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v0, 0x1

    .line 163
    :goto_0
    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    invoke-static {v8}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v2

    const-string v3, "2004"

    invoke-virtual {v2, p2, v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleMicroAppStartupFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->h:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getStartAppExceptionManager()Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v8, p2, v3}, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->onStartAppFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    goto :goto_0

    .line 165
    :cond_0
    invoke-static {v8}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v1

    const-string v2, "1000"

    invoke-virtual {v1, p2, v2}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleMicroAppStartupFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->h:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getStartAppExceptionManager()Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;

    move-result-object v1

    move-object v3, v8

    .line 167
    .local v3, "startAppExceptionManager":Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;
    invoke-virtual {v1, v8, p2, v2}, Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;->onStartAppFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v3    # "startAppExceptionManager":Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;
    :goto_1
    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->h:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public varargs addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 2
    .param p1, "descriptions"    # [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 581
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    :cond_0
    return-void
.end method

.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0
    .param p1, "applicationContext"    # Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 654
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->h:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 655
    return-void
.end method

.method public clear()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 670
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public clearTop(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 4
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 691
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    move-object v1, v0

    .local v1, "tmp":Lcom/alipay/mobile/framework/app/MicroApplication;
    if-eq p1, v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 693
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 694
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearTop() pop appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=== >clearTop, stack="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public createAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 180
    .local v2, "targetAppDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroidx/fragment/app/FragmentActivity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    move-object v3, v1

    .line 182
    .local v3, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v3, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setAppId(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->h:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 184
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->setSourceId(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->create(Landroid/os/Bundle;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->stop()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "=== >createAppById:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", stack="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v3

    .line 195
    .end local v3    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_1
    return-object v1
.end method

.method public varargs deleteDescriptionByAppId([Ljava/lang/String;)Z
    .locals 8
    .param p1, "appIds"    # [Ljava/lang/String;

    .line 790
    const/4 v0, 0x1

    .line 791
    .local v0, "bRet":Z
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 792
    .local v4, "appId":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleteDescriptionByAppId(appId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const/4 v5, 0x0

    .line 794
    .local v5, "remove":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 795
    iget-object v6, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 796
    .local v2, "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v2, v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 797
    iget-object v6, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 798
    const/4 v5, 0x1

    .line 799
    goto :goto_2

    .line 801
    .end local v2    # "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :cond_0
    goto :goto_1

    .line 803
    :cond_1
    :goto_2
    and-int/2addr v0, v5

    .line 791
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "remove":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 805
    :cond_2
    return v0
.end method

.method public exit()V
    .locals 4

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 661
    .local v0, "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exit() pop appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 663
    .end local v0    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    goto :goto_0

    .line 664
    :cond_0
    return-void
.end method

.method public findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .line 486
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 487
    return-object v1

    .line 490
    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 491
    .local v0, "lookupAppStack":Ljava/util/Stack;
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    monitor-enter v2

    .line 492
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 493
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 494
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    monitor-enter v3

    .line 495
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 496
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 499
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 500
    .local v3, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    return-object v3

    .line 503
    .end local v3    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_1
    goto :goto_0

    .line 505
    :cond_2
    return-object v1

    .line 496
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 493
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public findAppsById(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, "foundApps":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 463
    .local v3, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v3, v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v3    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_0
    goto :goto_0

    .line 467
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    monitor-enter v2

    .line 470
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 471
    .restart local v3    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v3, v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 472
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    .end local v3    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_2
    goto :goto_1

    .line 475
    :cond_3
    monitor-exit v2

    .line 477
    return-object v0

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 467
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "ret":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 533
    .local v2, "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    move-object v0, v2

    .line 535
    goto :goto_1

    .line 537
    .end local v2    # "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :cond_0
    goto :goto_0

    .line 539
    :cond_1
    :goto_1
    if-nez v0, :cond_5

    .line 540
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/DescriptionManager;->getBundleNameByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "bundleName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/DescriptionManager;->isLazyBundle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 551
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 552
    .local v3, "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 553
    move-object v0, v3

    .line 554
    goto :goto_3

    .line 556
    .end local v3    # "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :cond_3
    goto :goto_2

    .line 559
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 560
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/framework/DescriptionManager;->findApplicationDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 561
    .local v2, "appDesList":Ljava/util/List;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 562
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 563
    .restart local v3    # "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    iget-object v4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    move-object v0, v3

    .line 571
    .end local v1    # "bundleName":Ljava/lang/String;
    .end local v2    # "appDesList":Ljava/util/List;
    .end local v3    # "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    :cond_5
    return-object v0
.end method

.method public finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 450
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findAppsById(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 452
    .local v1, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    sget-object v2, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finishApp(): App: [targetId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] => destroy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 454
    .end local v1    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method

.method public getActiveActivityCount()I
    .locals 5

    .line 871
    const/4 v0, 0x0

    .line 873
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v1, "apps":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    monitor-enter v2

    .line 875
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 876
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 877
    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    monitor-enter v3

    .line 878
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 879
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 882
    .local v3, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v3, v4

    instance-of v4, v4, Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v4, :cond_0

    .line 883
    move-object v4, v3

    check-cast v4, Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActiveActivityCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 885
    .end local v3    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_0
    goto :goto_0

    .line 886
    :cond_1
    return v0

    .line 879
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 876
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public getEntryAppName()Ljava/lang/String;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    return-object v0

    .line 706
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 9
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    .line 204
    .local v0, "installer":Lcom/alipay/mobile/framework/app/IApplicationInstaller;
    new-instance v8, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;-><init>(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 236
    .local v1, "callback":Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;
    sget-object v2, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Try to install ExternalBundle\'s Applicaiton for [targetAppId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0, p2, v1, p3}, Lcom/alipay/mobile/framework/app/IApplicationInstaller;->installApplication(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;Landroid/os/Bundle;)V

    .line 241
    .end local v0    # "installer":Lcom/alipay/mobile/framework/app/IApplicationInstaller;
    .end local v1    # "callback":Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;
    :cond_0
    return-void

    .line 242
    :cond_1
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extremely failed to find ApplicationDescription by [targetAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], there is no IApplicationInstaller."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public moveToIsolate(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 3
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 683
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 685
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=== >moveToIsolate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 3
    .param p1, "microApplication"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 676
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 677
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "AFTER_DESTROY_APP"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 678
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=== >onDestroyApp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z
    .locals 3
    .param p1, "engineType"    # Ljava/lang/String;
    .param p2, "engine"    # Lcom/alipay/mobile/framework/app/IApplicationEngine;

    .line 845
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    if-eqz p2, :cond_0

    .line 851
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerApplicationEngine(engineType"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const/4 v0, 0x1

    return v0

    .line 849
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "engine can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "engineType can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1
    .param p1, "installer"    # Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    .line 891
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 735
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->restoreState(Landroid/content/SharedPreferences;Z)V

    .line 736
    return-void
.end method

.method public restoreState(Landroid/content/SharedPreferences;Z)V
    .locals 10
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "foreground"    # Z

    .line 740
    const-string v0, "ApplicationManager.EntryApp"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "entryApp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->setEntryAppName(Ljava/lang/String;)V

    .line 748
    const-string v2, "ApplicationManager"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, "appMgr":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreState appMgr="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", entryApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    if-eqz v2, :cond_4

    .line 752
    invoke-static {v2}, Lcom/alipay/mobile/framework/util/JSONUtil;->json2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 753
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 755
    .local v4, "appId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v5

    .line 756
    .local v5, "targetAppDes":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    const/4 v6, 0x0

    .line 757
    .local v6, "application":Lcom/alipay/mobile/framework/app/MicroApplication;
    if-eqz v5, :cond_0

    .line 758
    invoke-direct {p0, v5, v1, v1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/ApplicationDescription;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v7

    move-object v6, v7

    .line 760
    :cond_0
    if-eqz v6, :cond_3

    instance-of v7, v6, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    if-eqz v7, :cond_1

    goto :goto_2

    .line 764
    :cond_1
    invoke-virtual {v6, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setSourceId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 769
    if-eqz p2, :cond_2

    .line 771
    :try_start_1
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->create(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    goto :goto_1

    .line 772
    :catchall_0
    move-exception v7

    .line 773
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v8, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 776
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-virtual {v6, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->restoreState(Landroid/content/SharedPreferences;)V

    .line 778
    iget-object v7, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    nop

    .end local v5    # "targetAppDes":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .end local v6    # "application":Lcom/alipay/mobile/framework/app/MicroApplication;
    goto :goto_0

    .line 761
    .restart local v5    # "targetAppDes":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .restart local v6    # "application":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_3
    :goto_2
    sget-object v7, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "skip restoreState="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 762
    goto :goto_0

    .line 779
    .end local v5    # "targetAppDes":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .end local v6    # "application":Lcom/alipay/mobile/framework/app/MicroApplication;
    :catchall_1
    move-exception v5

    .line 780
    .local v5, "exception":Ljava/lang/Throwable;
    sget-object v6, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "exception":Ljava/lang/Throwable;
    goto :goto_0

    .line 785
    :cond_4
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=== >restoreState, stack="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v0, "appIds":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    .line 713
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 715
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 716
    .local v3, "application":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v3, v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "appId":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->saveState(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    .end local v3    # "application":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local v4    # "appId":Ljava/lang/String;
    goto :goto_1

    .line 719
    :catchall_0
    move-exception v3

    .line 720
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 724
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/framework/util/JSONUtil;->list2Json(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "appMgr":Ljava/lang/String;
    const-string v3, "ApplicationManager"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 726
    sget-object v3, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveState.appMgr="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    const-string v5, "ApplicationManager.EntryApp"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveState.entryApp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public setEntryAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 645
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->g:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setEntryAppName(Ljava/lang/String;)V
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;

    .line 630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "setEntryAppName:"

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : ignore."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 633
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    .line 634
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 107
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 108
    return-void
.end method

.method public declared-synchronized startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "startParams"    # Landroid/os/Bundle;
    .param p4, "sceneParams"    # Landroid/os/Bundle;
    .param p5, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    monitor-enter p0

    .line 127
    if-eqz p2, :cond_1

    .line 130
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], [targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    .local v1, "lastApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p3}, Lcom/alipay/mobile/framework/app/MicroApplication;->canRestart(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setSceneParams(Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0, v1, p3}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 143
    .end local p0    # "this":Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 126
    .end local v1    # "lastApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local p1    # "sourceAppId":Ljava/lang/String;
    .end local p2    # "targetAppId":Ljava/lang/String;
    .end local p3    # "startParams":Landroid/os/Bundle;
    .end local p4    # "sceneParams":Landroid/os/Bundle;
    .end local p5    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 128
    .restart local p1    # "sourceAppId":Ljava/lang/String;
    .restart local p2    # "targetAppId":Ljava/lang/String;
    .restart local p3    # "startParams":Landroid/os/Bundle;
    .restart local p4    # "sceneParams":Landroid/os/Bundle;
    .restart local p5    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "targetAppId should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .end local p1    # "sourceAppId":Ljava/lang/String;
    .end local p2    # "targetAppId":Ljava/lang/String;
    .end local p3    # "startParams":Landroid/os/Bundle;
    .end local p4    # "sceneParams":Landroid/os/Bundle;
    .end local p5    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 6
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "fragmentActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 111
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 112
    return-void
.end method

.method public startEntryApp(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 594
    const/4 v0, 0x0

    .line 596
    .local v0, "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 600
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 601
    invoke-direct {p0, v1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->a(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 605
    :cond_1
    if-eqz v0, :cond_3

    .line 611
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 612
    .local v3, "appId":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    invoke-virtual {p0, v2, v3, p1}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 621
    .end local v3    # "appId":Ljava/lang/String;
    return-void

    .line 613
    .restart local v3    # "appId":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startEntryApp(): description="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mEntryApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lcom/alipay/mobile/framework/app/AppLoadException;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    .line 615
    .local v2, "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    sget-object v4, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    throw v2

    .line 606
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    .end local v3    # "appId":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startEntryApp(): description==null, mEntryApp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v2, Lcom/alipay/mobile/framework/app/AppLoadException;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v2    # "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    sget-object v3, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 609
    throw v2
.end method

.method public unregisterApplicationEngine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "engineType"    # Ljava/lang/String;

    .line 858
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 859
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "engineType can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1
    .param p1, "installer"    # Lcom/alipay/mobile/framework/app/IApplicationInstaller;

    .line 896
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z
    .locals 7
    .param p1, "des"    # Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "bRet":Z
    if-eqz p1, :cond_4

    .line 812
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 813
    .local v3, "appId":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 814
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 815
    .local v4, "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v4, v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 817
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    .line 818
    .local v5, "name":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 823
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    .line 824
    .local v6, "clsName":Ljava/lang/String;
    move-object v6, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    invoke-virtual {v4, v6}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 829
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 830
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 831
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 834
    :cond_2
    const/4 v0, 0x1

    .line 835
    goto :goto_1

    .line 837
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "description":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "clsName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 840
    .end local v3    # "appId":Ljava/lang/String;
    :cond_4
    :goto_1
    return v0
.end method
