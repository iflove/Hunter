.class public abstract Lcom/uc/webview/export/internal/setup/UCSetupTask;
.super Lcom/uc/webview/export/internal/setup/BaseSetupTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RETURN_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;CA",
        "LLBACK_TYPE:Lcom/uc/webview/export/internal/setup/UCSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;>",
        "Lcom/uc/webview/export/internal/setup/BaseSetupTask<",
        "TRETURN_TYPE;TCA",
        "LLBACK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

.field private static d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

.field private static e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private static f:I

.field private static g:Z

.field private static h:Z

.field protected static final sTotalSetupTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

.field private c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;-><init>()V

    .line 131
    nop

    .line 1444
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    monitor-enter v0

    .line 1445
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->classLoader:Ljava/lang/ClassLoader;

    .line 110
    :goto_0
    if-nez v0, :cond_1

    .line 111
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 113
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 1

    .line 457
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object v0
.end method

.method public static declared-synchronized getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 4

    const-class v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/uc/webview/export/internal/setup/bv;

    sget v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-boolean v3, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bv;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    const-string v2, "start"

    new-instance v3, Lcom/uc/webview/export/internal/setup/bu;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bu;-><init>()V

    .line 82
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/bv;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    const-string v2, "die"

    new-instance v3, Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bt;-><init>()V

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 95
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->e:Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    .locals 1

    .line 103
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    return-object v0
.end method

.method public static isSetupThread()Z
    .locals 1

    .line 117
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->inThread()Z

    move-result v0

    return v0
.end method

.method public static resumeAll()V
    .locals 4

    .line 121
    sget-object v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    monitor-enter v0

    .line 122
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->sTotalSetupTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 123
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->resume()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static setEnableRootTaskCreateThread(Ljava/lang/Boolean;)V
    .locals 0

    .line 453
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->g:Z

    .line 454
    return-void
.end method

.method protected static setRootTaskPriority(I)V
    .locals 0

    .line 450
    sput p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->f:I

    .line 451
    return-void
.end method


# virtual methods
.method protected final getCrashCode()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ah$a;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object v0

    .line 1118
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ah;->a:Ljava/lang/String;

    .line 70
    return-object v0

    .line 73
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    return-object v0
.end method

.method public final getRepairInfo()Lcom/uc/webview/export/internal/setup/UCMRepairInfo;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    return-object v0
.end method

.method protected getSetupCrashImprover(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;
    .locals 1

    .line 54
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    .line 58
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/ah$a;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object p1

    return-object p1
.end method

.method protected resetCrashFlag()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->i:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/ah$a;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/ah;->a()V

    .line 66
    :cond_0
    return-void
.end method

.method protected setDefault(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V
    .locals 0

    .line 461
    sput-object p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->d:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 462
    return-void
.end method

.method protected final setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->a:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    .line 427
    return-void
.end method

.method protected final setRepairInfo(Lcom/uc/webview/export/internal/setup/UCMRepairInfo;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->c:Lcom/uc/webview/export/internal/setup/UCMRepairInfo;

    .line 436
    return-void
.end method

.method protected final setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 0

    .line 99
    sput-object p1, Lcom/uc/webview/export/internal/setup/UCSetupTask;->b:Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    .line 100
    return-void
.end method

.method protected setupGlobalOnce()V
    .locals 26

    .line 411
    move-object/from16 v0, p0

    const-string v1, "UCSetupTask"

    const-string v2, "setupGlobalOnce"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/16 v2, 0x124

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 414
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Z

    if-eqz v2, :cond_0

    .line 415
    return-void

    .line 416
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/webview/export/internal/setup/UCSetupTask;->h:Z

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 2193
    const-string v4, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    invoke-virtual {v0, v4}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2194
    nop

    .line 2195
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "0"

    .line 2194
    :cond_1
    const-string v5, "process_private_data_dir_suffix"

    invoke-static {v5, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2197
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "sdk_international_env"

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2198
    if-eqz v4, :cond_2

    .line 2199
    invoke-static {v5, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2202
    :cond_2
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "WEBVIEW_POLICY"

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2203
    if-eqz v4, :cond_3

    .line 2204
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2203
    invoke-static {v6, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2206
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "sdk_setup"

    invoke-static {v4, v7}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2207
    if-eqz v4, :cond_4

    .line 2208
    invoke-static {v7, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2211
    :cond_4
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v8, "MULTI_CORE_TYPE"

    invoke-static {v4, v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2212
    if-eqz v4, :cond_5

    .line 2213
    invoke-static {v8, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2216
    :cond_5
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v9, "AC"

    invoke-static {v4, v9}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2217
    if-eqz v4, :cond_6

    .line 2218
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2221
    :cond_6
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "VIDEO_AC"

    invoke-static {v4, v10}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2222
    if-eqz v4, :cond_7

    .line 2223
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2226
    :cond_7
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v11, "grant_all_builds"

    invoke-static {v4, v11}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2227
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v12, "com.ucsdk.cts"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v3, 0x1

    .line 2228
    :goto_2
    if-eqz v3, :cond_a

    .line 2229
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2232
    :cond_a
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "conn_to"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2233
    if-eqz v3, :cond_b

    .line 2234
    invoke-static {v4, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2237
    :cond_b
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "read_to"

    invoke-virtual {v3, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2238
    if-eqz v3, :cond_c

    .line 2239
    invoke-static {v13, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2242
    :cond_c
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v14, "exact_old"

    invoke-static {v3, v14}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 2243
    if-eqz v3, :cond_d

    .line 2244
    invoke-static {v14, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2247
    :cond_d
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v15, "exact_mod"

    invoke-static {v3, v15}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 2248
    if-eqz v3, :cond_e

    .line 2249
    invoke-static {v15, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2252
    :cond_e
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "wait_fallback_sys"

    invoke-virtual {v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2253
    if-eqz v3, :cond_f

    .line 2254
    invoke-static {v12, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2257
    :cond_f
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ucPlayerRoot"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2258
    if-eqz v3, :cond_10

    .line 2259
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2262
    :cond_10
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v2

    const-string v2, "ucPlayer"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2263
    if-eqz v3, :cond_11

    goto :goto_3

    :cond_11
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_3
    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2265
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v2

    const-string v2, "webview_multi_process"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2266
    if-eqz v3, :cond_12

    .line 2267
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_12
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2266
    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2269
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2270
    move-object/from16 v18, v2

    const-string v2, "webview_multi_process_fallback_timeout"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2271
    if-eqz v3, :cond_13

    .line 2272
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_13
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2271
    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2274
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v19, v2

    const-string v2, "webview_multi_process_enable_service_speedup"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2275
    if-eqz v3, :cond_14

    goto :goto_6

    .line 2276
    :cond_14
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v3, v20

    .line 2275
    :goto_6
    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2278
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2279
    move-object/from16 v20, v2

    const-string v2, "ucm_multi_process_enable_seccomp"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2278
    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2281
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v2

    const-string v2, "gpu_process_mode"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2282
    if-eqz v3, :cond_15

    .line 2283
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    :cond_15
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2282
    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2286
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v2

    const-string v2, "startup_policy"

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2287
    if-nez v2, :cond_16

    .line 2288
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v23, v12

    const-string v12, "startup_policy"

    invoke-virtual {v2, v12, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2287
    :cond_16
    move-object/from16 v23, v12

    .line 2293
    :goto_8
    const-string v2, "app_st_t"

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2294
    if-eqz v2, :cond_17

    .line 2295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v24, v24, v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2296
    const-string v3, "st_el_b_uc_and_app"

    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2299
    :cond_17
    const-string v2, "app_st_o"

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2300
    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_9

    .line 2301
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2300
    const-string v3, "app_st_o"

    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2303
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getInitType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getInitType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bo_init_type"

    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2307
    :cond_19
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "VERIFY_POLICY"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2308
    if-eqz v2, :cond_1a

    .line 2309
    const-string v3, "VERIFY_POLICY"

    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2312
    :cond_1a
    nop

    .line 2319
    nop

    .line 3179
    new-instance v2, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 3181
    invoke-static {}, Lcom/uc/webview/export/internal/utility/Log;->enableUCLogger()Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "log_conf"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 3182
    const-string v3, "log_conf"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 4172
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v24, v15

    const-string v15, "setPrintLogBaseOnConfig "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    if-eqz v3, :cond_1c

    array-length v12, v3

    const/4 v15, 0x5

    if-ne v12, v15, :cond_1c

    .line 4174
    const/4 v12, 0x0

    aget-object v15, v3, v12

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12, v3}, Lcom/uc/webview/export/internal/utility/Log;->setPrintLog(Z[Ljava/lang/Object;)V

    goto :goto_a

    .line 3181
    :cond_1b
    move-object/from16 v24, v15

    .line 3186
    :cond_1c
    :goto_a
    invoke-static {}, Lcom/uc/webview/export/internal/utility/Log;->enableUCLogger()Z

    move-result v3

    sput-boolean v3, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    .line 3188
    const/16 v3, 0xe2

    move-object v12, v14

    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 2321
    const-string v2, "d"

    invoke-static {v2, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 2322
    if-eqz v1, :cond_1e

    .line 2325
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "log_conf"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2326
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "setupGlobalOnce: log_conf="

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_1d

    const-string v2, "null"

    goto :goto_b

    .line 2327
    :cond_1d
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v14, v3, [Ljava/lang/Throwable;

    .line 2326
    invoke-virtual {v1, v2, v14}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2329
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: PRIVATE_DATA_DIRECTORY_SUFFIX="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2330
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    const-string v14, "process_private_data_dir_suffix"

    invoke-virtual {v3, v14}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v14, v3, [Ljava/lang/Throwable;

    .line 2329
    invoke-virtual {v1, v2, v14}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2332
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: sdk_international_env="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2333
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2332
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: WEBVIEW_POLICY="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2336
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2335
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2338
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: sdk_setup="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2339
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2338
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2341
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: MULTI_CORE_TYPE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2342
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2341
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: AC="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2345
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2344
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2347
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: VIDEO_AC="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2348
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2347
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2350
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: grant_all_builds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2351
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 2350
    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: conn_to="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2354
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2353
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2356
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: read_to="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2357
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2356
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2359
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: exact_old="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2360
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2359
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: exact_mod="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2363
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2362
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2365
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: wait_fallback_sys="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2366
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2365
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: ucPlayerRoot="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2369
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2368
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2371
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: ucPlayer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2372
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2371
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2374
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: webview_multi_process="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2375
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2374
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2377
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: webview_multi_process_fallback_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2378
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2377
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2380
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: webview_multi_process_enable_service_speedup="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2381
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2380
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2383
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: ucm_multi_process_enable_seccomp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2384
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2383
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2386
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: gpu_process_mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2387
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2386
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: ucbs version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/uc/webview/export/Build$Version;->BUILD_SERIAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2390
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: preheat init type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getInitType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2392
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: appStartupOpportunity: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2393
    const-string v4, "app_st_o"

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2392
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2395
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupGlobalOnce: appStartupTime: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2396
    const-string v3, "st_el_b_uc_and_app"

    invoke-static {v3}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 2395
    invoke-virtual {v1, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2398
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v2

    const-string v3, "VERIFY_POLICY"

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2399
    if-eqz v2, :cond_1e

    .line 2400
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupGlobalOnce: VERIFY_POLICY="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 2400
    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print2Cache(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 421
    :cond_1e
    const/16 v1, 0x125

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 423
    return-void
.end method

.method public bridge synthetic start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRETURN_TYPE;"
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    if-nez v0, :cond_3

    .line 146
    const/16 v0, 0x148

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 147
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "setup_priority"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setRootTaskPriority(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "setup_create_thread"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 152
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ucmUpdUrl"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 157
    :cond_1
    if-eqz v0, :cond_2

    .line 158
    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setEnableRootTaskCreateThread(Ljava/lang/Boolean;)V

    .line 160
    :cond_2
    const/16 v0, 0x149

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 161
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 163
    const/16 v1, 0x14a

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 164
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 165
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-object v1

    .line 168
    :cond_3
    :try_start_1
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/BaseSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
