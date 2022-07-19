.class public Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
.super Ljava/lang/Object;
.source "ActivityCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public static declared-synchronized createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    .locals 2

    const-class v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;-><init>()V

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 62
    :cond_0
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized destroy(Landroid/app/Activity;)V
    .locals 8
    .param p0, "exclude"    # Landroid/app/Activity;

    const-class v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 70
    monitor-exit v0

    return-void

    .line 73
    :cond_0
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    iget-object v1, v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 74
    .local v3, "values":Ljava/util/Collection;
    move-object v3, v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v2

    .line 82
    .local v1, "pointCut":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    .line 83
    invoke-virtual {v6}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 85
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_6

    if-eq v2, p0, :cond_6

    .line 86
    const/4 v1, 0x0

    .line 87
    instance-of v6, v2, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v6, :cond_2

    .line 88
    const-string/jumbo v6, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    move-object v1, v6

    goto :goto_1

    .line 89
    :cond_2
    instance-of v6, v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v6, :cond_3

    .line 90
    const-string/jumbo v6, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    move-object v1, v6

    .line 93
    :cond_3
    :goto_1
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 94
    .local v6, "args":[Ljava/lang/Object;
    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 95
    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 96
    .local v5, "aroundResult":Landroid/util/Pair;
    move-object v5, v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    .line 97
    :cond_4
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 98
    const/4 v2, 0x0

    .line 100
    :cond_5
    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/aspect/FrameworkPointcutCall;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 102
    .end local v5    # "aroundResult":Landroid/util/Pair;
    .end local v6    # "args":[Ljava/lang/Object;
    :cond_6
    goto :goto_0

    .line 103
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_7
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    iget-object v2, v2, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    .line 75
    .end local v1    # "pointCut":Ljava/lang/String;
    :cond_8
    :goto_2
    monitor-exit v0

    return-void

    .line 68
    .end local v3    # "values":Ljava/util/Collection;
    .end local p0    # "exclude":Landroid/app/Activity;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    .locals 2

    const-class v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;-><init>()V

    sput-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 50
    :cond_0
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized recordActivity(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 112
    if-eqz p1, :cond_3

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "key":Ljava/lang/String;
    const-string v1, "ActivityCollections"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordActivity(key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    new-instance v2, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityCollections;Landroid/app/Activity;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local p0    # "this":Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "keyIterator":Ljava/util/Iterator;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "deleteKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 124
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v3    # "k":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 127
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "_key":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    nop

    .end local v4    # "_key":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyIterator":Ljava/util/Iterator;
    .end local v2    # "deleteKeys":Ljava/util/List;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 133
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_3
    monitor-exit p0

    return-void
.end method
