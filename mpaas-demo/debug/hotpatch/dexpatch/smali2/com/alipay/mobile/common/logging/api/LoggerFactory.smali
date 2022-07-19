.class public Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMpaasLogger;,
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullEventLogger;,
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullDeviceProperty;,
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullProcessInfo;,
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;,
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;,
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;,
        Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullBehavorLogger;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LoggerFactory"

.field private static a:Lcom/alipay/mobile/common/logging/api/ProcessInfo;

.field private static b:Lcom/alipay/mobile/common/logging/api/DeviceProperty;

.field private static c:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private static d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private static e:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

.field private static f:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

.field private static g:Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;

.field private static h:Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullProcessInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullProcessInfo;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a:Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    .line 55
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullDeviceProperty;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullDeviceProperty;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->b:Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    .line 56
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->c:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 58
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 59
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullBehavorLogger;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullBehavorLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->e:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    .line 60
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->f:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 61
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullEventLogger;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullEventLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->g:Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;

    .line 62
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMpaasLogger;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMpaasLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->h:Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string/jumbo v1, "need invoke bind before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "LoggerFactory"

    const-string/jumbo v2, "reportNoInitialization"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V

    return-void
.end method

.method public static attachLogContext(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 0
    .param p0, "_logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 110
    if-eqz p0, :cond_0

    .line 111
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->c:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 113
    :cond_0
    return-void
.end method

.method public static attachProcessInfo(Lcom/alipay/mobile/common/logging/api/ProcessInfo;)V
    .locals 0
    .param p0, "_processInfo"    # Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    .line 79
    if-eqz p0, :cond_0

    .line 80
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a:Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    .line 82
    :cond_0
    return-void
.end method

.method public static declared-synchronized bind(Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;)V
    .locals 4
    .param p0, "_traceLogger"    # Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .param p1, "_behavorLogger"    # Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    .param p2, "_monitorLogger"    # Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    .param p3, "_eventLogger"    # Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;
    .param p4, "_mpaasLogger"    # Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v0

    .line 192
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 197
    if-eqz p0, :cond_1

    .line 198
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 200
    :cond_1
    if-eqz p1, :cond_2

    .line 201
    sput-object p1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->e:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    .line 203
    :cond_2
    if-eqz p2, :cond_3

    .line 204
    sput-object p2, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->f:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 206
    :cond_3
    if-eqz p3, :cond_4

    .line 207
    sput-object p3, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->g:Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;

    .line 209
    :cond_4
    if-eqz p4, :cond_5

    .line 210
    sput-object p4, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->h:Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    .line 213
    :cond_5
    sget-object v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    if-eqz v1, :cond_6

    .line 214
    const-string v2, "LoggerFactory"

    const-string v3, "LoggerFactory.bind invoked"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_6
    monitor-exit v0

    return-void

    .line 193
    :cond_7
    :goto_0
    monitor-exit v0

    return-void

    .line 191
    .end local p0    # "_traceLogger":Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .end local p1    # "_behavorLogger":Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    .end local p2    # "_monitorLogger":Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    .end local p3    # "_eventLogger":Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;
    .end local p4    # "_mpaasLogger":Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static bindImpls(Lcom/alipay/mobile/common/logging/api/DeviceProperty;)V
    .locals 0
    .param p0, "_deviceProperty"    # Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    .line 92
    if-eqz p0, :cond_0

    .line 93
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->b:Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    .line 95
    :cond_0
    return-void
.end method

.method public static getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    .locals 1

    .line 121
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->e:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    return-object v0
.end method

.method public static getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;
    .locals 1

    .line 88
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->b:Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    return-object v0
.end method

.method public static getEventLogger()Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;
    .locals 1

    .line 170
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->g:Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;

    return-object v0
.end method

.method public static getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;
    .locals 1

    .line 103
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->c:Lcom/alipay/mobile/common/logging/api/LogContext;

    return-object v0
.end method

.method public static getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    .locals 1

    .line 157
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->f:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    return-object v0
.end method

.method public static getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;
    .locals 1

    .line 178
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->h:Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    return-object v0
.end method

.method public static getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;
    .locals 1

    .line 72
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a:Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    return-object v0
.end method

.method public static getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .line 139
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.alipay.mobile.common.logging.LoggerFactoryBinder"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 222
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "bind"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v4, v2

    .line 223
    .local v4, "method":Ljava/lang/reflect/Method;
    move-object v4, v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v8

    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    monitor-exit v0

    return-void

    .line 225
    :catchall_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "LoggerFactory"

    const-string v3, "init"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    nop

    .end local v1    # "e":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 219
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initQuinoxless(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v0

    .line 231
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 232
    monitor-exit v0

    return-void

    .line 234
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->j:Z

    .line 235
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->init(Landroid/content/Context;)V

    .line 236
    if-eqz p0, :cond_1

    .line 237
    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :cond_1
    monitor-exit v0

    return-void

    .line 230
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setBehavorLogger(Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;)V
    .locals 1
    .param p0, "behavorLogger"    # Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v0

    .line 130
    :try_start_0
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->e:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    return-void

    .line 129
    .end local p0    # "behavorLogger":Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setEventLogger(Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;)V
    .locals 0
    .param p0, "eventLogger"    # Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;

    .line 174
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->g:Lcom/alipay/mobile/common/logging/api/antevent/EventLogger;

    .line 175
    return-void
.end method

.method public static declared-synchronized setMonitorLogger(Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;)V
    .locals 1
    .param p0, "monitorLogger"    # Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v0

    .line 166
    :try_start_0
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->f:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit v0

    return-void

    .line 165
    .end local p0    # "monitorLogger":Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setMpaasLogger(Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;)V
    .locals 0
    .param p0, "mpaasLogger"    # Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    .line 182
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->h:Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    .line 183
    return-void
.end method

.method public static declared-synchronized setTraceLogger(Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;)V
    .locals 1
    .param p0, "traceLogger"    # Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v0

    .line 148
    :try_start_0
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v0

    return-void

    .line 147
    .end local p0    # "traceLogger":Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
