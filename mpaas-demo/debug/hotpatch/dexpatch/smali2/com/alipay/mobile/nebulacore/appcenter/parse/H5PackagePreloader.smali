.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;
.super Ljava/lang/Object;
.source "H5PackagePreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    }
.end annotation


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)V
    .locals 7
    .param p0, "isPreloadOnTarget"    # Z

    .line 182
    :try_start_0
    const-string v0, "com.alipay.mobile.liteprocess.perf.PerformanceLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "onPackagePrelodResult"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    .line 184
    .local v3, "logMethod":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 185
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    nop

    .end local v3    # "logMethod":Ljava/lang/reflect/Method;
    return-void

    .line 186
    :catchall_0
    move-exception v0

    .line 189
    return-void
.end method

.method public static getParsedPackageContent(Landroid/os/Bundle;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 7
    .param p0, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a:Ljava/util/LinkedList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    const-string v2, "appId"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "appId":Ljava/lang/String;
    const-string v3, "appVersion"

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "version":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;

    .line 78
    .local v5, "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    move-object v5, v6

    iget-object v6, v6, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->c:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a(Z)V

    .line 82
    return-object v1

    .line 84
    :cond_1
    iget-boolean v6, v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->a:Z

    if-eqz v6, :cond_2

    .line 85
    sput-object v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a:Ljava/util/LinkedList;

    .line 86
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a(Z)V

    .line 87
    iget-object v0, v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0

    .line 90
    .end local v5    # "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    :cond_2
    goto :goto_0

    .line 91
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    return-object v1

    .line 73
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v1

    .line 93
    :catchall_0
    move-exception v2

    .line 94
    .local v2, "thr":Ljava/lang/Throwable;
    const-string v3, "H5PackagePreloader"

    const-string v4, "getParsedPackageContent error!"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a(Z)V

    .line 96
    return-object v1
.end method

.method public static preloadPackage()V
    .locals 10

    const-string v0, "H5PackagePreloader"

    .line 40
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBackgroundRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    const-string/jumbo v1, "preloadPackage enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "LITE_PROCESS_0"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    .line 45
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "recent_tiny_apps"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    .line 46
    .local v5, "recentApps":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    return-void

    .line 49
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a:Ljava/util/LinkedList;

    if-nez v1, :cond_2

    .line 50
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a:Ljava/util/LinkedList;

    .line 53
    :cond_2
    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    array-length v6, v1

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v7, v1, v3

    .line 55
    .local v2, "id":Ljava/lang/String;
    move-object v2, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 58
    const/4 v7, 0x1

    sput-boolean v7, Lcom/alipay/mobile/h5container/api/H5PageData;->sUsePackagePreload:Z

    .line 59
    new-instance v7, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;

    invoke-direct {v7, v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;-><init>(Ljava/lang/String;)V

    .line 60
    .local v7, "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    sget-object v8, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->a:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->setPriority(I)V

    .line 62
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->start()V

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "preloadPackage id = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v2    # "id":Ljava/lang/String;
    .end local v7    # "thread":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "recentApps":Ljava/lang/String;
    :cond_4
    return-void

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    .local v1, "thr":Ljava/lang/Throwable;
    const-string/jumbo v2, "preloadPackage error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v1    # "thr":Ljava/lang/Throwable;
    return-void
.end method
