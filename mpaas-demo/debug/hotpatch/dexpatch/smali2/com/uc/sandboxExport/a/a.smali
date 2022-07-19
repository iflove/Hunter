.class public final Lcom/uc/sandboxExport/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Z

.field private static b:Z

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/sandboxExport/a/a;->a:Z

    .line 13
    sput-boolean v0, Lcom/uc/sandboxExport/a/a;->b:Z

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/sandboxExport/a/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 17
    sget-boolean v0, Lcom/uc/sandboxExport/a/a;->b:Z

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lcom/uc/sandboxExport/a/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-boolean v1, Lcom/uc/sandboxExport/a/a;->b:Z

    if-nez v1, :cond_0

    .line 20
    invoke-static {}, Lcom/uc/sandboxExport/a/a;->b()Z

    move-result v1

    sput-boolean v1, Lcom/uc/sandboxExport/a/a;->a:Z

    .line 21
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/sandboxExport/a/a;->b:Z

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/uc/sandboxExport/a/a;->a:Z

    return v0
.end method

.method private static b()Z
    .locals 5

    .line 29
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/Process;

    const-string v3, "isIsolated"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 34
    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 36
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 40
    :cond_0
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v2

    .line 44
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 45
    const v3, 0x186a0

    rem-int/2addr v2, v3

    .line 48
    const v3, 0x182b8

    if-lt v2, v3, :cond_1

    const v3, 0x1869f

    if-gt v2, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method
