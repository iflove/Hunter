.class public Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;
.super Ljava/lang/Object;
.source "AppHealthMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field private static c:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

.field private volatile i:Z

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->g:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->i:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->h:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    .line 65
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;
    .locals 2

    .line 68
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;-><init>()V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->c:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 231
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method private e()V
    .locals 7

    .line 132
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->i:Z

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 136
    .local v2, "ctx":Landroid/content/Context;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v1

    .line 138
    .local v4, "filter":Landroid/content/IntentFilter;
    move-object v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".health.ACTION_TICK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".health.ACTION_FLUSH"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthProcessEventReceiver;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HealthProcessEventReceiver;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V

    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->j:Landroid/content/BroadcastReceiver;

    .line 141
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->e:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->i:Z

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "AppHealthMonitorManager"

    const-string/jumbo v5, "register process event receiver."

    invoke-interface {v1, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private f()V
    .locals 5

    .line 147
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->i:Z

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x1

    .line 151
    .local v0, "shouldUnregisterReceiver":Z
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;

    .line 152
    invoke-interface {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 154
    goto :goto_1

    .line 156
    :cond_1
    goto :goto_0

    .line 157
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 158
    return-void

    .line 160
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 161
    .local v1, "ctx":Landroid/content/Context;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->j:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 162
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->j:Landroid/content/BroadcastReceiver;

    .line 165
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->i:Z

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "AppHealthMonitorManager"

    const-string/jumbo v4, "unregister process event receiver."

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "eventType"    # I

    const-string v0, "AppHealthMonitorManager"

    .line 195
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trace event, eventType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;

    .line 197
    .local v2, "worker":Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;
    move-object v2, v3

    invoke-interface {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-interface {v2, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v2    # "worker":Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;
    goto :goto_0

    .line 204
    :cond_1
    return-void

    .line 202
    :catchall_0
    move-exception v1

    .line 203
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "trace event error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;

    .line 239
    .local v1, "subscriber":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;
    :try_start_0
    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;->c()I

    move-result v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    if-ne v2, p1, :cond_0

    .line 240
    invoke-interface {v1, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    goto :goto_0

    .line 242
    :catchall_0
    move-exception v2

    .line 243
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "AppHealthMonitorManager"

    const-string/jumbo v5, "notify subscriber error"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    .end local v1    # "subscriber":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;
    .end local v2    # "tr":Ljava/lang/Throwable;
    goto :goto_0

    .line 246
    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .line 209
    const-string v0, "AppHealthMonitorManager"

    iget-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->i:Z

    if-nez v1, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const-string p2, "Unknown"

    .line 216
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "track event by broadcast, event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 219
    .local v1, "ctx":Landroid/content/Context;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".health.ACTION_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".health.ACTION_FLUSH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v1    # "ctx":Landroid/content/Context;
    :cond_3
    return-void

    .line 224
    :catchall_0
    move-exception v1

    .line 225
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "track event by broadcast error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final declared-synchronized a(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "workerHandler"    # Landroid/os/Handler;
    .param p2, "processType"    # I

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AppHealthMonitorManager"

    const-string v2, "AppHealthMonitorManager has been init before!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->e:Landroid/os/Handler;

    .line 83
    iput p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->g:I

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 85
    .local v1, "workers":Ljava/util/HashMap;
    move-object v1, v0

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->a:Ljava/lang/Integer;

    new-instance v3, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundCpuUsageWorker;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->b:Ljava/lang/Integer;

    new-instance v2, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/BackgroundProcessAliveWorker;-><init>(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 78
    .end local v1    # "workers":Ljava/util/HashMap;
    .end local p1    # "workerHandler":Landroid/os/Handler;
    .end local p2    # "processType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;)V
    .locals 1
    .param p1, "subscriber"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "workerType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AppHealthMonitorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start trace, workerType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;

    const/4 v1, 0x0

    .line 120
    .local v1, "worker":Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;
    move-object v1, v0

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "AppHealthMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "this worker has been started, workerType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 123
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;->b()V

    .line 124
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v1    # "worker":Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;
    monitor-exit p0

    return-void

    .line 115
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AppHealthMonitorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start trace error because of absent required worker, workerType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AppHealthMonitorManager"

    const-string/jumbo v3, "start trace error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 112
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;
    .end local p1    # "workerType":Ljava/lang/Integer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/os/Handler;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 94
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppHealthMonitorManager must be init first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;)V
    .locals 1
    .param p1, "subscriber"    # Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager$Subscriber;

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "workerType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AppHealthMonitorManager"

    const-string/jumbo v2, "stop trace"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;

    const/4 v1, 0x0

    .line 178
    .local v1, "worker":Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;
    move-object v1, v0

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "AppHealthMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "this worker has been stopped, workerType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 181
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;->c()V

    .line 182
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v1    # "worker":Lcom/alipay/android/phone/mobilesdk/monitor/health/worker/IHealthWorker;
    monitor-exit p0

    return-void

    .line 173
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AppHealthMonitorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stop trace error because of absent required worker, workerType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "AppHealthMonitorManager"

    const-string/jumbo v3, "stop trace error"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 170
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;
    .end local p1    # "workerType":Ljava/lang/Integer;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->g:I

    return v0
.end method

.method public final d()Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorManager;->h:Lcom/alipay/android/phone/mobilesdk/monitor/health/AppHealthMonitorConfigure;

    return-object v0
.end method
