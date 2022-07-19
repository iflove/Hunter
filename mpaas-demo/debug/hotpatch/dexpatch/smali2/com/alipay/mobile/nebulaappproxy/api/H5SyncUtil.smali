.class public Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;
.super Ljava/lang/Object;
.source "H5SyncUtil.java"


# static fields
.field public static final APP_CREDIT_G_NOTIFY:Ljava/lang/String; = "APP-CREDIT-G"

.field public static final NEBULA_GLOBAL_NOTIFY:Ljava/lang/String; = "NEBULA-G"

.field public static final NEBULA_USERS_NOTIFY:Ljava/lang/String; = "NEBULA-U"

.field private static a:Ljava/lang/String;

.field public static final listSync:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "h5_syncdownload"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->listSync:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized doSync(Ljava/lang/String;)V
    .locals 3
    .param p0, "syncMessage"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;

    monitor-enter v0

    .line 38
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "H5SyncUtil"

    const-string/jumbo v2, "syncMessage == null,return"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    .line 44
    :cond_0
    :try_start_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    const/4 v2, 0x0

    .line 46
    .local v2, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->listSync:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    .line 51
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->execute(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    .line 37
    .end local v2    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local p0    # "syncMessage":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static execute(Ljava/lang/String;)V
    .locals 4
    .param p0, "syncMessage"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 59
    .local v2, "taskScheduleService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireOrderedExecutor()Lcom/alipay/mobile/framework/service/common/OrderedExecutor;

    move-result-object v0

    .line 65
    .local v1, "mTaskExecutor":Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "h5_do_sync"

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->submit(Ljava/lang/Object;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v1    # "mTaskExecutor":Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
    :cond_1
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5SyncUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static isDownload()Z
    .locals 3

    .line 77
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 78
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/H5SyncUtil;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    .local v2, "result":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v1, "NO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    return v1

    .line 86
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
