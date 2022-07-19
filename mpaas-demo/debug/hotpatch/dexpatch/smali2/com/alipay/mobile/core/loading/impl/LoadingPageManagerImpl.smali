.class public Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
.super Lcom/alipay/mobile/aspect/ExecutionAdvice;
.source "LoadingPageManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/loading/LoadingPageManager;


# instance fields
.field private a:I

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/framework/loading/LoadingView$Factory;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/loading/LoadingPageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/core/loading/impl/LoadingRecord;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2
    .param p1, "microApplicationContext"    # Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/aspect/ExecutionAdvice;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->a:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->d:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->e:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->f:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 64
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$1;-><init>(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public findLoadingRecordByAppId(Ljava/lang/String;)Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "foundRecord":Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    .line 292
    .local v2, "record":Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    if-nez v0, :cond_0

    iget-object v3, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->targetAppId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget v3, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->token:I

    iget v4, v0, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->token:I

    if-le v3, v4, :cond_2

    .line 294
    :cond_1
    move-object v0, v2

    .line 296
    .end local v2    # "record":Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    :cond_2
    goto :goto_0

    .line 298
    :cond_3
    return-object v0
.end method

.method public findLoadingView(Ljava/lang/String;)Lcom/alipay/mobile/framework/loading/LoadingView;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 280
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->findLoadingRecordByAppId(Ljava/lang/String;)Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 282
    .local v2, "loadingRecord":Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->loadingView:Lcom/alipay/mobile/framework/loading/LoadingView;

    return-object v0

    .line 286
    :cond_0
    return-object v1
.end method

.method public getDefaultLoadingViewFactory()Lcom/alipay/mobile/framework/loading/LoadingView$Factory;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->c:Lcom/alipay/mobile/framework/loading/LoadingView$Factory;

    return-object v0
.end method

.method public getLoadingPageRecord(I)Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    .locals 2
    .param p1, "token"    # I

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    return-object v0
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$3;

    invoke-direct {v1, p0, p3}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$3;-><init>(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public declared-synchronized registerLoadingPageHandler(Lcom/alipay/mobile/framework/loading/LoadingPageHandler;)V
    .locals 3
    .param p1, "loadingPageHandler"    # Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    monitor-enter p0

    .line 163
    if-eqz p1, :cond_0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->e:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$2;-><init>(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    sget-object v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerLoadingPageHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->e:Ljava/util/List;

    .line 176
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 162
    .end local p0    # "this":Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
    .end local p1    # "loadingPageHandler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 164
    .restart local p1    # "loadingPageHandler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/framework/exception/IllegalParameterException;

    const-string v1, "loadingPageHandler is null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/exception/IllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local p1    # "loadingPageHandler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public removeLoadingPageRecord(I)V
    .locals 2
    .param p1, "token"    # I

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method public setDefaultLoadingViewFactory(Lcom/alipay/mobile/framework/loading/LoadingView$Factory;)V
    .locals 0
    .param p1, "loadingViewFactory"    # Lcom/alipay/mobile/framework/loading/LoadingView$Factory;

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->c:Lcom/alipay/mobile/framework/loading/LoadingView$Factory;

    .line 154
    return-void
.end method

.method public declared-synchronized startLoading(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 22
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v12, 0x0

    if-eq v0, v2, :cond_0

    .line 195
    sget-object v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "must startLoading on UI thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 196
    monitor-exit p0

    return v12

    .line 199
    .end local p0    # "this":Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
    :cond_0
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "empty appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 201
    monitor-exit p0

    return v12

    .line 204
    :cond_1
    :try_start_2
    invoke-virtual {v1, v10}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->findLoadingRecordByAppId(Ljava/lang/String;)Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    sget-object v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadingPage showing:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    monitor-exit p0

    return v12

    .line 209
    :cond_2
    :try_start_3
    iget-object v0, v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    move-object v2, v0

    move-object v14, v2

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    move-object v15, v0

    .line 211
    .local v15, "handler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v16, v3

    .line 212
    .local v16, "from":J
    const/4 v3, 0x0

    .line 214
    .local v3, "needShowLoadingPage":Z
    :try_start_4
    invoke-interface {v15, v9, v10, v11}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->needShowLoadingPage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v0

    .line 217
    move v8, v3

    goto :goto_1

    .line 215
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 216
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_5
    sget-object v4, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v8, v3

    .line 218
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v3    # "needShowLoadingPage":Z
    .local v8, "needShowLoadingPage":Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide/from16 v18, v3

    .line 219
    .local v18, "to":J
    sget-object v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "needShowLoadingPage:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",handler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v18, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz v8, :cond_5

    .line 223
    iget v0, v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->a:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->a:I

    move v7, v0

    .line 225
    .local v7, "curToken":I
    invoke-interface {v15, v9, v10, v11}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->createLoadingView(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/loading/LoadingView;

    move-result-object v0

    .line 226
    .local v2, "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    move-object v2, v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->c:Lcom/alipay/mobile/framework/loading/LoadingView$Factory;

    if-eqz v0, :cond_3

    .line 227
    invoke-interface {v0, v9, v10, v11}, Lcom/alipay/mobile/framework/loading/LoadingView$Factory;->createLoadingView(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/loading/LoadingView;

    move-result-object v0

    move-object v2, v0

    move-object/from16 v20, v2

    goto :goto_2

    .line 230
    :cond_3
    move-object/from16 v20, v2

    .end local v2    # "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    .local v20, "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    :goto_2
    if-nez v20, :cond_4

    .line 231
    sget-object v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can not createLoadingView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 232
    monitor-exit p0

    return v12

    .line 235
    :cond_4
    :try_start_6
    iget-object v0, v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->f:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    move-object v2, v5

    move v3, v7

    move-object/from16 v4, p1

    move-object v12, v5

    move-object/from16 v5, p2

    move-object v9, v6

    move-object/from16 v6, p3

    move v10, v7

    .end local v7    # "curToken":I
    .local v10, "curToken":I
    move-object v7, v15

    move/from16 v21, v8

    .end local v8    # "needShowLoadingPage":Z
    .local v21, "needShowLoadingPage":Z
    move-object/from16 v8, v20

    invoke-direct/range {v2 .. v8}, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/framework/loading/LoadingPageHandler;Lcom/alipay/mobile/framework/loading/LoadingView;)V

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 239
    :try_start_7
    iget-object v0, v1, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 240
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v14

    .line 241
    .local v3, "intent":Landroid/content/Intent;
    move-object v14, v2

    .end local v3    # "intent":Landroid/content/Intent;
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "token"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const/high16 v2, 0x10000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v3

    invoke-interface {v2, v3, v14}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 245
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 246
    .end local v0    # "context":Landroid/content/Context;
    .end local v14    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v0

    .line 247
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_8
    sget-object v2, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v2, v20

    goto :goto_3

    .line 222
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v10    # "curToken":I
    .end local v20    # "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    .end local v21    # "needShowLoadingPage":Z
    .restart local v8    # "needShowLoadingPage":Z
    :cond_5
    move/from16 v21, v8

    .line 251
    .end local v8    # "needShowLoadingPage":Z
    .end local v15    # "handler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    .end local v16    # "from":J
    .end local v18    # "to":J
    :goto_3
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 253
    :cond_6
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 193
    .end local p1    # "sourceId":Ljava/lang/String;
    .end local p2    # "targetAppId":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLoading(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->findLoadingRecordByAppId(Ljava/lang/String;)Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 261
    .local v2, "loadingRecord":Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->loadingPage:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->loadingPage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    .line 264
    .local v1, "loadingPage":Lcom/alipay/mobile/core/loading/impl/LoadingPage;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->stopLoadingPage()V

    .line 267
    .end local v1    # "loadingPage":Lcom/alipay/mobile/core/loading/impl/LoadingPage;
    .end local p0    # "this":Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
    :cond_0
    goto :goto_0

    .line 269
    :cond_1
    iput-boolean v3, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_0
    monitor-exit p0

    return v3

    .line 275
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 258
    .end local v2    # "loadingRecord":Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    .end local p1    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterLoadingPageHandler(Lcom/alipay/mobile/framework/loading/LoadingPageHandler;)V
    .locals 3
    .param p1, "loadingPageHandler"    # Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    monitor-enter p0

    .line 181
    if-eqz p1, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterLoadingPageHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->f:Ljava/util/Map;

    .line 188
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 180
    .end local p0    # "this":Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
    .end local p1    # "loadingPageHandler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 182
    .restart local p1    # "loadingPageHandler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/framework/exception/IllegalParameterException;

    const-string v1, "loadingPageHandler is null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/exception/IllegalParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local p1    # "loadingPageHandler":Lcom/alipay/mobile/framework/loading/LoadingPageHandler;
    :goto_0
    monitor-exit p0

    throw p1
.end method
