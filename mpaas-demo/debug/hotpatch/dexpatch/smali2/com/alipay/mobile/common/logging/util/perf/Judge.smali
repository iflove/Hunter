.class public Lcom/alipay/mobile/common/logging/util/perf/Judge;
.super Ljava/lang/Object;
.source "Judge.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/perf/Judge;


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a:Lcom/alipay/mobile/common/logging/util/perf/Judge;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 19

    .line 49
    move-object/from16 v1, p0

    const-string v0, "-1"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->b:Landroid/content/Context;

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    .line 50
    const-string v3, "Perf.Judge"

    const-string v4, "createInstance"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->b:Landroid/content/Context;

    .line 52
    if-nez v4, :cond_0

    .line 53
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->b:Landroid/content/Context;

    goto :goto_0

    .line 52
    :cond_0
    move-object/from16 v4, p1

    .line 56
    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 58
    iget-object v5, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v5

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isColdClientLaunch: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string/jumbo v6, "toolsDowngrade"

    const-string/jumbo v7, "perfLevel"

    if-eqz v5, :cond_f

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->needDowngradeStart(Landroid/content/Context;)Z

    move-result v4

    const-string/jumbo v5, "yes"

    const-string v8, "1"

    if-eqz v4, :cond_1

    .line 63
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v6

    goto/16 :goto_7

    .line 66
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getJudgeSP()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 67
    nop

    .line 68
    const-string v4, "disable"

    if-eqz v2, :cond_2

    .line 69
    const-string/jumbo v9, "perfJudgeControl"

    invoke-interface {v2, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 68
    :cond_2
    move-object v9, v4

    .line 71
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "perfJudgeControl: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v10, "enable"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a()Ljava/util/List;

    move-result-object v9

    .line 74
    const/4 v11, 0x0

    .line 75
    nop

    .line 76
    if-eqz v9, :cond_4

    .line 77
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-wide/16 v14, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 78
    if-eqz v16, :cond_3

    .line 79
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v14, v14, v16

    .line 80
    add-int/lit8 v11, v11, 0x1

    .line 82
    :cond_3
    goto :goto_2

    .line 76
    :cond_4
    const-wide/16 v14, 0x0

    .line 84
    :cond_5
    nop

    .line 85
    const-wide/16 v16, 0xfa0

    .line 86
    if-eqz v2, :cond_7

    .line 88
    :try_start_0
    const-string/jumbo v9, "perfJudgeNoWriteStartupTime"

    invoke-interface {v2, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 90
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_6
    move-wide/from16 v12, v16

    goto :goto_3

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_7
    move-wide/from16 v12, v16

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "noWriteStartupTime: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-lez v11, :cond_c

    .line 98
    move-object/from16 p1, v5

    move-object v9, v6

    int-to-long v5, v11

    div-long/2addr v14, v5

    .line 100
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "full fused before, ori avgLaunchTime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-wide/16 v5, 0x1

    add-long v14, v12, v5

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "full fused before, make avgLaunchTime = avgLaunchTime + 1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_8
    cmp-long v5, v14, v12

    if-lez v5, :cond_9

    .line 107
    iget-object v5, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    if-nez v0, :cond_b

    if-eqz v2, :cond_b

    .line 109
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "perfJudgeFullFused"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    .line 111
    :cond_9
    const-wide/16 v5, 0x7d0

    const-string v0, "2"

    cmp-long v8, v14, v5

    if-lez v8, :cond_a

    .line 112
    iget-object v5, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 113
    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v8, v14, v5

    if-lez v8, :cond_b

    .line 115
    iget-object v5, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_b
    :goto_4
    move-wide v12, v14

    goto :goto_5

    .line 97
    :cond_c
    move-object/from16 p1, v5

    move-object v9, v6

    const-wide/16 v5, 0x0

    move-wide v12, v5

    .line 119
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "avgLaunchTime: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 72
    :cond_d
    move-object/from16 p1, v5

    move-object v9, v6

    .line 122
    :goto_6
    nop

    .line 123
    if-eqz v2, :cond_e

    .line 124
    const-string/jumbo v0, "perfToolsControl"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "perfToolsControl: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 128
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    move-object/from16 v2, p1

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 60
    :cond_f
    move-object v9, v6

    .line 133
    :cond_10
    :goto_7
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 135
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string v2, "3"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_11
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 139
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v2, "no"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_12
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "perfLevel judgement: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "toolsDowngrade judgement: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getJudgeSP()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 233
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 234
    return-object v1

    .line 236
    :cond_0
    const-string/jumbo v0, "perfJudgeLaunchTimeList"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 237
    .local v3, "launchTimeArray":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    return-object v1

    .line 240
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "hisLaunchTimeList":Ljava/util/List;
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 242
    array-length v5, v4

    const/4 v6, 0x0

    move-object v7, v1

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    .line 243
    .local v7, "launchTime":Ljava/lang/String;
    move-object v7, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 246
    const-wide/16 v8, -0x1

    .line 248
    .local v8, "launchTimeLong":J
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v8, v10

    .line 251
    goto :goto_1

    .line 249
    :catchall_0
    move-exception v10

    .line 250
    .local v10, "tr":Ljava/lang/Throwable;
    const-string v11, "Perf.Judge"

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v10    # "tr":Ljava/lang/Throwable;
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    .line 255
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v7    # "launchTime":Ljava/lang/String;
    .end local v8    # "launchTimeLong":J
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 257
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    .line 258
    return-object v1

    .line 260
    :cond_4
    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .param p1, "launchTimeList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 264
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getJudgeSP()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 268
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 269
    return-void

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 273
    .local v1, "launchTime":Ljava/lang/Long;
    move-object v1, v4

    if-eqz v4, :cond_3

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 275
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .end local v1    # "launchTime":Ljava/lang/Long;
    :cond_3
    goto :goto_0

    .line 280
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 281
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "perfJudgeLaunchTimeList"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveHisLaunchTimeList: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Perf.Judge"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_5
    return-void

    .line 265
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_6
    :goto_1
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;)Z
    .locals 6
    .param p0, "sp"    # Landroid/content/SharedPreferences;

    .line 190
    const-string/jumbo v0, "perfJudgeProductVersion"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "currentVersion":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "storeVersion":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v5, "perfJudgeFullFused"

    if-nez v4, :cond_0

    .line 193
    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {p0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 197
    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "storeVersion":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 198
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v2, "Perf.Judge"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/perf/Judge;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a:Lcom/alipay/mobile/common/logging/util/perf/Judge;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/alipay/mobile/common/logging/util/perf/Judge;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a:Lcom/alipay/mobile/common/logging/util/perf/Judge;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a:Lcom/alipay/mobile/common/logging/util/perf/Judge;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a:Lcom/alipay/mobile/common/logging/util/perf/Judge;

    return-object v0
.end method

.method public static isUIEntryLaunch(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 287
    const/4 v0, 0x0

    .line 290
    .local v0, "isUIEntryLaunch":Z
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v1

    .line 292
    .local v1, "reasonMap":Ljava/util/Map;
    const-string v2, ""

    .line 293
    .local v2, "startupComponent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 294
    const-string v3, "ComponentName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 298
    :cond_0
    const-string v3, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.alipay.mobile.quinox.LauncherActivity.alias"

    .line 299
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.alipay.mobile.quinox.SchemeLauncherActivity"

    .line 300
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 301
    :cond_1
    const/4 v0, 0x1

    .line 305
    .end local v1    # "reasonMap":Ljava/util/Map;
    .end local v2    # "startupComponent":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    .line 304
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "Perf.Judge"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method


# virtual methods
.method public getJudgeSP()Landroid/content/SharedPreferences;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getJudgement()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 211
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/perf/Judge;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized judgeForNoneUIProcess()V
    .locals 7

    monitor-enter p0

    .line 149
    :try_start_0
    const-string v0, "Perf.Judge"

    const-string v1, "judgeForNoneUIProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->getJudgeSP()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "disable"

    .line 155
    .local v1, "perfToolsControl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v2, "perfToolsControl"

    const-string v3, "disable"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 158
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/perf/Judge;
    :cond_0
    const-string v2, "Perf.Judge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "perfToolsControl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v2, "enable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 161
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "process_start_tag"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 162
    .local v3, "mainLaunchingFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const-string v2, "Perf.Judge"

    const-string v4, "judgeForNoneUIProcess got mainLaunchingFile"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v4, "toolsDowngrade"

    const-string/jumbo v5, "yes"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_1
    const-string v2, "Perf.Judge"

    const-string v4, "judgeForNoneUIProcess main not launching"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v3    # "mainLaunchingFile":Ljava/io/File;
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v2

    .line 169
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "Perf.Judge"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v3, "perfLevel"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v3, "perfLevel"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v3, "toolsDowngrade"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v3, "toolsDowngrade"

    const-string/jumbo v4, "no"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v3, "perfLevel"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "perfLevel":Ljava/lang/String;
    const-string v3, "Perf.Judge"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "perfLevel judgement: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/perf/Judge;->c:Ljava/util/Map;

    const-string/jumbo v4, "toolsDowngrade"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 185
    .local v3, "toolsDowngrade":Ljava/lang/String;
    const-string v4, "Perf.Judge"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "toolsDowngrade judgement: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "perfToolsControl":Ljava/lang/String;
    .end local v2    # "perfLevel":Ljava/lang/String;
    .end local v3    # "toolsDowngrade":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recordColdClientLaunchTime(J)V
    .locals 3
    .param p1, "launchTime"    # J

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    const-wide/16 v0, 0x7530

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "recordColdClientLaunchTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Perf.Judge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    .local v1, "hisLaunchTimes":Ljava/util/List;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 224
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 225
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/logging/util/perf/Judge;->a(Ljava/util/List;)V

    .line 229
    return-void

    .line 217
    .end local v1    # "hisLaunchTimes":Ljava/util/List;
    :cond_3
    :goto_1
    return-void
.end method
