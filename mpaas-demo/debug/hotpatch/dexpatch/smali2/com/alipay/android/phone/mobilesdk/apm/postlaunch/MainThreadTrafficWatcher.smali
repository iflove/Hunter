.class public Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;
.super Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;
.source "MainThreadTrafficWatcher.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private b:J

.field private c:Landroid/os/Handler;

.field private d:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->c:Landroid/os/Handler;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->e:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->f:Ljava/util/Queue;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    .line 23
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;)Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;
    .param p1, "x1"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->d:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    return-object p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->f:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;

    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->d:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    .line 86
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a()V

    .line 87
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$2;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public final bridge synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 124
    invoke-super {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b()V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainThreadTrafficWatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$3;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method final c()V
    .locals 0

    .line 146
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    .local v1, "copy":Ljava/util/List;
    const-wide/16 v2, 0x0

    .line 153
    .local v2, "totalBusy":D
    const-wide/16 v4, 0x0

    .line 154
    .local v4, "totalIdle":D
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    .line 155
    .local v0, "data":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;
    iget-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->c:J

    long-to-double v7, v7

    add-double/2addr v2, v7

    .line 156
    iget-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->d:J

    long-to-double v7, v7

    add-double/2addr v4, v7

    .line 157
    .end local v0    # "data":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;
    goto :goto_0

    .line 159
    .end local v1    # "copy":Ljava/util/List;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 161
    .local v6, "messageCount":I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v0, "ret":Ljava/util/HashMap;
    move-object v0, v7

    const-string v8, "avgBusy"

    int-to-double v9, v6

    div-double v9, v2, v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v7, "avgIdle"

    int-to-double v8, v6

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v7, "idleRate"

    add-double v8, v2, v4

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    return-object v0

    .line 167
    .end local v0    # "ret":Ljava/util/HashMap;
    .end local v2    # "totalBusy":D
    .end local v4    # "totalIdle":D
    .end local v6    # "messageCount":I
    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1
.end method

.method public final f()Z
    .locals 9

    .line 99
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->f:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    .line 101
    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->a()V

    .line 102
    goto :goto_0

    .line 104
    :cond_0
    nop

    .line 105
    nop

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    .line 107
    iget-wide v7, v6, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->c:J

    long-to-double v7, v7

    add-double/2addr v4, v7

    .line 108
    iget-wide v6, v6, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v6, v6

    add-double/2addr v2, v6

    .line 109
    goto :goto_1

    .line 111
    :cond_1
    add-double/2addr v4, v2

    div-double/2addr v2, v4

    .line 115
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainThreadTrafficWatcher"

    const-string/jumbo v4, "should stop for main traffic watcher."

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    return v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/String;

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    if-eqz v0, :cond_0

    .line 49
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    .line 50
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->b()V

    .line 54
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->b:J

    return-void

    .line 56
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 58
    .local v0, "now":J
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->d()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .end local v0    # "now":J
    return-void

    .line 71
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    if-eqz v0, :cond_3

    .line 72
    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->a:Z

    .line 73
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;->b()V

    .line 78
    :cond_3
    return-void
.end method
