.class public Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;
.super Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;
.source "ThreadWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/lang/ThreadGroup;

.field private static volatile b:Z


# instance fields
.field private volatile c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->c:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->d:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->e:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->f:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->g:Ljava/util/Queue;

    .line 42
    return-void
.end method

.method private static g()I
    .locals 1

    .line 50
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->b:Z

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->h()V

    .line 54
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->a:Ljava/lang/ThreadGroup;

    if-nez v0, :cond_1

    .line 56
    const/4 v0, -0x1

    return v0

    .line 58
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->a:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private static declared-synchronized h()V
    .locals 5

    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;

    monitor-enter v0

    .line 64
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    const/4 v2, 0x0

    .line 67
    .local v2, "systemField":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v3, Ljava/lang/ThreadGroup;

    const-string/jumbo v4, "systemThreadGroup"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 75
    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 71
    :try_start_2
    const-class v3, Ljava/lang/ThreadGroup;

    const-string/jumbo v4, "mSystem"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 74
    goto :goto_0

    .line 72
    :catch_1
    move-exception v3

    .line 76
    :goto_0
    if-eqz v2, :cond_0

    .line 78
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadGroup;

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->a:Ljava/lang/ThreadGroup;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    monitor-exit v0

    return-void

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "ThreadWatcher"

    const-string v4, "get systemThreadGroup failed."

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    :cond_0
    monitor-exit v0

    return-void

    .line 63
    .end local v2    # "systemField":Ljava/lang/reflect/Field;
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static i()Ljava/lang/String;
    .locals 4

    .line 154
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    .local v0, "allThreadName":Ljava/util/Set;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 157
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 158
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    nop

    .end local v2    # "thread":Ljava/lang/Thread;
    goto :goto_0

    .line 160
    .end local v0    # "allThreadName":Ljava/util/Set;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 161
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v0, 0x0

    .line 162
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 20
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a()V

    return-void
.end method

.method public final bridge synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 20
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b()V

    return-void
.end method

.method final c()V
    .locals 7

    .line 88
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->g()I

    move-result v0

    const/4 v1, 0x0

    .line 89
    .local v1, "threadNumber":I
    move v1, v0

    const/16 v2, 0xa5

    if-le v0, v2, :cond_0

    .line 90
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->c:Z

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->c:Z

    .line 92
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->d:Ljava/lang/String;

    .line 101
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 102
    .local v2, "now":J
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;-><init>(IJ)V

    .line 103
    .local v0, "metaData":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "current thread number:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ThreadWatcher"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->f:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->g:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ThreadWatcher"

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    .line 128
    .local v1, "start":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    .line 129
    .local v2, "max":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    .line 131
    .local v3, "last":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", last:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 133
    .local v5, "ret":Ljava/util/Map;
    move-object v5, v4

    const-string v6, "1stTN"

    iget v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v4, "maxTN"

    iget v6, v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v4, "lastTN"

    iget v6, v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v4, "1st2max"

    iget-wide v6, v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->b:J

    iget-wide v8, v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->b:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v4, "max2last"

    iget-wide v6, v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->b:J

    iget-wide v8, v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->b:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->d:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 140
    const-string/jumbo v6, "threadInfo"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->e:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 143
    const-string v6, "currentApp"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    return-object v5

    .line 146
    .end local v1    # "start":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    .end local v2    # "max":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    .end local v3    # "last":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    .end local v5    # "ret":Ljava/util/Map;
    :catchall_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "collect thread watcher error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public final f()Z
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    .line 113
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 114
    return v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->g:Ljava/util/Queue;

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    .line 118
    .local v0, "max":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;->g:Ljava/util/Queue;

    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    .line 121
    .local v2, "min":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
    iget v3, v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    iget v4, v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
