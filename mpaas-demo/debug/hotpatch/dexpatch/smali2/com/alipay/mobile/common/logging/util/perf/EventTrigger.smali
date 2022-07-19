.class public Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;
.super Ljava/lang/Object;
.source "EventTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a:Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->c:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    .line 39
    const-string v0, "Perf.EventTrigger"

    const-string v1, "createInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    .line 41
    if-nez v0, :cond_0

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    .line 44
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    .line 108
    .local v0, "shouldNotify":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->c:Ljava/util/Map;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "val":Ljava/lang/String;
    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->c:Ljava/util/Map;

    const-string/jumbo v4, "yes"

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v3, "background"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v2    # "val":Ljava/lang/String;
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 118
    if-nez v0, :cond_3

    .line 119
    const-string v1, "Perf.EventTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyEvent done before, just return: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_3
    const-string v1, "Perf.EventTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 124
    .local v2, "targetEventListenerList":Ljava/util/List;
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    monitor-enter v3

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;

    .line 129
    .local v3, "eventListener":Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;
    :try_start_2
    invoke-interface {v3, p1, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v4

    .line 131
    .local v4, "tr":Ljava/lang/Throwable;
    const-string v5, "Perf.EventTrigger"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v3    # "eventListener":Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;
    .end local v4    # "tr":Ljava/lang/Throwable;
    goto :goto_0

    .line 135
    :cond_4
    const-string v3, "enterIdle"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 137
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v3

    const-string/jumbo v4, "mpaas.perf.judge.event"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v3, "event"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v3, "3"

    .line 142
    .local v3, "perfLevel":Ljava/lang/String;
    if-eqz p2, :cond_5

    const-string/jumbo v4, "perfLevel"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    const-string/jumbo v4, "perfLevel"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 145
    :cond_5
    const-string/jumbo v4, "perfLevel"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    invoke-static {v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "perfLevel":Ljava/lang/String;
    goto :goto_1

    .line 147
    :catchall_1
    move-exception v1

    .line 148
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v3, "Perf.EventTrigger"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mpaas.perf.judge.event."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v3, "3"

    .line 156
    .restart local v3    # "perfLevel":Ljava/lang/String;
    if-eqz p2, :cond_6

    const-string/jumbo v4, "perfLevel"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 157
    const-string/jumbo v4, "perfLevel"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 159
    :cond_6
    const-string/jumbo v4, "perfLevel"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    invoke-static {v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "perfLevel":Ljava/lang/String;
    return-void

    .line 161
    :catchall_2
    move-exception v1

    .line 162
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v3, "Perf.EventTrigger"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_7
    return-void

    .line 126
    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    .line 117
    .end local v2    # "targetEventListenerList":Ljava/util/List;
    :catchall_4
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v2
.end method

.method public static event(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->event(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    sget-object v0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a:Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a:Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a:Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a:Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;

    return-object v0
.end method


# virtual methods
.method public event(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Perf.EventTrigger"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-nez p2, :cond_1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/Judge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getJudgement()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    .local v1, "judgement":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    :cond_2
    const-string v0, "clientLaunch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->triggerTimeout(Z)V

    return-void

    .line 78
    :cond_3
    const-string v2, "clientLaunchFinish"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    invoke-direct {p0, v2, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/util/perf/IdleChecker;->triggerTimeout(Z)V

    return-void

    .line 82
    :cond_4
    const-string v3, "enterIdle"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 83
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    invoke-direct {p0, v2, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 86
    :cond_5
    const-string v0, "background"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 87
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 88
    :cond_6
    const-string v0, "enterImpZone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    .line 90
    :cond_7
    const-string v0, "leaveImpZone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 93
    :cond_8
    return-void
.end method

.method public isInImpZone()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerEventListener(Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;)V
    .locals 2
    .param p1, "eventListener"    # Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;

    .line 177
    if-nez p1, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterEventListener(Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;)V
    .locals 2
    .param p1, "eventListener"    # Lcom/alipay/mobile/common/logging/util/perf/EventTrigger$EventListener;

    .line 193
    if-nez p1, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/perf/EventTrigger;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
