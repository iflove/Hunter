.class public abstract Lcom/uc/webview/export/internal/setup/bs;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field static final g:Ljava/lang/Object;


# instance fields
.field protected e:Lcom/uc/webview/export/internal/setup/br;

.field protected f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

.field h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/uc/webview/export/internal/setup/ae$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/bs;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;Lcom/uc/webview/export/internal/setup/br;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    .line 24
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bs;->e:Lcom/uc/webview/export/internal/setup/br;

    .line 25
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bs;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 26
    return-void
.end method

.method protected static d()I
    .locals 1

    .line 39
    sget v0, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    return v0
.end method


# virtual methods
.method public final a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/uc/webview/export/internal/setup/ae$b;",
            "Ljava/util/concurrent/Callable<",
            "*>;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/setup/ae;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/ae$c;

    move-result-object p3

    .line 54
    if-eqz p3, :cond_0

    sget p3, Lcom/uc/webview/export/internal/setup/ae$d;->b:I

    if-eq p1, p3, :cond_0

    .line 55
    sget-object p1, Lcom/uc/webview/export/internal/setup/bs;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 56
    :try_start_0
    iget-object p3, p0, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 59
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 0

    .line 47
    return-void
.end method

.method public final c()V
    .locals 1

    .line 29
    const/16 v0, 0x12a

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 30
    invoke-static {}, Lcom/uc/webview/export/internal/utility/i;->a()V

    .line 31
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bs;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bs;->b()V

    .line 34
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 63
    sget-object v0, Lcom/uc/webview/export/internal/setup/bs;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/ae$b;

    .line 66
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/ae$b;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bs;->h:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
