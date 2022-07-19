.class public final Lcom/uc/webview/export/internal/setup/ah$a;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/internal/setup/ah;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ah$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/uc/webview/export/internal/setup/ah$a;->b(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;
    .locals 2

    .line 74
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    const-class v0, Lcom/uc/webview/export/internal/setup/ah;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/ah$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    sget-object p1, Lcom/uc/webview/export/internal/setup/ah$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/internal/setup/ah;

    .line 80
    invoke-virtual {p1, p0}, Lcom/uc/webview/export/internal/setup/ah;->a(Lcom/uc/webview/export/internal/setup/UCSetupTask;)V

    .line 81
    monitor-exit v0

    return-object p1

    .line 84
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/ah$a;->b(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;

    move-result-object p0

    .line 85
    monitor-exit v0

    return-object p0

    .line 86
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/ah;
    .locals 3

    .line 90
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ah;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    const-class v0, Lcom/uc/webview/export/internal/setup/ah;

    monitor-enter v0

    .line 95
    :try_start_0
    new-instance v1, Lcom/uc/webview/export/internal/setup/ah;

    invoke-direct {v1, p0, p1, p2}, Lcom/uc/webview/export/internal/setup/ah;-><init>(Lcom/uc/webview/export/internal/setup/UCSetupTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    sget-object p0, Lcom/uc/webview/export/internal/setup/ah$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v0

    return-object v1

    .line 98
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
