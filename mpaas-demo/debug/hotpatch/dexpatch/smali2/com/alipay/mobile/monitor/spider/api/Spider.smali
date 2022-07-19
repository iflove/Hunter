.class public Lcom/alipay/mobile/monitor/spider/api/Spider;
.super Ljava/lang/Object;
.source "Spider.java"


# static fields
.field private static b:Lcom/alipay/mobile/monitor/spider/api/Spider;


# instance fields
.field private a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/monitor/spider/api/Spider;
    .locals 2

    .line 67
    sget-object v0, Lcom/alipay/mobile/monitor/spider/api/Spider;->b:Lcom/alipay/mobile/monitor/spider/api/Spider;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/alipay/mobile/monitor/spider/api/Spider;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/monitor/spider/api/Spider;->b:Lcom/alipay/mobile/monitor/spider/api/Spider;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/alipay/mobile/monitor/spider/api/Spider;

    invoke-direct {v1}, Lcom/alipay/mobile/monitor/spider/api/Spider;-><init>()V

    sput-object v1, Lcom/alipay/mobile/monitor/spider/api/Spider;->b:Lcom/alipay/mobile/monitor/spider/api/Spider;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/monitor/spider/api/Spider;->b:Lcom/alipay/mobile/monitor/spider/api/Spider;

    return-object v0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method containsSpiderSilk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->containsSpiderSilk(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 114
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public varargs dumpSpiderweb([Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V
    .locals 1
    .param p1, "spiderSilk"    # [Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->dumpSpiderweb([Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public varargs dumpSpiderweb([Ljava/lang/String;)V
    .locals 1
    .param p1, "bizNames"    # [Ljava/lang/String;

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->dumpSpiderweb([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public end(Ljava/lang/String;)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->end(Ljava/lang/String;J)V

    .line 197
    return-void
.end method

.method public end(Ljava/lang/String;J)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->end(Ljava/lang/String;J)V

    .line 208
    return-void
.end method

.method public endSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->endSection(Ljava/lang/String;Ljava/lang/String;J)V

    .line 242
    return-void
.end method

.method public endSection(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->endSection(Ljava/lang/String;Ljava/lang/String;J)V

    .line 254
    return-void
.end method

.method public varargs getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    .locals 1
    .param p1, "sectionWhitelist"    # Ljava/util/Set;
    .param p2, "sectionBlacklist"    # Ljava/util/Set;
    .param p3, "spiderSilk"    # [Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;",
            ")",
            "Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;"
        }
    .end annotation

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public varargs getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    .locals 1
    .param p1, "sectionWhitelist"    # Ljava/util/Set;
    .param p2, "sectionBlacklist"    # Ljava/util/Set;
    .param p3, "bizNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;"
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    throw v0
.end method

.method getSpiderResolver()Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    return-object v0
.end method

.method getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public setSpiderResolver(Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;)V
    .locals 0
    .param p1, "spiderResolver"    # Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    .line 92
    return-void
.end method

.method setSpiderSilk(Ljava/lang/String;Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "spiderSilk"    # Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->setSpiderSilk(Ljava/lang/String;Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V

    .line 98
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->start(Ljava/lang/String;J)V

    .line 176
    return-void
.end method

.method public start(Ljava/lang/String;J)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->start(Ljava/lang/String;J)V

    .line 187
    return-void
.end method

.method public startSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->startSection(Ljava/lang/String;Ljava/lang/String;J)V

    .line 219
    return-void
.end method

.method public startSection(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/api/Spider;->a:Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;->startSection(Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    return-void
.end method
