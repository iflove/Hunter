.class public Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;
.super Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;
.source "MainThreadSensitiveWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;,
        Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->b:Landroid/os/Handler;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->c:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/LimitedQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->d:Ljava/util/Queue;

    .line 34
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;)V

    .line 53
    .local v0, "mListener":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;

    .line 20
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;

    .line 20
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->d:Ljava/util/Queue;

    return-object v0
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
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->a()V

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
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

    .line 59
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 60
    .local v2, "copy":Ljava/util/List;
    move-object v2, v1

    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;

    .line 61
    .local v1, "max":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;

    .line 63
    .local v3, "min":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    const-wide/16 v4, 0x0

    .line 64
    .local v4, "total":J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;

    .line 65
    .local v0, "data":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    iget-wide v7, v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J

    add-long/2addr v4, v7

    .line 66
    .end local v0    # "data":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    goto :goto_0

    .line 67
    .end local v2    # "copy":Ljava/util/List;
    :cond_0
    long-to-float v6, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 69
    .local v6, "mean":F
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "ret":Ljava/util/Map;
    move-object v0, v7

    const-string/jumbo v8, "maxDelay"

    iget-wide v9, v1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v7, "meanDelay"

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v7, "minDelay"

    iget-wide v8, v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    return-object v0

    .line 75
    .end local v0    # "ret":Ljava/util/Map;
    .end local v1    # "max":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    .end local v3    # "min":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    .end local v4    # "total":J
    .end local v6    # "mean":F
    :catchall_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-object v1
.end method

.method public final f()Z
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x1

    .line 89
    .local v0, "stable":Z
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->d:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;

    .line 92
    iget-wide v2, v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 95
    :cond_1
    goto :goto_0

    .line 98
    :cond_2
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_1
    return v0
.end method
