.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;
.super Ljava/lang/Object;
.source "CpuCollector.java"


# instance fields
.field protected a:J

.field private final b:I

.field private final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "sampleInterval"    # J

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->d:I

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->e:J

    .line 22
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->f:J

    .line 23
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->g:J

    .line 24
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->h:J

    .line 25
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->i:J

    .line 26
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->j:J

    .line 31
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->a:J

    .line 32
    long-to-float v0, p1

    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->b:I

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 30
    .param p1, "cpuRate"    # Ljava/lang/String;
    .param p2, "pidCpuRate"    # Ljava/lang/String;

    .line 122
    move-object/from16 v1, p0

    const-string v0, " "

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 123
    .local v4, "cpuInfoArray":[Ljava/lang/String;
    move-object v4, v0

    array-length v0, v0

    const/16 v5, 0x9

    if-ge v0, v5, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 128
    .local v5, "user":J
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 129
    .local v7, "nice":J
    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 130
    .local v9, "system":J
    const/4 v0, 0x5

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 131
    .local v11, "idle":J
    const/4 v0, 0x6

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 132
    .local v13, "ioWait":J
    add-long v15, v5, v7

    add-long/2addr v15, v9

    add-long/2addr v15, v11

    add-long/2addr v15, v13

    const/4 v0, 0x7

    aget-object v0, v4, v0

    .line 133
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v15, v15, v17

    const/16 v0, 0x8

    aget-object v0, v4, v0

    .line 134
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-object/from16 v19, v4

    .end local v4    # "cpuInfoArray":[Ljava/lang/String;
    .local v19, "cpuInfoArray":[Ljava/lang/String;
    add-long v3, v15, v17

    .line 136
    .local v3, "total":J
    const-string v15, " "

    move-object/from16 v2, p2

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x0

    .line 137
    .local v0, "pidCpuInfoList":[Ljava/lang/String;
    move-object/from16 v16, v15

    .end local v0    # "pidCpuInfoList":[Ljava/lang/String;
    .local v16, "pidCpuInfoList":[Ljava/lang/String;
    array-length v0, v15

    const/16 v15, 0x11

    if-ge v0, v15, :cond_1

    .line 138
    return-void

    .line 141
    :cond_1
    const/16 v0, 0xd

    aget-object v0, v16, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v0, 0xe

    aget-object v0, v16, v0

    .line 142
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    add-long v17, v17, v20

    const/16 v0, 0xf

    aget-object v0, v16, v0

    .line 143
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    add-long v17, v17, v20

    const/16 v0, 0x10

    aget-object v0, v16, v0

    .line 144
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v22, v7

    .end local v7    # "nice":J
    .local v22, "nice":J
    add-long v7, v17, v20

    .line 146
    .local v7, "appCpuTime":J
    move-wide/from16 v17, v13

    .end local v13    # "ioWait":J
    .local v17, "ioWait":J
    iget-wide v13, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->i:J

    const-wide/16 v20, 0x0

    cmp-long v0, v13, v20

    if-eqz v0, :cond_3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v0

    .line 148
    .local v13, "stringBuilder":Ljava/lang/StringBuilder;
    iget-wide v14, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->g:J

    sub-long v14, v11, v14

    .line 149
    .local v14, "idleTime":J
    move-wide/from16 v20, v11

    .end local v11    # "idle":J
    .local v20, "idle":J
    iget-wide v11, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->i:J

    sub-long v11, v3, v11

    .line 151
    .local v11, "totalTime":J
    const-string v0, "cpu:"

    .line 152
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v24, v11, v14

    const-wide/16 v26, 0x64

    mul-long v24, v24, v26

    move-wide/from16 v28, v14

    .end local v14    # "idleTime":J
    .local v28, "idleTime":J
    div-long v14, v24, v11

    .line 153
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% app:"

    .line 154
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-wide v14, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->j:J

    sub-long v14, v7, v14

    mul-long v14, v14, v26

    div-long/2addr v14, v11

    .line 156
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% [user:"

    .line 157
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-wide v14, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->e:J

    sub-long v14, v5, v14

    mul-long v14, v14, v26

    div-long/2addr v14, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% system:"

    .line 160
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-wide v14, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->f:J

    sub-long v14, v9, v14

    mul-long v14, v14, v26

    div-long/2addr v14, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% ioWait:"

    .line 162
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-wide v14, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->h:J

    sub-long v14, v17, v14

    mul-long v14, v14, v26

    div-long/2addr v14, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "% ]"

    .line 164
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v14, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    monitor-enter v14

    .line 167
    :try_start_0
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 169
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 171
    .local v0, "key":Ljava/lang/Long;
    iget-object v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v0    # "key":Ljava/lang/Long;
    :cond_2
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    .end local v13    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "idle":J
    .end local v28    # "idleTime":J
    .local v11, "idle":J
    :cond_3
    move-wide/from16 v20, v11

    .line 177
    .end local v11    # "idle":J
    .restart local v20    # "idle":J
    :goto_0
    iput-wide v5, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->e:J

    .line 178
    iput-wide v9, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->f:J

    .line 179
    move-wide/from16 v11, v20

    .end local v20    # "idle":J
    .restart local v11    # "idle":J
    iput-wide v11, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->g:J

    .line 180
    move-wide/from16 v13, v17

    .end local v17    # "ioWait":J
    .local v13, "ioWait":J
    iput-wide v13, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->h:J

    .line 181
    iput-wide v3, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->i:J

    .line 183
    iput-wide v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->j:J

    .line 184
    return-void
.end method

.method private d()V
    .locals 2

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->e:J

    .line 114
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->f:J

    .line 115
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->g:J

    .line 116
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->h:J

    .line 117
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->i:J

    .line 118
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->j:J

    .line 119
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->d()V

    .line 37
    return-void
.end method

.method public final a(JJ)Z
    .locals 16
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 54
    move-object/from16 v1, p0

    sub-long v2, p3, p1

    iget-wide v4, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->a:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 55
    sub-long v2, p1, v4

    .line 56
    .local v2, "s":J
    add-long v4, p1, v4

    .line 57
    .local v4, "e":J
    const-wide/16 v6, 0x0

    .line 58
    .local v6, "last":J
    iget-object v8, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    monitor-enter v8

    .line 59
    :try_start_0
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 61
    .local v9, "time":J
    cmp-long v11, v2, v9

    if-gez v11, :cond_1

    cmp-long v11, v9, v4

    if-gez v11, :cond_1

    .line 62
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-eqz v13, :cond_0

    sub-long v11, v9, v6

    iget v13, v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->b:I

    int-to-long v13, v13

    cmp-long v15, v11, v13

    if-lez v15, :cond_0

    .line 63
    const/4 v0, 0x1

    monitor-exit v8

    return v0

    .line 65
    :cond_0
    move-wide v6, v9

    .line 67
    .end local v9    # "time":J
    :cond_1
    goto :goto_0

    .line 68
    :cond_2
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 70
    .end local v2    # "s":J
    .end local v4    # "e":J
    .end local v6    # "last":J
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 8

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 44
    .local v4, "time":J
    sget-object v6, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "time":J
    goto :goto_0

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 49
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected final c()V
    .locals 11

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "cpuReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 78
    .local v1, "pidReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/stat"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 80
    move-object v0, v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    move-object v5, v3

    .line 81
    .local v5, "cpuRate":Ljava/lang/String;
    move-object v5, v2

    const-string v6, ""

    if-nez v2, :cond_0

    .line 82
    move-object v5, v6

    .line 85
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->d:I

    if-nez v2, :cond_1

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->d:I

    .line 88
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/proc/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->d:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/stat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 90
    move-object v1, v2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v3, "pidCpuRate":Ljava/lang/String;
    move-object v3, v2

    if-nez v2, :cond_2

    .line 92
    move-object v3, v6

    .line 95
    :cond_2
    invoke-direct {p0, v5, v3}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/CpuCollector;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .end local v3    # "pidCpuRate":Ljava/lang/String;
    .end local v5    # "cpuRate":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 104
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v2

    .line 109
    return-void

    .line 96
    :catchall_1
    move-exception v2

    .line 100
    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 103
    :cond_3
    if-eqz v1, :cond_4

    .line 104
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :cond_4
    return-void
.end method
