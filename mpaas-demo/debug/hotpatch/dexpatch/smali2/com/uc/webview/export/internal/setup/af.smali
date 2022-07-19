.class public Lcom/uc/webview/export/internal/setup/af;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Z

.field public static c:Lcom/uc/webview/export/internal/setup/br;

.field public static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Z

.field private static f:Ljava/lang/ClassLoader;

.field private static g:I

.field private static h:I

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    .line 46
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/webview/export/internal/setup/af;->b:Z

    .line 47
    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->c:Lcom/uc/webview/export/internal/setup/br;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    sput-boolean v1, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 51
    const-class v0, Lcom/uc/webview/export/internal/setup/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->f:Ljava/lang/ClassLoader;

    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    .line 53
    sput v0, Lcom/uc/webview/export/internal/setup/af;->h:I

    .line 55
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/uc/webview/export/internal/setup/af;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .line 102
    sget v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 3

    .line 227
    const/16 v0, 0x214

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 228
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 230
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    new-instance v1, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v1, p0, p1, p2}, Lcom/uc/webview/export/internal/setup/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/m;->run()V

    .line 237
    nop

    .line 4056
    iget-object p0, v1, Lcom/uc/webview/export/internal/setup/m;->c:Ljava/lang/ClassLoader;

    .line 237
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/ClassLoader;)V

    .line 239
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    const/16 p0, 0x215

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 241
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .line 239
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 98
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 3

    .line 190
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/HashSet;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 192
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->j:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const-string v0, "SetupController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doCoreStatusStat status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/uc/webview/export/internal/setup/ag;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/ag;-><init>(I)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/Runnable;)V

    .line 203
    return-void

    .line 193
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReveiveSetupStatus status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupController"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sput p0, Lcom/uc/webview/export/internal/setup/af;->h:I

    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->b()V

    .line 138
    return-void

    .line 130
    :pswitch_1
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->a()V

    .line 131
    aget-object p0, p1, v1

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->a(Landroid/content/Context;)V

    .line 133
    return-void

    .line 180
    :pswitch_2
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/af;->a(I)V

    .line 186
    :goto_0
    return-void

    .line 175
    :pswitch_3
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/af;->a(I)V

    .line 176
    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    .line 164
    const/16 p0, 0x232b

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_1
    const/16 p0, 0x2a

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 169
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/af;->a(I)V

    .line 171
    return-void

    .line 143
    :cond_2
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/ClassLoader;

    .line 144
    if-eqz p0, :cond_3

    .line 145
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/ClassLoader;)V

    .line 147
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->a()V

    .line 150
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 206
    if-nez p0, :cond_0

    .line 208
    const-string p0, "SetupController"

    const-string v0, "setClassLoader failed, maybe load jar failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 212
    :try_start_0
    sput-object p0, Lcom/uc/webview/export/internal/setup/af;->f:Ljava/lang/ClassLoader;

    .line 215
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v0

    .line 63
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 66
    nop

    .line 1098
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "CONTEXT"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    check-cast v2, Landroid/content/Context;

    sput-object v2, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    .line 67
    nop

    .line 2098
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "sdk_setup"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/uc/webview/export/internal/setup/af;->b:Z

    .line 68
    nop

    .line 69
    const-string v2, "AC"

    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/j;->a(Ljava/lang/Boolean;)Z

    move-result p0

    sput-boolean p0, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 71
    nop

    .line 3098
    sget-object p0, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "startup_policy"

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/Integer;

    .line 72
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/uc/webview/export/internal/setup/af;->g:I

    .line 75
    :cond_0
    const/16 p0, 0xf

    sget v2, Lcom/uc/webview/export/internal/setup/af;->g:I

    .line 77
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    .line 88
    const/16 p0, 0x136

    .line 90
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 88
    invoke-static {p0, v2, v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initSdkSetup sSetupPolicy:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sUseSdkSetup:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/uc/webview/export/internal/setup/af;->b:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sIsHardwareAccleration:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/uc/webview/export/internal/setup/af;->e:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SetupController"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static b()Z
    .locals 3

    .line 3106
    sget v0, Lcom/uc/webview/export/internal/setup/af;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    and-int/lit16 v0, v0, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public static c()I
    .locals 1

    .line 115
    sget v0, Lcom/uc/webview/export/internal/setup/af;->h:I

    return v0
.end method

.method public static d()V
    .locals 1

    .line 119
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/setup/af;->h:I

    .line 120
    return-void
.end method

.method public static e()Ljava/lang/ClassLoader;
    .locals 2

    .line 220
    sget-object v0, Lcom/uc/webview/export/internal/setup/af;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 221
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->f:Ljava/lang/ClassLoader;

    monitor-exit v0

    return-object v1

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
