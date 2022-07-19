.class public abstract Lcom/alipay/mobile/framework/app/ActivityApplication;
.super Lcom/alipay/mobile/framework/app/MicroApplication;
.source "ActivityApplication.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/MicroApplication;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    .line 55
    return-void
.end method


# virtual methods
.method public final create(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->b:Landroid/os/Bundle;

    .line 62
    sget-object v0, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  create."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public final declared-synchronized destroy(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 109
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  destroy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 113
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    move-object v5, v3

    .local v5, "reference":Ljava/lang/ref/WeakReference;
    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 115
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, "pointCut":Ljava/lang/String;
    instance-of v6, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v6, :cond_1

    .line 119
    const-string/jumbo v6, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    move-object v3, v6

    goto :goto_1

    .line 120
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ActivityApplication;
    :cond_1
    instance-of v6, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v6, :cond_2

    .line 121
    const-string/jumbo v6, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    move-object v3, v6

    .line 124
    :cond_2
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 125
    .local v4, "args":[Ljava/lang/Object;
    invoke-static {v3, v1, v4}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 126
    invoke-static {v3, v1, v4}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 127
    .local v2, "aroundResult":Landroid/util/Pair;
    move-object v2, v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    .line 128
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 130
    :cond_4
    invoke-static {v3, v1, v4}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 131
    .end local v2    # "aroundResult":Landroid/util/Pair;
    .end local v3    # "pointCut":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/Object;
    goto :goto_0

    .line 134
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v5    # "reference":Ljava/lang/ref/WeakReference;
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V

    .line 137
    :cond_6
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.stop"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->commit(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 108
    .end local p1    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected destroyByActivityEmpty()V
    .locals 1

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroy(Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method public declared-synchronized findActivityByHashcode(I)Landroid/app/Activity;
    .locals 4
    .param p1, "code"    # I

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 244
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 245
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    .line 248
    monitor-exit p0

    return-object v2

    .line 250
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_1
    goto :goto_0

    .line 251
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ActivityApplication;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 242
    .end local p1    # "code":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getActiveActivityCount()I
    .locals 6

    monitor-enter p0

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "count":I
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/ref/WeakReference;

    .line 189
    .local v1, "elements":[Ljava/lang/ref/WeakReference;
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 191
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 192
    .local v4, "ref":Ljava/lang/ref/WeakReference;
    move-object v4, v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 193
    add-int/lit8 v0, v0, 0x1

    .line 191
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ActivityApplication;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :cond_1
    monitor-exit p0

    return v0

    .line 185
    .end local v0    # "count":I
    .end local v1    # "elements":[Ljava/lang/ref/WeakReference;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivityAt(I)Landroid/app/Activity;
    .locals 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 282
    goto :goto_0

    .line 276
    .end local v0    # "activity":Landroid/app/Activity;
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ActivityApplication;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 280
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local p1    # "index":I
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 276
    .end local v0    # "activity":Landroid/app/Activity;
    .end local p1    # "index":I
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStartActivityCount()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getTopActivity()Landroid/app/Activity;
    .locals 1

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 267
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 264
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ActivityApplication;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handle(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 160
    sget-object v0, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".handle(params=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]) return: false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public isCreated()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onReady(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 316
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    const-string v0, "appId"

    if-nez p1, :cond_0

    .line 318
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 319
    move-object p1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 325
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ActivityApplication.onReady(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 326
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 327
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 330
    :cond_2
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method public final declared-synchronized pushActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 173
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ActivityApplication;
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 174
    .local v0, "item":Ljava/lang/ref/WeakReference;
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=== >pushActivity(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 169
    .end local v0    # "item":Ljava/lang/ref/WeakReference;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    .line 206
    if-eqz p1, :cond_3

    .line 207
    const/4 v0, 0x0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 209
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 210
    nop

    .line 211
    move-object v0, v2

    goto :goto_1

    .line 213
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    if-nez v0, :cond_2

    .line 218
    sget-object p1, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "removeActivity: activity already removed"

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 221
    :cond_2
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=== >remove Activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->mIsPrevent:Z

    if-nez p1, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroyByActivityEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 205
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 229
    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public final restart(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 96
    sget-object v0, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  restart."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->onRestart(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public declared-synchronized restoreState(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    monitor-enter p0

    .line 305
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 306
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 307
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    new-instance v3, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ActivityApplication;
    :cond_0
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "num":I
    .end local p1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    return-void
.end method

.method public final start()V
    .locals 5

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.start"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->mDes:Lcom/alipay/mobile/framework/app/ApplicationDescription;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ActivityApplication;->mDes:Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 76
    .local v2, "engineType":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "engineType"

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->putExternalParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v2    # "engineType":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getEntryClassName()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v0, "className":Ljava/lang/String;
    move-object v0, v1

    if-eqz v1, :cond_2

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/alipay/mobile/framework/app/AppLoadException;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :goto_0
    sget-object v1, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  start."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->onStart()V

    .line 93
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 101
    sget-object v0, Lcom/alipay/mobile/framework/app/ActivityApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  stop."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->onStop()V

    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app.stop"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public windowFocus()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->onWindowFocus(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 259
    return-void
.end method
