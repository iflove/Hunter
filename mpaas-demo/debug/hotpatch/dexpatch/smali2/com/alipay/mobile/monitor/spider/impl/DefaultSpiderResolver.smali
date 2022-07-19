.class public Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;
.super Ljava/lang/Object;
.source "DefaultSpiderResolver.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/spider/api/SpiderResolver;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public containsSpiderSilk(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public varargs dumpSpiderweb([Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V
    .locals 5
    .param p1, "spiderSilks"    # [Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    .line 145
    if-eqz p1, :cond_2

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 149
    .local v2, "spiderSilk":Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    iget-object v3, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getBizName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    nop

    .end local v2    # "spiderSilk":Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    return-void

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 146
    :cond_2
    :goto_1
    return-void
.end method

.method public varargs dumpSpiderweb([Ljava/lang/String;)V
    .locals 4
    .param p1, "bizNames"    # [Ljava/lang/String;

    .line 160
    if-eqz p1, :cond_2

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 164
    .local v2, "bizName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    nop

    .end local v2    # "bizName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return-void

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 161
    :cond_2
    :goto_1
    return-void
.end method

.method public end(Ljava/lang/String;J)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 184
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->end(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public endSection(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->endSection(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public varargs getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    .locals 20
    .param p1, "sectionWhitelist"    # Ljava/util/Set;
    .param p2, "sectionBlacklist"    # Ljava/util/Set;
    .param p3, "spiderSilks"    # [Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "SpiderResolver"

    .line 70
    if-eqz v3, :cond_b

    :try_start_0
    array-length v0, v3

    if-nez v0, :cond_0

    move-object/from16 v5, p0

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 73
    :cond_0
    new-instance v0, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;-><init>()V

    .line 74
    .local v0, "spiderwebResult":Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    array-length v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v6, :cond_a

    aget-object v11, v3, v8

    .line 75
    .local v11, "spiderSilk":Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    iget-object v12, v0, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;->bizTypes:Ljava/util/List;

    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getBizName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v12, v0, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;->timesMap:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getTimesMap()Ljava/util/HashMap;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    iget-object v12, v0, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;->properties:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getProperties()Ljava/util/HashMap;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getSectionKeys()Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 81
    iget-object v12, v0, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;->sectionKeys:Ljava/util/List;

    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getSectionKeys()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_1
    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getSectionKeys()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 85
    .local v9, "entrySectionKey":Ljava/util/Map$Entry;
    move-object v9, v13

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/monitor/spider/api/SectionKey;

    .line 86
    .local v10, "value":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    move-object v10, v13

    if-nez v13, :cond_2

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "entrySectionKey.getValue() is null .entrySectionKey key is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v4, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_2
    iget-object v13, v10, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->sectionName:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 90
    const/4 v13, 0x1

    .line 91
    .local v13, "isValid":Z
    if-eqz v1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 92
    iget-object v14, v10, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->sectionName:Ljava/lang/String;

    invoke-interface {v1, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_2

    .line 93
    :cond_3
    if-eqz v2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 94
    iget-object v14, v10, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->sectionName:Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    :goto_2
    move v13, v14

    .line 96
    :cond_5
    if-nez v13, :cond_6

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->sectionName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is in whitelist or blacklist, and continue"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_1

    .line 101
    .end local v13    # "isValid":Z
    :cond_6
    iget-object v7, v0, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;->keyMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getStartKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getEndKey()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getTimesMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v10}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getStartKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 103
    .local v7, "startTime":Ljava/lang/Long;
    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getTimesMap()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v10}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getEndKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 104
    .local v13, "endTime":Ljava/lang/Long;
    if-eqz v7, :cond_8

    if-nez v13, :cond_7

    goto :goto_3

    .line 108
    :cond_7
    iget-object v14, v0, Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;->timeCostMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->getResultKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    nop

    .end local v7    # "startTime":Ljava/lang/Long;
    .end local v9    # "entrySectionKey":Ljava/util/Map$Entry;
    .end local v10    # "value":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    .end local v13    # "endTime":Ljava/lang/Long;
    goto/16 :goto_1

    .line 106
    .restart local v7    # "startTime":Ljava/lang/Long;
    .restart local v9    # "entrySectionKey":Ljava/util/Map$Entry;
    .restart local v10    # "value":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    .restart local v13    # "endTime":Ljava/lang/Long;
    :cond_8
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "\u9636\u6bb5\u5f00\u59cb\u4e0e\u7ed3\u675f\u4e0d\u5339\u914d\uff1astartTime == 0 || endTime == 0 .sectionKey is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/alipay/mobile/monitor/spider/api/SectionKey;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v4, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_1

    .line 114
    .end local v7    # "startTime":Ljava/lang/Long;
    .end local v9    # "entrySectionKey":Ljava/util/Map$Entry;
    .end local v10    # "value":Lcom/alipay/mobile/monitor/spider/api/SectionKey;
    .end local v13    # "endTime":Ljava/lang/Long;
    :cond_9
    move-object/from16 v5, p0

    :try_start_1
    iget-object v7, v5, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->getBizName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    nop

    .end local v11    # "spiderSilk":Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 117
    .end local v0    # "spiderwebResult":Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 116
    .restart local v0    # "spiderwebResult":Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    :cond_a
    move-object/from16 v5, p0

    return-object v0

    .line 117
    .end local v0    # "spiderwebResult":Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    .line 118
    .local v0, "e":Ljava/lang/Throwable;
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    return-object v4

    .line 70
    :cond_b
    move-object/from16 v5, p0

    const/4 v4, 0x0

    .line 71
    :goto_5
    return-object v4
.end method

.method public varargs getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;
    .locals 4
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

    .line 126
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    array-length v1, p3

    if-nez v1, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    array-length v1, p3

    new-array v1, v1, [Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    .line 130
    .local v1, "spiderSilks":[Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 131
    aget-object v3, p3, v2

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    move-result-object v3

    aput-object v3, v1, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->getDumpSpiderweb(Ljava/util/Set;Ljava/util/Set;[Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)Lcom/alipay/mobile/monitor/spider/api/SpiderwebResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 135
    .end local v1    # "spiderSilks":[Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    :catchall_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SpiderResolver"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0

    .line 127
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    .locals 4
    .param p1, "bizType"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    new-instance v2, Lcom/alipay/mobile/monitor/spider/impl/a;

    invoke-direct {v2, p1}, Lcom/alipay/mobile/monitor/spider/impl/a;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "spiderSilk":Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    iget-object v3, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v2    # "spiderSilk":Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "bizType":Ljava/lang/String;
    :try_start_2
    throw v2

    .line 60
    .restart local p1    # "bizType":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 61
    :catchall_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SpiderResolver"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public setSpiderSilk(Ljava/lang/String;Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "spiderSilk"    # Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public start(Ljava/lang/String;J)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 174
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->start(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public startSection(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/monitor/spider/impl/DefaultSpiderResolver;->getSpiderSilk(Ljava/lang/String;)Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/mobile/monitor/spider/api/SpiderSilk;->startSection(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SpiderResolver"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
