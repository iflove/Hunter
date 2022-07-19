.class public abstract Lcom/alipay/mobile/nebulax/engine/common/a;
.super Ljava/lang/Object;
.source "BaseEngineProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulax/engine/api/NXView;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 49
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/b;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulax/engine/common/bridge/a/b;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->d:Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;

    .line 50
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 96
    monitor-enter p0

    .line 98
    :try_start_0
    const-string v0, "BaseEngineProxy"

    const-string v1, "clear views"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 101
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 102
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;->internalDestroy()V

    .line 105
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    const-string p1, "BaseEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add view  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit p0

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V
    .locals 4

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    const-string v0, "BaseEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pop view  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 80
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 81
    if-ne v3, p1, :cond_0

    .line 82
    move-object v0, v2

    .line 84
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    if-eqz v0, :cond_2

    .line 87
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    monitor-exit p0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V

    .line 160
    return-void
.end method

.method public getApplication()Landroid/content/Context;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getByViewId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 3

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 119
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 120
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getViewId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    monitor-exit p0

    return-object v1

    .line 123
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 125
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEngineBridge()Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->d:Lcom/alipay/mobile/nebulax/engine/api/bridge/EngineBridge;

    return-object v0
.end method

.method public getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getTopView()Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 1

    .line 134
    monitor-enter p0

    .line 135
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    monitor-exit p0

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
