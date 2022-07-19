.class public final Lcom/uc/webview/export/internal/setup/j;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/j$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 3

    .line 89
    sget-object v0, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    monitor-exit v0

    return-object p0

    .line 93
    :cond_0
    const/16 v1, 0xe7

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 95
    sget-boolean v1, Lcom/uc/webview/export/internal/setup/af;->e:Z

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/uc/webview/export/internal/uc/CoreFactory;->initUCMobileWebKit(Landroid/content/Context;ZZ)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object p0

    .line 99
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 101
    invoke-static {p0}, Lcom/uc/webview/export/internal/d;->a(Lcom/uc/webview/export/internal/interfaces/InvokeObject;)V

    .line 103
    const/16 p0, 0xe8

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 106
    sget-object p0, Lcom/uc/webview/export/internal/setup/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    return-object p0

    .line 107
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a()V
    .locals 7

    .line 37
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    .line 39
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v0

    .line 41
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 42
    nop

    .line 44
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 42
    const/16 v0, 0x137

    invoke-static {v0, v2, v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 51
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v0

    sget v1, Lcom/uc/webview/export/internal/setup/ae$d;->a:I

    sget-object v2, Lcom/uc/webview/export/internal/setup/ae$b;->j:Lcom/uc/webview/export/internal/setup/ae$b;

    new-instance v3, Lcom/uc/webview/export/internal/setup/ae$a;

    .line 54
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/uc/webview/export/internal/setup/k;

    invoke-direct {v5}, Lcom/uc/webview/export/internal/setup/k;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/uc/webview/export/internal/setup/ae$a;-><init>(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)V

    .line 51
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/uc/webview/export/internal/setup/ae;->a(ILcom/uc/webview/export/internal/setup/ae$b;Ljava/util/concurrent/Callable;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/ae$c;

    .line 64
    return-void
.end method

.method public static a(Ljava/lang/Boolean;)Z
    .locals 3

    .line 81
    if-nez p0, :cond_2

    .line 82
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 83
    :goto_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/uc/webview/export/utility/Utils;->checkSupportSamplerExternalOES()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    .line 85
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b()V
    .locals 4

    .line 69
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v0

    .line 71
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getCoreType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 72
    invoke-static {v2}, Lcom/uc/webview/export/internal/SDKFactory;->f(I)V

    .line 74
    nop

    .line 76
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/b;->d()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 74
    const/16 v0, 0x134

    invoke-static {v0, v2, v3}, Lcom/uc/webview/export/internal/uc/startup/b;->a(IJ)V

    .line 78
    return-void
.end method

.method public static c()V
    .locals 3

    .line 113
    sget-boolean v0, Lcom/uc/webview/export/internal/setup/af;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    new-instance v1, Lcom/uc/webview/export/internal/setup/j$a;

    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/uc/webview/export/internal/setup/j$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V

    .line 117
    :cond_0
    return-void
.end method

.method public static d()V
    .locals 7

    .line 120
    const-string v0, "InitUtil"

    const-string v1, "initVideoSetting begin"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    .line 123
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/af;->b:Z

    if-eqz v2, :cond_5

    .line 124
    const/16 v2, 0xeb

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 126
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/af;->e:Z

    .line 1155
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->e()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    .line 1158
    invoke-static {}, Lcom/uc/webview/export/internal/setup/j;->e()I

    move-result v3

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1160
    :goto_0
    if-nez v2, :cond_1

    if-eqz v5, :cond_1

    .line 1161
    const-string v2, "UC Core not support Hardware accelerated."

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/4 v5, 0x0

    .line 1166
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    const-string v4, "video_hardward_accelerate"

    if-ge v2, v3, :cond_3

    .line 1167
    if-eqz v5, :cond_2

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Hardware accelerated is supported start at api level 14 and now is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v2

    invoke-interface {v2, v4, v6}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1173
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v2

    invoke-interface {v2, v4, v5}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setBoolValue(Ljava/lang/String;Z)V

    .line 1174
    if-eqz v5, :cond_4

    .line 1175
    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    .line 127
    :cond_4
    :goto_1
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->j()V

    .line 134
    sget-object v2, Lcom/uc/webview/export/internal/setup/af;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/util/Map;)V

    .line 135
    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->d(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->n()V

    .line 139
    const/16 v1, 0xec

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 142
    :cond_5
    const-string v1, "initVideoSetting end"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private static e()I
    .locals 2

    .line 146
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "VIDEO_AC"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 151
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
