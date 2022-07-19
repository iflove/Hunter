.class public Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
.super Ljava/lang/Object;
.source "FrameworkPointCutManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
    .locals 2

    .line 20
    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    invoke-direct {v1}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->a:Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    return-object v0
.end method


# virtual methods
.method public getAdviceOnPointCut(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V
    .locals 2
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "advice"    # Lcom/alipay/mobile/aspect/Advice;

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 41
    .local v1, "advices":Ljava/util/List;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 43
    move-object v1, v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 46
    .end local p0    # "this":Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
    :cond_1
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 38
    .end local v1    # "advices":Ljava/util/List;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    .end local p1    # "pointCut":Ljava/lang/String;
    .end local p2    # "advice":Lcom/alipay/mobile/aspect/Advice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V
    .locals 3
    .param p1, "pointCuts"    # [Ljava/lang/String;
    .param p2, "advice"    # Lcom/alipay/mobile/aspect/Advice;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 79
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 78
    .end local v2    # "string":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public declared-synchronized unRegisterPointCutAdvice(Lcom/alipay/mobile/aspect/Advice;)V
    .locals 6
    .param p1, "advice"    # Lcom/alipay/mobile/aspect/Advice;

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "pointCut":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 57
    .local v3, "advices":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_2

    .line 62
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/aspect/Advice;

    .line 63
    .local v1, "curAdvice":Lcom/alipay/mobile/aspect/Advice;
    move-object v1, v5

    if-ne v5, p1, :cond_1

    .line 64
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v1    # "curAdvice":Lcom/alipay/mobile/aspect/Advice;
    .end local p0    # "this":Lcom/alipay/mobile/aspect/FrameworkPointCutManager;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 67
    .end local v2    # "pointCut":Ljava/lang/String;
    .end local v3    # "advices":Ljava/util/List;
    .end local v4    # "i":I
    :cond_2
    goto :goto_0

    .line 68
    :cond_3
    monitor-exit p0

    return-void

    .line 54
    .end local p1    # "advice":Lcom/alipay/mobile/aspect/Advice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
