.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;
.super Ljava/lang/Object;
.source "SmoothnessMonitorImpl.java"

# interfaces
.implements Landroid/util/Printer;
.implements Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;


# instance fields
.field public volatile a:Z

.field private b:J

.field private c:Z

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Field;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private volatile j:Z

.field private volatile k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->b:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->d:Ljava/lang/reflect/Field;

    .line 54
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->e:Ljava/lang/reflect/Field;

    .line 55
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->f:Ljava/lang/reflect/Method;

    .line 69
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->i:Landroid/content/Context;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->h:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 74
    return-void
.end method

.method private a()Landroid/os/Message;
    .locals 11

    .line 163
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 164
    monitor-enter v0

    .line 167
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    nop

    .line 170
    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->d:Ljava/lang/reflect/Field;

    if-nez v5, :cond_0

    .line 171
    const-class v5, Landroid/os/MessageQueue;

    const-string/jumbo v6, "mMessages"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->d:Ljava/lang/reflect/Field;

    .line 172
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v5

    .line 176
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "SmoothnessMonitorImpl"

    invoke-interface {v6, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v1

    .line 178
    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_5

    .line 182
    :cond_1
    nop

    .line 184
    const/4 v6, 0x0

    :try_start_3
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->e:Ljava/lang/reflect/Field;

    if-nez v7, :cond_2

    .line 185
    const-class v7, Landroid/os/Message;

    const-string/jumbo v8, "next"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->e:Ljava/lang/reflect/Field;

    .line 186
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    :cond_2
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :try_start_4
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->f:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    .line 190
    const-class v5, Landroid/os/Message;

    const-string v8, "isAsynchronous"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->f:Ljava/lang/reflect/Method;

    .line 191
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 193
    :cond_3
    if-eqz v7, :cond_4

    .line 194
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->f:Ljava/lang/reflect/Method;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    :cond_4
    move-object v5, v7

    goto :goto_2

    .line 196
    :catch_1
    move-exception v5

    move-object v10, v7

    move-object v7, v5

    move-object v5, v10

    goto :goto_1

    :catch_2
    move-exception v7

    .line 197
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string v9, "SmoothnessMonitorImpl"

    invoke-interface {v8, v9, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :goto_2
    if-eqz v5, :cond_5

    if-eqz v6, :cond_1

    .line 201
    :cond_5
    if-eqz v5, :cond_6

    .line 202
    invoke-virtual {v5}, Landroid/os/Message;->getWhen()J

    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v4, v2, v6

    if-gez v4, :cond_6

    .line 203
    goto :goto_3

    .line 206
    :cond_6
    move-object v1, v5

    :goto_3
    :try_start_6
    monitor-exit v0

    return-object v1

    .line 207
    :catchall_0
    move-exception v2

    .line 208
    monitor-exit v0

    return-object v1

    .line 210
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "SmoothnessMonitorImpl"

    .line 251
    if-nez p1, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 255
    return-void

    .line 257
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 258
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "monitor_smoothness_switch"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 259
    .local v1, "switchOn":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkCanWork -- monitor_smoothness_switch = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v1, :cond_3

    .line 261
    iget-boolean v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->j:Z

    if-eqz v4, :cond_2

    .line 262
    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->k:Z

    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a:Z

    return-void

    .line 264
    :cond_2
    const-class v4, Landroid/view/Choreographer;

    const-string v5, "USE_VSYNC"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 265
    .local v2, "USE_VSYNC_FIELD":Ljava/lang/reflect/Field;
    move-object v2, v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 266
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 267
    .local v4, "useVsync":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checkCanWork -- useVsync = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iput-boolean v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->j:Z

    .line 269
    iput-boolean v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->k:Z

    .line 270
    iput-boolean v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a:Z

    .line 271
    .end local v2    # "USE_VSYNC_FIELD":Ljava/lang/reflect/Field;
    .end local v4    # "useVsync":Z
    return-void

    .line 273
    :cond_3
    iput-boolean v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v1    # "switchOn":Z
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    return-void

    .line 275
    :catchall_0
    move-exception v1

    .line 276
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "checkCanWork error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static b()Z
    .locals 2

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addSmoothnessMonitor(Ljava/lang/Object;Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "result"    # Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;

    .line 147
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a:Z

    iput-boolean v0, p2, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mCanWork:Z

    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public declared-synchronized getSmoothnessResult(Ljava/lang/Object;)J
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 154
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 156
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->getScore()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 152
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public println(Ljava/lang/String;)V
    .locals 6
    .param p1, "x"    # Ljava/lang/String;

    .line 215
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->c:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 218
    :cond_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->b:J

    return-void

    .line 220
    :cond_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 223
    return-void

    .line 225
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->b:J

    sub-long/2addr v0, v2

    .line 226
    .local v0, "timeCost":J
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;

    .line 227
    .local v3, "listener":Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;
    move-object v3, v4

    if-eqz v4, :cond_3

    .line 228
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->b:J

    invoke-interface {v3, v4, v5, v0, v1}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;->onUpdateUnsolvedLagTime(JJ)V

    .line 230
    .end local v3    # "listener":Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;
    :cond_3
    goto :goto_0

    .line 231
    :cond_4
    const-string v4, "android.view.Choreographer$FrameHandler"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 232
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;

    .line 233
    .restart local v3    # "listener":Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;
    invoke-interface {v4, v5}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;->onClearingTimeCount(Z)V

    .line 234
    .end local v3    # "listener":Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;
    goto :goto_1

    :cond_5
    return-void

    .line 236
    :cond_6
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a()Landroid/os/Message;

    move-result-object v3

    .line 237
    .local v2, "msg":Landroid/os/Message;
    if-nez v3, :cond_7

    .line 238
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;

    .line 239
    invoke-interface {v4, v5}, Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;->onClearingTimeCount(Z)V

    .line 240
    goto :goto_2

    .line 244
    .end local v0    # "timeCost":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_7
    return-void

    .line 216
    :cond_8
    :goto_3
    return-void
.end method

.method public setListener(Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public declared-synchronized start()V
    .locals 0

    monitor-enter p0

    .line 78
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized start(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 87
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 92
    .local v1, "smoothnessRequest":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 93
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_2
    iget-boolean v0, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mDone:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->c:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 102
    iput-boolean v2, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "SmoothnessMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start a smoothness request, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;
    :cond_3
    :try_start_3
    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->c:Z

    .line 109
    iput-boolean v2, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mRecordingStartTime:J

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->addMessageLogging(Landroid/util/Printer;)V

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "SmoothnessMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start smoothness monitor success by a request, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 98
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    .end local v1    # "smoothnessRequest":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "startCal called outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 0

    .line 118
    return-void
.end method

.method public declared-synchronized stop(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->c:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;

    const/4 v1, 0x0

    .line 127
    .local v1, "smoothnessRequest":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 128
    iget-boolean v0, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->onClearingTimeCount(Z)V

    .line 130
    iput-boolean v2, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mStarting:Z

    .line 131
    iput-boolean v0, v1, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->mDone:Z

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "SmoothnessMonitorImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stop success, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->removeMessageLogging(Landroid/util/Printer;)V

    .line 139
    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessMonitorImpl;->c:Z

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "SmoothnessMonitorImpl"

    const-string/jumbo v3, "stop smoothness monitor success"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v1    # "smoothnessRequest":Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;
    :cond_1
    monitor-exit p0

    return-void

    .line 123
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "startCal called outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
