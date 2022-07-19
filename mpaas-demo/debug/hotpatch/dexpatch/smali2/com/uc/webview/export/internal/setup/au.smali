.class public Lcom/uc/webview/export/internal/setup/au;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/au$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask<",
        "Lcom/uc/webview/export/internal/setup/au;",
        "Lcom/uc/webview/export/internal/setup/au;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/uc/webview/export/internal/setup/au;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/au;->a:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/au;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/uc/webview/export/internal/setup/au;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/uc/webview/export/internal/setup/au;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".shareDownloadFile("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string p1, "csc_cupdp"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 66
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    sget-object p1, Lcom/uc/webview/export/internal/setup/au;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 68
    :try_start_0
    const-string v0, "csc_cupdcp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/uc/webview/export/internal/setup/au$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/au$a;-><init>(B)V

    sget v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Update:I

    invoke-static {p0, p2, v0}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 70
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 31
    sget-object v0, Lcom/uc/webview/export/internal/setup/au;->a:Ljava/lang/String;

    const-string v1, ".run"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/au;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    const-string v1, "o_st_dhcs"

    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/uc/webview/export/internal/setup/au;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    :try_start_1
    new-instance v3, Lcom/uc/webview/export/internal/setup/au$a;

    invoke-direct {v3, v2}, Lcom/uc/webview/export/internal/setup/au$a;-><init>(B)V

    const-string v2, "o_st_cisuc"

    .line 37
    invoke-virtual {p0, v2}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v2

    const-string v3, "o_st_hupds"

    .line 38
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v3

    const-string v4, "dlChecker"

    .line 39
    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    .line 36
    invoke-static {v0, v2, v3, v4}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;ZZLjava/util/concurrent/Callable;)V

    .line 40
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 42
    :cond_0
    const-string v1, "sc_cd_fp"

    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v3, "csc_crnp"

    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 45
    sget-object v3, Lcom/uc/webview/export/internal/setup/au;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    :try_start_3
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    const-string v4, "csc_crncp"

    invoke-static {v4}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 48
    new-instance v4, Lcom/uc/webview/export/internal/setup/au$a;

    invoke-direct {v4, v2}, Lcom/uc/webview/export/internal/setup/au$a;-><init>(B)V

    sget v4, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Other:I

    invoke-static {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    :cond_1
    new-instance v1, Lcom/uc/webview/export/internal/setup/au$a;

    invoke-direct {v1, v2}, Lcom/uc/webview/export/internal/setup/au$a;-><init>(B)V

    const-string v1, "o_st_cisuc"

    .line 52
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v1

    const-string v2, "o_st_hupds"

    .line 53
    invoke-virtual {p0, v2}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v2

    const-string v4, "dlChecker"

    .line 54
    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    .line 51
    invoke-static {v0, v1, v2, v4}, Lcom/uc/webview/export/internal/setup/au$a;->a(Landroid/content/Context;ZZLjava/util/concurrent/Callable;)V

    .line 55
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    return-void
.end method
