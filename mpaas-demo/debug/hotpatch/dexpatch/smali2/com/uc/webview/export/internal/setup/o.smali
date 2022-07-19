.class public Lcom/uc/webview/export/internal/setup/o;
.super Lcom/uc/webview/export/utility/SetupTask;
.source "U4Source"


# static fields
.field private static b:Lcom/uc/webview/export/internal/setup/o;

.field private static c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/uc/webview/export/internal/setup/l;

.field private d:Lcom/uc/webview/export/internal/setup/l;

.field private e:Lcom/uc/webview/export/internal/setup/l;

.field private f:Lcom/uc/webview/export/internal/setup/l;

.field private g:Landroid/content/Context;

.field private h:Lcom/uc/webview/export/cyclone/UCElapseTime;

.field private i:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field private j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

.field private k:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/av;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private final o:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/l;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Object;

.field private u:Lcom/uc/webview/export/internal/setup/az;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/o;->c:Ljava/util/Stack;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/o;->n:Z

    .line 82
    new-instance v0, Lcom/uc/webview/export/internal/setup/p;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/p;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->o:Landroid/webkit/ValueCallback;

    .line 112
    new-instance v0, Lcom/uc/webview/export/internal/setup/u;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/u;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->p:Landroid/webkit/ValueCallback;

    .line 169
    new-instance v0, Lcom/uc/webview/export/internal/setup/v;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/v;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->q:Landroid/webkit/ValueCallback;

    .line 204
    new-instance v0, Lcom/uc/webview/export/internal/setup/w;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/w;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->r:Landroid/webkit/ValueCallback;

    .line 640
    new-instance v0, Lcom/uc/webview/export/internal/setup/ad;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ad;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    .line 1137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->t:Ljava/lang/Object;

    .line 1138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCSetupTask;)Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;
    .locals 3

    .line 515
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v0

    .line 516
    const-string v1, "dexFilePath"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 517
    const-string v1, "soFilePath"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 518
    const-string v1, "resFilePath"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 519
    const-string v1, "ucmZipFile"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 520
    const-string v1, "ucmLibDir"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 521
    const-string v1, "ucmKrlDir"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 522
    const-string v1, "ucmCfgFile"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 523
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/uc/webview/export/internal/setup/l;->getSetupCrashImprover(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object p2

    .line 525
    iget-object v0, p2, Lcom/uc/webview/export/internal/setup/ah;->b:Landroid/webkit/ValueCallback;

    const-string v1, "start"

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object p2, p2, Lcom/uc/webview/export/internal/setup/ah;->c:Landroid/webkit/ValueCallback;

    .line 526
    const-string v1, "die"

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    .line 527
    const-string v0, "crash_none"

    invoke-virtual {p2, v0, v2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    .line 528
    const-string v0, "crash_seen"

    invoke-virtual {p2, v0, v2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->q:Landroid/webkit/ValueCallback;

    .line 529
    const-string v1, "crash_repeat"

    invoke-virtual {p2, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 532
    :cond_0
    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/l;Z)Lcom/uc/webview/export/internal/setup/l;
    .locals 11

    .line 602
    const-string v0, "SdkSetupTask"

    const-string v1, "ucmUpdUrl"

    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 603
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 604
    return-object v4

    .line 607
    :cond_0
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/uc/webview/export/internal/setup/o;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    const-string v3, "updates"

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 612
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_8

    .line 613
    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 1590
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1591
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 1592
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hashcode: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v6, v9

    .line 1594
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1595
    const/4 v8, 0x1

    goto :goto_1

    .line 1593
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1598
    :cond_2
    nop

    .line 613
    :goto_1
    if-nez v8, :cond_3

    .line 614
    return-object v4

    .line 616
    :cond_3
    const-string v5, "csc_nupt"

    invoke-static {v5}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 617
    iput-boolean v3, p0, Lcom/uc/webview/export/internal/setup/o;->n:Z

    .line 618
    if-eqz p1, :cond_4

    .line 619
    sget-object v5, Lcom/uc/webview/export/internal/setup/o;->c:Ljava/util/Stack;

    invoke-virtual {v5, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 622
    if-nez p2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-le p2, v3, :cond_6

    .line 623
    :cond_5
    new-instance p1, Ljava/io/File;

    .line 624
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 626
    :cond_6
    nop

    .line 627
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {p2}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    goto :goto_2

    :cond_7
    new-instance p2, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {p2}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    .line 626
    :goto_2
    invoke-direct {p0, p2, p1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p2

    const-string v1, "chkDecFinish"

    .line 628
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p2

    check-cast p2, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "ucmKrlDir"

    .line 629
    invoke-virtual {p2, v1, p1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    return-object p1

    .line 635
    :cond_8
    goto :goto_3

    .line 631
    :catch_0
    move-exception p1

    .line 634
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "UCMPackageInfo.getUpdateRoot exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_3
    return-object v4
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/uc/webview/export/internal/setup/o;
    .locals 2

    const-class v0, Lcom/uc/webview/export/internal/setup/o;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/o;->b:Lcom/uc/webview/export/internal/setup/o;

    if-nez v1, :cond_0

    .line 74
    const/16 v1, 0x147

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 75
    new-instance v1, Lcom/uc/webview/export/internal/setup/o;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/o;-><init>()V

    sput-object v1, Lcom/uc/webview/export/internal/setup/o;->b:Lcom/uc/webview/export/internal/setup/o;

    .line 76
    const/16 v1, 0x14b

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 79
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/o;->b:Lcom/uc/webview/export/internal/setup/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/l;)V
    .locals 2

    .line 359
    nop

    .line 1344
    const-string v0, "csc_ftt"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 1346
    const-string v0, "sc_bakkrldir"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    const-string v1, "sc_bakzipfp"

    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1348
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    const/4 v0, 0x0

    goto :goto_0

    .line 1352
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/an;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/an;-><init>()V

    const-string v1, "ShareCoreFaultToleranceTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v0

    .line 359
    :goto_0
    nop

    .line 360
    if-eqz v0, :cond_1

    .line 361
    sget-object v1, Lcom/uc/webview/export/internal/setup/o;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v0, Lcom/uc/webview/export/internal/setup/z;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/z;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    .line 364
    const-string v1, "e_delay_search_core_file"

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 375
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 1

    .line 43
    nop

    .line 3663
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    .line 3664
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/o;->setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    .line 3665
    iget p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->loadType:I

    sput p0, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    .line 3666
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initLoadUcm sLoadType: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isShareCore:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdkSetupTask"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3668
    iget-boolean p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz p0, :cond_0

    .line 3669
    const-string p0, "csc_sdss"

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3671
    :cond_0
    iget-boolean p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz p0, :cond_1

    .line 3672
    const-string p0, "csc_okss"

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3674
    :cond_1
    iget-boolean p0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    if-eqz p0, :cond_2

    .line 3675
    const-string p0, "csc_fkss"

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 43
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p0
.end method

.method private b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;
    .locals 3

    .line 500
    invoke-virtual {p1, p0}, Lcom/uc/webview/export/internal/setup/l;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 501
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    .line 502
    const-string v2, "setup"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    .line 503
    const-string v2, "load"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    .line 504
    const-string v2, "init"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    .line 505
    const-string v2, "switch"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->k:Landroid/webkit/ValueCallback;

    .line 506
    const-string v2, "stat"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->o:Landroid/webkit/ValueCallback;

    .line 507
    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->p:Landroid/webkit/ValueCallback;

    .line 508
    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 510
    return-object p1
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;

    return-object p1
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/o;Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V
    .locals 26

    .line 43
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "csc_tsu"

    const-string v4, "bo_dex_old_dex_dir"

    const-string v5, "stat"

    const-string v6, "sdk_ucm_old"

    const-string v7, "SdkSetupTask"

    const-string v8, "T"

    const-string v9, "F"

    const-string v10, "0"

    const-string v11, "1"

    .line 3857
    const-string v0, "csc_ssctp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3859
    :try_start_0
    const-string v0, "d"

    invoke-static {v0, v7}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v12

    .line 3860
    const/4 v15, 0x0

    if-eqz v12, :cond_1

    .line 3861
    const-string v0, "mSuccessCB: dataDir is [%s] core type: [%d] isShareCore{%b}."

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 3862
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v14

    iget-object v14, v14, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v14

    iget-object v14, v14, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v14, v14, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    aput-object v14, v13, v15

    .line 3863
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v14

    iget v14, v14, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v13, v17

    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v14

    iget-boolean v14, v14, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v13, v16

    .line 3861
    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v13, v15, [Ljava/lang/Throwable;

    invoke-virtual {v12, v0, v13}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3866
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3867
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    .line 3868
    if-eqz v0, :cond_2

    iget-object v13, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    if-eqz v13, :cond_2

    .line 3869
    iget-object v13, v1, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v13}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 3871
    iget-object v13, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    .line 3872
    invoke-static {v13}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 3871
    invoke-static {v0, v13}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    .line 3878
    :cond_2
    :try_start_1
    const-string v0, "csc_sscip"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3879
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->callbackFinishStat(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3882
    goto :goto_1

    .line 3881
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_16

    .line 3886
    :goto_1
    :try_start_3
    const-string v0, "ucmUpdUrl"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3887
    if-eqz v0, :cond_c

    .line 3889
    nop

    .line 3892
    iget-object v13, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    const-string v14, "flags"

    .line 3894
    invoke-static {v13, v14}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    const-string v14, "uc_upd"

    .line 3893
    invoke-static {v13, v14}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 3897
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_frun"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3898
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    .line 3900
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    move-result v14

    .line 3901
    if-eqz v14, :cond_3

    goto :goto_2

    .line 3902
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "createNewFile firstTimeRunFlagFile failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3905
    :cond_4
    :goto_2
    iget v14, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-wide/16 v18, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x2

    if-eq v14, v8, :cond_a

    .line 3907
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_ucrun"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3908
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3909
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 3910
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v8

    .line 3911
    if-eqz v8, :cond_5

    goto :goto_3

    .line 3912
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "createNewFile ucrunFlagFile failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3915
    :cond_6
    :goto_3
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v23

    sub-long v21, v21, v23

    .line 3918
    iget-boolean v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-nez v2, :cond_9

    .line 3919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_curucrun"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3920
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3921
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3922
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 3923
    if-eqz v0, :cond_7

    goto :goto_4

    .line 3924
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "createNewFile currentUcRunFlagFile failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3927
    :cond_8
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v23

    sub-long v13, v13, v23

    .line 3928
    goto :goto_5

    .line 3918
    :cond_9
    move-wide/from16 v13, v18

    goto :goto_5

    .line 3930
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    sub-long v21, v13, v21

    move-wide/from16 v13, v18

    .line 3933
    :goto_5
    cmp-long v0, v13, v18

    if-nez v0, :cond_b

    .line 3934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    sub-long v13, v13, v18

    .line 3937
    :cond_b
    const-string v0, "stp_uc_hour"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/32 v18, 0x36ee80

    move-object v2, v9

    :try_start_5
    div-long v8, v21, v18

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    const-string v0, "stp_curuc_hour"

    div-long v13, v13, v18

    long-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 3941
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 3887
    :cond_c
    move-object/from16 v20, v8

    move-object v2, v9

    .line 3942
    :goto_6
    goto :goto_9

    .line 3941
    :catchall_3
    move-exception v0

    move-object/from16 v20, v8

    :goto_7
    move-object v2, v9

    :goto_8
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_16

    .line 3945
    :goto_9
    :try_start_7
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v0, :cond_d

    move-object v0, v11

    goto :goto_a

    :cond_d
    move-object v0, v10

    :goto_a
    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 3948
    goto :goto_b

    .line 3947
    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_16

    .line 3952
    :goto_b
    nop

    .line 3953
    nop

    .line 3954
    nop

    .line 3955
    nop

    .line 3956
    nop

    .line 3957
    :try_start_9
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_e

    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    goto :goto_c

    :cond_e
    const/4 v8, 0x0

    .line 3959
    :goto_c
    const-string v9, ""

    if-eqz v8, :cond_f

    .line 3960
    :try_start_a
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 3962
    :try_start_b
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 3964
    move-object v14, v0

    goto :goto_d

    .line 3963
    :catchall_5
    move-exception v0

    move-object v14, v9

    .line 3966
    :goto_d
    :try_start_c
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->i:Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 3968
    goto :goto_e

    .line 3967
    :catchall_6
    move-exception v0

    .line 3969
    :goto_e
    :try_start_d
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getCrashCode()Ljava/lang/String;

    move-result-object v0

    .line 3970
    iget-object v15, v1, Lcom/uc/webview/export/internal/setup/o;->j:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v2

    move-object v2, v15

    move-object v15, v0

    move-object/from16 v25, v13

    move-object v13, v9

    move-object/from16 v9, v25

    goto :goto_f

    .line 3959
    :cond_f
    move-object/from16 p1, v2

    move-object v2, v9

    move-object v13, v2

    move-object v14, v13

    move-object v15, v14

    .line 3972
    :goto_f
    nop

    .line 3973
    nop

    .line 3974
    nop

    .line 3975
    nop

    .line 3976
    nop

    .line 3978
    const-string v0, "setup_priority"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 3982
    :try_start_e
    const-string v0, "dlChecker"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 3983
    if-nez v0, :cond_10

    const-string v0, "N"

    goto :goto_10

    :cond_10
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v0, :cond_11

    move-object/from16 v0, v20

    goto :goto_10

    :cond_11
    move-object/from16 v0, p1

    .line 3986
    :goto_10
    goto :goto_11

    .line 3984
    :catchall_7
    move-exception v0

    .line 3985
    :try_start_f
    const-string v0, "E"

    .line 3988
    :goto_11
    move-object/from16 v18, v10

    new-instance v10, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v10}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    move-object/from16 v19, v4

    :try_start_10
    const-string v4, "cnt"

    .line 3989
    invoke-virtual {v10, v4, v11}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v10, "code"

    .line 3990
    move-object/from16 v21, v11

    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v11

    iget v11, v11, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v10, "dir"

    .line 3991
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-nez v11, :cond_12

    const-string v11, "null"

    move-object/from16 v22, v7

    goto :goto_12

    :cond_12
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object/from16 v22, v7

    :try_start_11
    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    invoke-virtual {v11, v7}, Lcom/uc/webview/export/internal/setup/br;->getDirAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    :goto_12
    invoke-virtual {v4, v10, v11}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "old"

    .line 3992
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v10

    iget-boolean v10, v10, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v10, :cond_13

    move-object/from16 v10, v20

    goto :goto_13

    :cond_13
    move-object/from16 v10, p1

    :goto_13
    invoke-virtual {v4, v7, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "frun"

    .line 3993
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v10

    iget-boolean v10, v10, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    if-eqz v10, :cond_14

    move-object/from16 v10, v20

    goto :goto_14

    :cond_14
    move-object/from16 v10, p1

    :goto_14
    invoke-virtual {v4, v7, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "cpu_cnt"

    .line 3994
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "cpu_freq"

    .line 3995
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "cost_cpu"

    iget-object v10, v1, Lcom/uc/webview/export/internal/setup/o;->h:Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 3996
    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "cost"

    iget-object v10, v1, Lcom/uc/webview/export/internal/setup/o;->h:Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 3997
    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "pri"

    if-nez v16, :cond_15

    const-string v10, "n"

    goto :goto_15

    .line 3998
    :cond_15
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_15
    invoke-virtual {v4, v7, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v7, "wifi"

    .line 3999
    invoke-virtual {v4, v7, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    .line 4000
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz v4, :cond_16

    const-string v4, "csc_tis"

    goto :goto_16

    :cond_16
    const-string v4, "csc_tns"

    :goto_16
    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    .line 4003
    new-instance v4, Landroid/util/Pair;

    const-string v7, "sdk_stp_suc"

    if-eqz v8, :cond_18

    const-string v10, "multi_core"

    .line 4005
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object/from16 v16, v12

    :try_start_12
    const-string v12, "MULTI_CORE_TYPE"

    invoke-virtual {v11, v12}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    move-object/from16 v11, v21

    goto :goto_17

    :cond_17
    move-object/from16 v11, v18

    .line 4004
    :goto_17
    invoke-virtual {v0, v10, v11}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string v10, "err"

    .line 4006
    invoke-virtual {v0, v10, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string v9, "cls"

    .line 4007
    invoke-virtual {v0, v9, v14}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string v9, "msg"

    .line 4008
    invoke-virtual {v0, v9, v13}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string v9, "crash"

    .line 4009
    invoke-virtual {v0, v9, v15}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string v9, "task"

    .line 4010
    invoke-virtual {v0, v9, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string v2, "csc_tfi"

    .line 4011
    invoke-virtual {v0, v3, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    goto :goto_18

    :cond_18
    move-object/from16 v16, v12

    :goto_18
    invoke-direct {v4, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4003
    invoke-virtual {v1, v4}, Lcom/uc/webview/export/internal/setup/o;->callbackStat(Landroid/util/Pair;)V

    .line 4014
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v0, :cond_19

    move-object/from16 v10, v21

    goto :goto_19

    :cond_19
    move-object/from16 v10, v18

    :goto_19
    invoke-static {v6, v10}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz v0, :cond_1b

    .line 4016
    if-eqz v8, :cond_1a

    .line 4017
    const-string v0, "csc_nsifp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    goto :goto_1d

    .line 4019
    :cond_1a
    const-string v0, "csc_nsisp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 4024
    :cond_1b
    goto :goto_1d

    .line 4023
    :catchall_8
    move-exception v0

    goto :goto_1c

    :catchall_9
    move-exception v0

    goto :goto_1b

    :catchall_a
    move-exception v0

    goto :goto_1a

    :catchall_b
    move-exception v0

    move-object/from16 v19, v4

    :goto_1a
    move-object/from16 v22, v7

    :goto_1b
    move-object/from16 v16, v12

    :goto_1c
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4026
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->f()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_16

    .line 4030
    :try_start_14
    new-instance v0, Lcom/uc/webview/export/internal/setup/n;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/n;-><init>()V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->statCallback:Landroid/webkit/ValueCallback;

    check-cast v0, Lcom/uc/webview/export/internal/setup/n;

    .line 4031
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/n;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/n;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    .line 4032
    invoke-virtual {v0, v5, v2}, Lcom/uc/webview/export/internal/setup/n;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/n;

    .line 4033
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/n;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 4036
    goto :goto_1e

    .line 4035
    :catchall_c
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_16

    .line 4039
    :goto_1e
    :try_start_16
    const-string v0, "vmsize_saving"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4040
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1c
    const/4 v0, 0x0

    .line 4042
    :goto_1f
    new-instance v2, Lcom/uc/webview/export/internal/setup/s;

    invoke-direct {v2, v1, v0}, Lcom/uc/webview/export/internal/setup/s;-><init>(Lcom/uc/webview/export/internal/setup/o;Z)V

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/Map;)V

    .line 4048
    if-eqz v16, :cond_1e

    .line 4049
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSuccessCB: vmsize_saving_enable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1d

    const-string v3, "true"

    goto :goto_20

    :cond_1d
    const-string v3, "false"

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    move-object/from16 v3, v16

    invoke-virtual {v3, v2, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4051
    :cond_1e
    if-eqz v0, :cond_1f

    .line 4052
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v2, Lcom/uc/webview/export/cyclone/UCVmsize;

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/cyclone/UCVmsize;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    .line 4053
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 4054
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 4058
    :cond_1f
    goto :goto_21

    .line 4056
    :catchall_d
    move-exception v0

    .line 4057
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "successCallbackImpl "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    .line 4062
    :goto_21
    :try_start_18
    new-instance v0, Lcom/uc/webview/export/internal/setup/f;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/f;-><init>()V

    .line 4063
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/f;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "CONTEXT"

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    .line 4064
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "del_dec_fil"

    .line 4065
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "del_upd_fil"

    .line 4066
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    .line 4067
    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    const-string v2, "die"

    new-instance v3, Lcom/uc/webview/export/internal/setup/t;

    invoke-direct {v3, v1}, Lcom/uc/webview/export/internal/setup/t;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    .line 4068
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/f;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/f;

    .line 4079
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/f;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    .line 4082
    goto :goto_22

    .line 4081
    :catchall_e
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    .line 4086
    :goto_22
    :try_start_1a
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 4087
    new-instance v0, Lcom/uc/webview/export/internal/setup/e;

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/e;-><init>(Ljava/util/List;)V

    .line 4088
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/e;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/e;

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4089
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/e;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/e;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    .line 4090
    invoke-virtual {v0, v5, v2}, Lcom/uc/webview/export/internal/setup/e;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/e;

    .line 4091
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/e;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    .line 4096
    :cond_20
    :goto_23
    const/4 v2, 0x0

    :try_start_1b
    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    .line 4097
    goto :goto_24

    .line 4094
    :catchall_f
    move-exception v0

    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_15

    goto :goto_23

    .line 4100
    :goto_24
    nop

    .line 4290
    :try_start_1d
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v0, :cond_21

    .line 4291
    const-string v2, "chkMultiCore"

    .line 4292
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "success"

    .line 4293
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "exception"

    .line 4294
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "switch"

    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    .line 4295
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 4296
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 4297
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    .line 4301
    :cond_21
    goto :goto_25

    .line 4300
    :catchall_10
    move-exception v0

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    .line 4102
    :goto_25
    nop

    .line 4306
    const-wide/16 v2, 0x7d0

    :try_start_1f
    const-string v0, "sc_ustwm"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4309
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4310
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v0, :cond_22

    .line 4311
    const-string v0, "csc_ddspv"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 4312
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;

    .line 4313
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 4314
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/uc/webview/export/internal/setup/o;->e:Lcom/uc/webview/export/internal/setup/l;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 4319
    :cond_22
    goto :goto_26

    .line 4318
    :catchall_11
    move-exception v0

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    .line 5256
    :goto_26
    :try_start_21
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 5285
    goto :goto_27

    .line 5284
    :catchall_12
    move-exception v0

    move-object v4, v0

    :try_start_22
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    .line 4107
    :goto_27
    :try_start_23
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v0, :cond_23

    .line 4108
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 4109
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    .line 4111
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v2, Lcom/uc/webview/export/cyclone/UCDex;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/UCDex;-><init>()V

    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    .line 4112
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    .line 4113
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    .line 4117
    :cond_23
    goto :goto_28

    .line 4116
    :catchall_13
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4119
    :goto_28
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "distinguish_js_error"

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_16

    .line 4120
    if-eqz v0, :cond_25

    .line 4122
    :try_start_25
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v2

    .line 4123
    if-eqz v2, :cond_24

    .line 4124
    const-string v3, "DistinguishJSError"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v3, v0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    .line 4128
    :cond_24
    return-void

    .line 4127
    :catchall_14
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4132
    :cond_25
    return-void

    .line 4096
    :catchall_15
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/uc/webview/export/internal/setup/o;->m:Ljava/util/List;

    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    .line 4130
    :catchall_16
    move-exception v0

    .line 4131
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfa4

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 43
    return-void
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    return-object p0
.end method

.method static synthetic c()Ljava/util/Stack;
    .locals 1

    .line 43
    sget-object v0, Lcom/uc/webview/export/internal/setup/o;->c:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->p:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->o:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private e()Lcom/uc/webview/export/internal/setup/l;
    .locals 3

    .line 334
    const-string v0, "csc_nsct"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    const-string v1, "ShareCoreSdcardSetupTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v0

    .line 338
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "scst_flag"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 340
    return-object v0
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 1

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 682
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 683
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->shellClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->d(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_0
    goto :goto_0

    .line 686
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 692
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    const-string v1, "loadPolicy"

    .line 693
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 692
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 696
    goto :goto_1

    .line 695
    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 700
    :goto_1
    :try_start_2
    const-string v0, "load_share_core_host"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 703
    return-void

    .line 702
    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 704
    return-void
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/o;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic h(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/o;->e()Lcom/uc/webview/export/internal/setup/l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/l;
    .locals 2

    .line 5324
    const-string v0, "csc_cdscfp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 5326
    new-instance v0, Lcom/uc/webview/export/internal/setup/ap;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ap;-><init>()V

    const-string v1, "ShareCoreSearchCoreFileTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object p0

    .line 5328
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/l;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 5330
    nop

    .line 43
    return-object p0
.end method

.method static synthetic j(Lcom/uc/webview/export/internal/setup/o;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/o;->f()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 536
    new-instance v0, Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bw;-><init>()V

    .line 537
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bw;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 538
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 539
    const-string v1, "ucmZipDir"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 540
    const-string v1, "ucmZipFile"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 541
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sdk_setup"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 542
    const-string v2, "chkMultiCore"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->k:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    .line 543
    :goto_0
    const-string v2, "stat"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->s:Landroid/webkit/ValueCallback;

    .line 544
    const-string v2, "switch"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/ac;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/ac;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    .line 545
    const-string v2, "downloadException"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/ab;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/internal/setup/ab;-><init>(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)V

    .line 556
    const-string v2, "downloadFileDelete"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    new-instance v1, Lcom/uc/webview/export/internal/setup/aa;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/aa;-><init>(Lcom/uc/webview/export/internal/setup/o;)V

    .line 567
    const-string v2, "updateProgress"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->a:Lcom/uc/webview/export/internal/setup/l;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    .line 577
    if-eqz p2, :cond_1

    .line 578
    const-string v1, "dlChecker"

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 579
    :cond_1
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 580
    iget-object p2, p0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    const-string v0, "ucmUpdUrl"

    invoke-virtual {p2, v0, p1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 582
    :cond_2
    const-string p1, "sc_ldpl"

    invoke-static {p1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 583
    const-string p2, "sc_lshco"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 584
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    iget-object p2, p0, Lcom/uc/webview/export/internal/setup/o;->r:Landroid/webkit/ValueCallback;

    const-string v0, "shareCoreEvt"

    invoke-virtual {p1, v0, p2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 586
    :cond_3
    return-void
.end method

.method public final b()Lcom/uc/webview/export/internal/setup/az;
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    if-nez v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    if-nez v1, :cond_0

    .line 1143
    new-instance v1, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    .line 1145
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1147
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/o;->u:Lcom/uc/webview/export/internal/setup/az;

    return-object v0
.end method

.method public run()V
    .locals 17

    .line 777
    move-object/from16 v0, p0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 778
    new-instance v1, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->h:Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 780
    nop

    .line 1708
    nop

    .line 1709
    const-string v1, "ucmZipDir"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/utility/SetupTask;

    .line 1710
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "sdk_setup"

    invoke-virtual {v1, v5, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->setupGlobalOnce()V

    .line 1719
    const-string v1, "stat"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v4

    .line 1720
    new-instance v5, Lcom/uc/webview/export/internal/setup/r;

    invoke-direct {v5, v0, v4}, Lcom/uc/webview/export/internal/setup/r;-><init>(Lcom/uc/webview/export/internal/setup/o;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v5}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 1762
    new-instance v1, Landroid/util/Pair;

    const-string v4, "sdk_stp"

    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->callbackStat(Landroid/util/Pair;)V

    .line 1766
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "SYSTEM_WEBVIEW"

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1767
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1770
    sget-object v1, Lcom/uc/webview/export/internal/setup/o;->c:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_0
    const/16 v1, 0x11f

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 784
    const-string v1, "CONTEXT"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    .line 785
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->l:Landroid/webkit/ValueCallback;

    .line 786
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->k:Landroid/webkit/ValueCallback;

    .line 788
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 790
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 791
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v1

    const-string v4, "SdkSetupTask"

    if-nez v1, :cond_1

    .line 792
    const-string v1, "setup option force to use system webview"

    invoke-static {v4, v1}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_5

    .line 795
    :cond_1
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v1

    const-string v6, ""

    const-string v7, "first_use_sw"

    const-string v8, "1"

    const/16 v9, 0x1f4

    const-string v10, "ucmZipFile"

    const-string v11, "resFilePath"

    const-string v12, "soFilePath"

    const-string v13, "ucmKrlDir"

    if-eqz v1, :cond_a

    .line 796
    const-string v1, "isThickSDK"

    invoke-static {v4, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    nop

    .line 2452
    const/16 v1, 0x13a

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2454
    nop

    .line 2456
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2457
    iget-object v14, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2458
    iget-object v15, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2459
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2460
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v16, v14

    goto :goto_0

    :cond_2
    move-object/from16 v16, v1

    .line 2462
    :goto_0
    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v3}, Lcom/uc/webview/export/internal/utility/h;->b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2464
    invoke-static {}, Lcom/uc/webview/export/internal/utility/h;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v1

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    .line 2465
    const/16 v2, 0x1fd

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->b()Lcom/uc/webview/export/internal/setup/az;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    .line 2467
    const/16 v1, 0x1fe

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2468
    invoke-static {}, Lcom/uc/webview/export/internal/utility/h;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setUCM(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 2470
    invoke-static {v9, v8}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 2471
    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2472
    new-instance v2, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/uc/webview/export/internal/setup/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    .line 2473
    invoke-virtual {v2, v12, v14}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    .line 2474
    invoke-virtual {v2, v11, v15}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    .line 2475
    invoke-virtual {v2, v13, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    goto :goto_1

    .line 2476
    :cond_4
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2477
    new-instance v1, Lcom/uc/webview/export/internal/setup/b;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/b;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    .line 2478
    invoke-virtual {v1, v10, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    .line 2479
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2480
    const-string v1, "setup option to use system webview for first time in thick"

    invoke-static {v4, v1}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    iput-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;

    .line 2482
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    goto :goto_1

    .line 2476
    :cond_5
    const/4 v2, 0x0

    .line 2486
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v3}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2487
    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Z)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    .line 2488
    if-eqz v1, :cond_7

    .line 2489
    move-object v2, v1

    .line 2493
    :cond_7
    const/16 v1, 0x13b

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 2495
    nop

    .line 798
    nop

    .line 799
    const/16 v1, 0x123

    if-eqz v2, :cond_8

    .line 800
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 801
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_2

    .line 802
    :cond_8
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v2, :cond_9

    .line 803
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 804
    new-instance v1, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    invoke-direct {v0, v1, v6}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 809
    :goto_2
    const-string v1, "Thick SDK"

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->c(Ljava/lang/String;)V

    .line 810
    goto/16 :goto_5

    .line 806
    :cond_9
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const-string v2, "At least 1 of OPTION_SO_FILE_PATH |OPTION_UCM_KRL_DIR |OPTION_UCM_UPD_URL  should be given."

    const/16 v3, 0xbc9

    invoke-direct {v1, v3, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 811
    :cond_a
    const/16 v1, 0x120

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 812
    nop

    .line 3379
    const/16 v1, 0x8d

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 3381
    const-string v1, "csc_ndft"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 3382
    nop

    .line 3385
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "dexFilePath"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3386
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v5}, Lcom/uc/webview/export/internal/utility/h;->b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3387
    new-instance v1, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    .line 3388
    invoke-static {}, Lcom/uc/webview/export/internal/utility/h;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/bf;->setUCM(Lcom/uc/webview/export/internal/setup/br;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3389
    invoke-static {}, Lcom/uc/webview/export/internal/utility/h;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 3387
    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    .line 3390
    invoke-static {v9, v8}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 3391
    :cond_b
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 3392
    new-instance v3, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v3

    .line 3393
    invoke-virtual {v3, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3394
    invoke-virtual {v0, v12}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3395
    invoke-virtual {v0, v11}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto/16 :goto_3

    .line 3397
    :cond_c
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3398
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 3399
    new-instance v2, Lcom/uc/webview/export/internal/setup/b;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/b;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    .line 3400
    invoke-virtual {v2, v10, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3401
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3402
    const-string v2, "setup option to use system webview for first time"

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    iput-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->f:Lcom/uc/webview/export/internal/setup/l;

    .line 3404
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->b(Lcom/uc/webview/export/internal/setup/l;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    goto :goto_3

    .line 3407
    :cond_d
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ucmLibDir"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3408
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 3409
    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "forbid_repair"

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3416
    new-instance v3, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v3

    .line 3417
    invoke-virtual {v3, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    .line 3418
    goto :goto_3

    .line 3419
    :cond_e
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3420
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3421
    new-instance v2, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    .line 3422
    invoke-virtual {v2, v13, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto :goto_3

    .line 3424
    :cond_f
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ucmCfgFile"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3425
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 3426
    new-instance v3, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v3

    .line 3427
    invoke-virtual {v3, v2, v1}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/l;

    goto :goto_3

    .line 3425
    :cond_10
    const/4 v1, 0x0

    .line 3434
    :cond_11
    :goto_3
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/o;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3435
    nop

    .line 3436
    const-string v2, "skip_old_extra_kernel"

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v2

    .line 3435
    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Z)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    .line 3437
    if-eqz v2, :cond_12

    .line 3438
    move-object v1, v2

    .line 3442
    :cond_12
    const/16 v2, 0x8e

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 3446
    nop

    .line 812
    nop

    .line 813
    nop

    .line 814
    const-string v2, "sc_ldpl"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    const-string v3, "sc_lshco"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 816
    invoke-direct/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/o;->e()Lcom/uc/webview/export/internal/setup/l;

    move-result-object v2

    goto :goto_4

    .line 815
    :cond_13
    const/4 v2, 0x0

    .line 818
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "mUpdateTask: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " shareCoreTask: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/16 v3, 0x121

    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 821
    const/16 v3, 0x122

    if-eqz v1, :cond_15

    .line 822
    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v4, :cond_14

    if-eqz v2, :cond_14

    .line 824
    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;)V

    .line 825
    sget-object v4, Lcom/uc/webview/export/internal/setup/o;->c:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_14
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 828
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_5

    .line 829
    :cond_15
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->d:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v1, :cond_16

    .line 830
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 831
    new-instance v1, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    invoke-direct {v0, v1, v6}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_5

    .line 832
    :cond_16
    if-eqz v2, :cond_17

    .line 833
    invoke-direct {v0, v2}, Lcom/uc/webview/export/internal/setup/o;->a(Lcom/uc/webview/export/internal/setup/l;)V

    .line 834
    invoke-static {v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 835
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 845
    :goto_5
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 847
    return-void

    .line 837
    :cond_17
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const-string v2, "At least 1 of OPTION_DEX_FILE_PATH|OPTION_UCM_LIB_DIR|OPTION_UCM_KRL_DIR|OPTION_UCM_CFG_FILE|OPTION_UCM_UPD_URL and CD_KEY_SHARE_CORE_CLIENT_LOAD_POLICY should be given."

    const/16 v3, 0xbc9

    invoke-direct {v1, v3, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
