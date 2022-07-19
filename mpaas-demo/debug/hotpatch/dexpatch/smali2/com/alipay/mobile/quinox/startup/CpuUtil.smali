.class public Lcom/alipay/mobile/quinox/startup/CpuUtil;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/quinox/startup/CpuUtil;


# instance fields
.field endCpuInfo:Ljava/lang/String;

.field endPidInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field startCpuInfo:Ljava/lang/String;

.field startPidInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startCpuInfo:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startPidInfoMap:Ljava/util/Map;

    .line 42
    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endCpuInfo:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endPidInfoMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/quinox/startup/CpuUtil;
    .locals 2

    const-class v0, Lcom/alipay/mobile/quinox/startup/CpuUtil;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->a:Lcom/alipay/mobile/quinox/startup/CpuUtil;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/startup/CpuUtil;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->a:Lcom/alipay/mobile/quinox/startup/CpuUtil;

    .line 32
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->a:Lcom/alipay/mobile/quinox/startup/CpuUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v0, Lcom/alipay/mobile/quinox/startup/CpuUtil;

    monitor-enter v0

    .line 36
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->a:Lcom/alipay/mobile/quinox/startup/CpuUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    return-void

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public end(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->IS_PERF_VERSION:Z

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    const/4 v2, 0x0

    .line 119
    .local v2, "cpuReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 121
    .local v3, "pidReader":Ljava/io/BufferedReader;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 124
    .local v4, "startTime":J
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/proc/stat"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x3e8

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 126
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v6, 0x0

    move-object v8, v6

    .line 127
    .local v8, "cpuRate":Ljava/lang/String;
    move-object v8, v0

    const-string v9, ""

    if-nez v0, :cond_1

    .line 128
    move-object v8, v9

    .line 130
    :cond_1
    :try_start_1
    iput-object v8, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endCpuInfo:Ljava/lang/String;

    .line 131
    iget-object v0, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endPidInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v10, v0

    .line 134
    .local v10, "myUid":I
    const-string v0, "activity"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object/from16 v11, p1

    :try_start_2
    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 135
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v0, v6

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 136
    .local v6, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v6, v13

    if-eqz v13, :cond_4

    iget v13, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v13, v10, :cond_4

    .line 138
    :try_start_3
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    new-instance v15, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v16, v8

    .end local v8    # "cpuRate":Ljava/lang/String;
    .local v16, "cpuRate":Ljava/lang/String;
    :try_start_4
    const-string v8, "/proc/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/stat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x3e8

    invoke-direct {v13, v14, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 140
    move-object v3, v13

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v0, "pidCpuRate":Ljava/lang/String;
    move-object v0, v8

    if-nez v8, :cond_2

    .line 142
    move-object v0, v9

    move-object v8, v0

    goto :goto_1

    .line 141
    :cond_2
    move-object v8, v0

    .line 144
    .end local v0    # "pidCpuRate":Ljava/lang/String;
    .local v8, "pidCpuRate":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endPidInfoMap:Ljava/util/Map;

    new-instance v13, Landroid/util/Pair;

    iget v14, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    .end local v8    # "pidCpuRate":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    const/4 v3, 0x0

    .line 153
    move-object v0, v8

    move-object/from16 v8, v16

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    .line 154
    move-object v0, v8

    move-object/from16 v8, v16

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v0

    move-object v7, v0

    goto :goto_2

    .end local v16    # "cpuRate":Ljava/lang/String;
    .local v8, "cpuRate":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    move-object v7, v0

    .line 147
    .end local v8    # "cpuRate":Ljava/lang/String;
    .restart local v16    # "cpuRate":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_3

    .line 148
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 151
    :catchall_3
    move-exception v0

    goto :goto_4

    .line 150
    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 153
    .end local v3    # "pidReader":Ljava/io/BufferedReader;
    .local v0, "pidReader":Ljava/io/BufferedReader;
    move-object v3, v0

    .end local v0    # "pidReader":Ljava/io/BufferedReader;
    .restart local v3    # "pidReader":Ljava/io/BufferedReader;
    :goto_4
    nop

    .end local v2    # "cpuReader":Ljava/io/BufferedReader;
    .end local v3    # "pidReader":Ljava/io/BufferedReader;
    .end local v4    # "startTime":J
    .end local p1    # "context":Landroid/content/Context;
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 157
    .end local v6    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10    # "myUid":I
    .end local v16    # "cpuRate":Ljava/lang/String;
    .restart local v2    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v3    # "pidReader":Ljava/io/BufferedReader;
    .restart local v4    # "startTime":J
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 136
    .restart local v6    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v8    # "cpuRate":Ljava/lang/String;
    .restart local v10    # "myUid":I
    :cond_4
    move-object/from16 v16, v8

    .line 156
    .end local v6    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "cpuRate":Ljava/lang/String;
    .restart local v16    # "cpuRate":Ljava/lang/String;
    move-object/from16 v8, v16

    goto :goto_0

    .line 135
    .end local v16    # "cpuRate":Ljava/lang/String;
    .restart local v8    # "cpuRate":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v8

    .line 162
    .end local v8    # "cpuRate":Ljava/lang/String;
    .end local v10    # "myUid":I
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 164
    if-eqz v3, :cond_6

    .line 165
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 169
    :cond_6
    :goto_5
    goto :goto_7

    .line 167
    :catchall_5
    move-exception v0

    .line 170
    goto :goto_7

    .line 157
    :catchall_6
    move-exception v0

    move-object/from16 v11, p1

    .line 161
    :goto_6
    if-eqz v2, :cond_7

    .line 162
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 164
    :cond_7
    if-eqz v3, :cond_6

    .line 165
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    .line 171
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 172
    .local v6, "endTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "end costs :"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v6, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "CpuInfo"

    invoke-static {v8, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public getResult(Landroid/content/Context;)Ljava/util/Map;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    move-object/from16 v1, p0

    const-string v0, " "

    const-string v2, "%"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startCpuInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startPidInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endCpuInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endPidInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_7

    .line 181
    :cond_0
    iget-object v4, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startCpuInfo:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 182
    iget-object v5, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endCpuInfo:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 183
    array-length v6, v4

    const/16 v7, 0x9

    if-lt v6, v7, :cond_b

    array-length v6, v5

    if-ge v6, v7, :cond_1

    goto/16 :goto_6

    .line 186
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 187
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 188
    iget-object v8, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startPidInfoMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0x11

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 190
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 191
    array-length v12, v11

    if-ge v12, v10, :cond_2

    .line 192
    return-object v3

    .line 194
    :cond_2
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    iget-object v8, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->endPidInfoMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 198
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 199
    array-length v12, v11

    if-ge v12, v10, :cond_4

    .line 200
    return-object v3

    .line 202
    :cond_4
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    goto :goto_1

    .line 205
    :cond_5
    const/4 v0, 0x2

    aget-object v8, v4, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 206
    const/4 v10, 0x3

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 207
    const/4 v13, 0x4

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 208
    const/16 v16, 0x5

    aget-object v17, v4, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 209
    const/16 v19, 0x6

    aget-object v20, v4, v19

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 210
    add-long/2addr v11, v8

    add-long/2addr v11, v14

    add-long v11, v11, v17

    add-long v11, v11, v20

    const/16 v22, 0x7

    aget-object v23, v4, v22

    .line 211
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v11, v11, v23

    const/16 v23, 0x8

    aget-object v4, v4, v23

    .line 212
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    add-long v11, v11, v24

    .line 214
    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 215
    aget-object v0, v5, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 216
    aget-object v0, v5, v13

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 217
    aget-object v0, v5, v16

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 218
    aget-object v0, v5, v19

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 219
    add-long v26, v24, v26

    add-long v26, v26, v28

    add-long v26, v26, v30

    add-long v26, v26, v32

    aget-object v0, v5, v22

    .line 220
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    add-long v26, v26, v34

    aget-object v0, v5, v23

    .line 221
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long v26, v26, v4

    .line 223
    sub-long v30, v30, v17

    .line 224
    sub-long v26, v26, v11

    .line 227
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-string v0, "CpuInfo cpu:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v10, v26, v30

    const-wide/16 v12, 0x64

    mul-long v10, v10, v12

    div-long v10, v10, v26

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "CpuInfo user:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v24, v24, v8

    mul-long v24, v24, v12

    div-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "CpuInfo system:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v28, v28, v14

    mul-long v28, v28, v12

    div-long v28, v28, v26

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "CpuInfo ioWait:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v32, v32, v20

    mul-long v32, v32, v12

    div-long v32, v32, v26

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 236
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 237
    nop

    .line 238
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v3

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 240
    if-ne v14, v7, :cond_6

    .line 241
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 243
    :cond_6
    goto :goto_3

    .line 244
    :cond_7
    const-wide/16 v14, 0x0

    .line 245
    const/16 v7, 0x10

    const/16 v9, 0xf

    const/16 v11, 0xe

    const/16 v16, 0xd

    if-eqz v10, :cond_8

    .line 246
    aget-object v14, v10, v16

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    aget-object v17, v10, v11

    .line 247
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v14, v14, v17

    aget-object v17, v10, v9

    .line 248
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v14, v14, v17

    aget-object v10, v10, v7

    .line 249
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    add-long v14, v14, v17

    .line 251
    :cond_8
    aget-object v10, v8, v16

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    aget-object v10, v8, v11

    .line 252
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v16, v16, v10

    aget-object v9, v8, v9

    .line 253
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long v16, v16, v9

    aget-object v7, v8, v7

    .line 254
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long v16, v16, v7

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CpuInfo for process "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v16, v16, v14

    mul-long v16, v16, v12

    div-long v16, v16, v26

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    goto/16 :goto_2

    .line 260
    :cond_9
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 261
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_a

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/sys/devices/system/cpu/cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v5

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cpuinfo:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "freq:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 269
    :cond_a
    goto :goto_5

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    :try_start_2
    const-string v2, "CpuInfo"

    const-string v5, "get cpu info error"

    invoke-static {v2, v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    :goto_5
    return-object v4

    .line 184
    :cond_b
    :goto_6
    return-object v3

    .line 178
    :cond_c
    :goto_7
    return-object v3

    .line 273
    :catchall_1
    move-exception v0

    .line 277
    return-object v3
.end method

.method public start(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    const-string v2, "CpuInfo"

    .line 47
    sget-boolean v0, Lcom/alipay/mobile/quinox/utils/SystemUtil;->IS_PERF_VERSION:Z

    if-nez v0, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 52
    .local v3, "cpuReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 54
    .local v4, "pidReader":Ljava/io/BufferedReader;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 57
    .local v5, "startTime":J
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startCpuInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "started before, do nothing and return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 61
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/proc/stat"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x3e8

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 63
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v7, 0x0

    move-object v9, v7

    .line 64
    .local v9, "cpuRate":Ljava/lang/String;
    move-object v9, v0

    const-string v10, ""

    if-nez v0, :cond_2

    .line 65
    move-object v9, v10

    .line 67
    :cond_2
    :try_start_1
    iput-object v9, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startCpuInfo:Ljava/lang/String;

    .line 68
    iget-object v0, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startPidInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v11, v0

    .line 71
    .local v11, "myUid":I
    const-string v0, "activity"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object/from16 v12, p1

    :try_start_2
    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v0, v7

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 73
    .local v7, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v7, v14

    if-eqz v14, :cond_5

    iget v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-ne v14, v11, :cond_5

    .line 75
    :try_start_3
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v16, v9

    .end local v9    # "cpuRate":Ljava/lang/String;
    .local v16, "cpuRate":Ljava/lang/String;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v17, v11

    .end local v11    # "myUid":I
    .local v17, "myUid":I
    :try_start_5
    const-string v11, "/proc/"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/stat"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x3e8

    invoke-direct {v14, v15, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 77
    move-object v4, v14

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v0, "pidCpuRate":Ljava/lang/String;
    move-object v0, v9

    if-nez v9, :cond_3

    .line 79
    move-object v0, v10

    move-object v9, v0

    goto :goto_1

    .line 78
    :cond_3
    move-object v9, v0

    .line 81
    .end local v0    # "pidCpuRate":Ljava/lang/String;
    .local v9, "pidCpuRate":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Lcom/alipay/mobile/quinox/startup/CpuUtil;->startPidInfoMap:Ljava/util/Map;

    new-instance v11, Landroid/util/Pair;

    iget v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v11, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 85
    .end local v9    # "pidCpuRate":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    const/4 v4, 0x0

    .line 90
    move-object v0, v9

    move-object/from16 v9, v16

    move/from16 v11, v17

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 91
    move-object v0, v9

    move-object/from16 v9, v16

    move/from16 v11, v17

    goto :goto_0

    .line 83
    :catchall_1
    move-exception v0

    move-object v8, v0

    goto :goto_2

    .end local v17    # "myUid":I
    .restart local v11    # "myUid":I
    :catchall_2
    move-exception v0

    move/from16 v17, v11

    move-object v8, v0

    .end local v11    # "myUid":I
    .restart local v17    # "myUid":I
    goto :goto_2

    .end local v16    # "cpuRate":Ljava/lang/String;
    .end local v17    # "myUid":I
    .local v9, "cpuRate":Ljava/lang/String;
    .restart local v11    # "myUid":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v9

    move/from16 v17, v11

    move-object v8, v0

    .line 84
    .end local v9    # "cpuRate":Ljava/lang/String;
    .end local v11    # "myUid":I
    .restart local v16    # "cpuRate":Ljava/lang/String;
    .restart local v17    # "myUid":I
    :goto_2
    if-eqz v4, :cond_4

    .line 85
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    .line 88
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 87
    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 90
    .end local v4    # "pidReader":Ljava/io/BufferedReader;
    .local v0, "pidReader":Ljava/io/BufferedReader;
    move-object v4, v0

    .end local v0    # "pidReader":Ljava/io/BufferedReader;
    .restart local v4    # "pidReader":Ljava/io/BufferedReader;
    :goto_4
    nop

    .end local v3    # "cpuReader":Ljava/io/BufferedReader;
    .end local v4    # "pidReader":Ljava/io/BufferedReader;
    .end local v5    # "startTime":J
    .end local p1    # "context":Landroid/content/Context;
    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 94
    .end local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v16    # "cpuRate":Ljava/lang/String;
    .end local v17    # "myUid":I
    .restart local v3    # "cpuReader":Ljava/io/BufferedReader;
    .restart local v4    # "pidReader":Ljava/io/BufferedReader;
    .restart local v5    # "startTime":J
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_5
    move-exception v0

    goto :goto_6

    .line 73
    .restart local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v9    # "cpuRate":Ljava/lang/String;
    .restart local v11    # "myUid":I
    :cond_5
    move-object/from16 v16, v9

    move/from16 v17, v11

    .line 93
    .end local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9    # "cpuRate":Ljava/lang/String;
    .end local v11    # "myUid":I
    .restart local v16    # "cpuRate":Ljava/lang/String;
    .restart local v17    # "myUid":I
    move-object/from16 v9, v16

    move/from16 v11, v17

    goto/16 :goto_0

    .line 72
    .end local v16    # "cpuRate":Ljava/lang/String;
    .end local v17    # "myUid":I
    .restart local v9    # "cpuRate":Ljava/lang/String;
    .restart local v11    # "myUid":I
    :cond_6
    move-object/from16 v16, v9

    move/from16 v17, v11

    .line 99
    .end local v9    # "cpuRate":Ljava/lang/String;
    .end local v11    # "myUid":I
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 101
    if-eqz v4, :cond_7

    .line 102
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 106
    :cond_7
    :goto_5
    goto :goto_7

    .line 104
    :catchall_6
    move-exception v0

    .line 107
    goto :goto_7

    .line 94
    :catchall_7
    move-exception v0

    move-object/from16 v12, p1

    .line 98
    :goto_6
    if-eqz v3, :cond_8

    .line 99
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 101
    :cond_8
    if-eqz v4, :cond_7

    .line 102
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_5

    .line 108
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 109
    .local v7, "endTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "start costs :"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
