.class public Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;
.super Ljava/lang/Object;
.source "CrashAnalyzer.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "readOnly"    # Z

    .line 382
    :try_start_0
    const-string/jumbo v0, "perf_preferences"

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CrashAnalyzer"

    const-string/jumbo v3, "readAndParseStrategy"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 340
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 341
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "h5Crashed"

    const-string/jumbo v3, "true"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    nop

    .end local v1    # "sp":Landroid/content/SharedPreferences;
    return-void

    .line 342
    :catchall_0
    move-exception v0

    .line 343
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CrashAnalyzer"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashType"    # I

    .line 356
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 357
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 359
    .local v1, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v0

    const-string v3, "crashType"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string v0, "crashTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 361
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lastNebulaxCrashInfo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 363
    :catchall_0
    move-exception v0

    .line 366
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;

    monitor-enter v0

    .line 93
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    .line 102
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    sget-object v1, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 106
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 109
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .local v1, "crashDOArray":Lorg/json/JSONArray;
    sget-object v3, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;

    .line 112
    .local v4, "crashInfoDO":Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    nop

    .end local v4    # "crashInfoDO":Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;
    goto :goto_0

    .line 114
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "crashTypes"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v1    # "crashDOArray":Lorg/json/JSONArray;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    monitor-exit v0

    return-void

    .line 107
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "SP is null"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "crashList":Ljava/util/List;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "crashList":Ljava/util/List;
    :catchall_0
    move-exception v1

    .line 116
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "CrashAnalyzer"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    .end local v1    # "tr":Ljava/lang/Throwable;
    monitor-exit v0

    return-void

    .line 92
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "crashList":Ljava/util/List;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 94
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "crashList":Ljava/util/List;
    :cond_4
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static analyzeJavaCrash(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashInfo"    # Ljava/lang/String;

    .line 306
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v1, "appID"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "currentAppId":Ljava/lang/String;
    const-string v1, "20000067"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v0    # "currentAppId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    .line 311
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CrashAnalyzer"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->b:Z

    if-eqz v0, :cond_1

    .line 316
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    :cond_1
    return-void

    .line 318
    :catchall_1
    move-exception v0

    .line 321
    return-void
.end method

.method public static analyzeNativeCrash(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19

    .line 126
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ", fault addr "

    const-string v4, "code "

    const-string v5, ", code "

    const-string/jumbo v6, "signal "

    const-string/jumbo v7, "mPaaSProductVersion: "

    const-string v8, "CrashAnalyzer"

    if-eqz v1, :cond_1e

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 130
    :cond_0
    new-instance v9, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;

    invoke-direct {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;-><init>()V

    .line 131
    nop

    .line 133
    nop

    .line 134
    const-string v10, ""

    .line 136
    const/4 v11, 0x0

    .line 138
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v14, Ljava/io/BufferedReader;

    const/16 v15, 0x2000

    invoke-direct {v14, v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v11, 0x0

    const/4 v15, 0x0

    .line 142
    :goto_0
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 144
    const-string v0, "Mobile Information: "

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const/16 v0, 0x14

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 147
    const-string v13, "/sdk: "

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 148
    move-object/from16 v18, v10

    :try_start_2
    const-string v10, "\'"

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 149
    if-le v10, v13, :cond_3

    if-lez v13, :cond_3

    .line 150
    add-int/lit8 v13, v13, 0x6

    invoke-virtual {v0, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setSdkVersion(I)V

    goto :goto_1

    .line 146
    :cond_1
    move-object/from16 v18, v10

    goto :goto_1

    .line 144
    :cond_2
    move-object/from16 v18, v10

    .line 156
    :cond_3
    :goto_1
    const-string v0, "Process Name: "

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v10, 0xe

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashProcessName(Ljava/lang/String;)V

    .line 161
    :cond_4
    const-string v0, "Thread Name: "

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    const/16 v0, 0xd

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashThreadName(Ljava/lang/String;)V

    .line 166
    :cond_5
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    const/16 v0, 0x15

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashProductVersion(Ljava/lang/String;)V

    .line 170
    :cond_6
    const-string v0, "appID: "

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    const/4 v0, 0x7

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashAppID(Ljava/lang/String;)V

    .line 174
    :cond_7
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setStartupCrash(Z)V

    .line 179
    :cond_8
    const-string/jumbo v0, "nebulax: "

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    const/16 v0, 0x9

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v10, "yes"

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setNebulaXCrash(Z)V

    .line 183
    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;I)V

    .line 186
    :cond_9
    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v10, " "

    if-eqz v0, :cond_b

    .line 187
    :try_start_3
    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 190
    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 191
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 192
    if-ltz v0, :cond_a

    if-le v13, v0, :cond_a

    .line 193
    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 196
    const/4 v13, 0x0

    :try_start_4
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 197
    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setSignal(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    goto :goto_2

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    invoke-interface {v13, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :cond_a
    :goto_2
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 204
    if-ltz v0, :cond_b

    if-le v13, v0, :cond_b

    .line 205
    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 208
    const/4 v13, 0x0

    :try_start_6
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCode(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 212
    goto :goto_3

    .line 210
    :catchall_1
    move-exception v0

    .line 211
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    invoke-interface {v13, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :cond_b
    :goto_3
    if-nez v11, :cond_e

    const-string v0, "    #"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "pc"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 217
    const-string v0, "egl"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "libGLES"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const-string v0, "libhwui.so"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    :cond_d
    const/4 v11, 0x1

    .line 223
    :cond_e
    const-string v0, "key_m_l_l_t"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 224
    const/16 v0, 0x3a

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 225
    if-ltz v0, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v0, v13, :cond_f

    .line 226
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 231
    :cond_f
    const-string v0, ">>>"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "<<<"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v10, v18

    goto/16 :goto_0

    .line 142
    :cond_10
    move-object/from16 v10, v18

    goto/16 :goto_0

    .line 235
    :catchall_2
    move-exception v0

    move v3, v11

    move-object v11, v14

    move-object/from16 v10, v18

    goto :goto_5

    .line 240
    :cond_11
    move-object/from16 v18, v10

    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 244
    goto :goto_4

    .line 242
    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v8, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    nop

    .line 248
    :goto_4
    move-object/from16 v10, v18

    goto :goto_8

    .line 235
    :catchall_4
    move-exception v0

    move-object/from16 v18, v10

    move v3, v11

    move-object v11, v14

    goto :goto_5

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 236
    :goto_5
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 239
    if-eqz v11, :cond_12

    .line 240
    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_6

    .line 242
    :catchall_6
    move-exception v0

    move-object v4, v0

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v8, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    goto :goto_7

    .line 244
    :cond_12
    :goto_6
    nop

    .line 248
    :goto_7
    move v11, v3

    :goto_8
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getSignal()I

    move-result v0

    if-lez v0, :cond_18

    .line 249
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 251
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashThreadName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RenderThread"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v11, :cond_14

    .line 252
    :cond_13
    const/16 v0, 0x64

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashType(I)V

    .line 254
    :cond_14
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashType()I

    move-result v0

    if-eqz v0, :cond_18

    .line 256
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->getHistoryCrashTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 257
    nop

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v13, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;

    .line 260
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashType()I

    move-result v5

    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashType()I

    move-result v6

    if-ne v5, v6, :cond_15

    .line 261
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->merge(Lorg/json/JSONObject;)V

    .line 262
    const/4 v13, 0x1

    .line 264
    :cond_15
    goto :goto_9

    .line 265
    :cond_16
    if-nez v13, :cond_17

    .line 266
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_17
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 273
    :cond_18
    if-eqz v15, :cond_1b

    .line 276
    :try_start_b
    const-string v0, "foreground"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientStatus(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 277
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 278
    const-wide/16 v4, 0x0

    const-string v0, "CRASH"

    cmp-long v6, v2, v4

    if-lez v6, :cond_19

    .line 279
    :try_start_c
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->recordException(Ljava/lang/String;J)V

    goto :goto_a

    .line 281
    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->recordException(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 286
    :cond_1a
    goto :goto_a

    .line 284
    :catchall_7
    move-exception v0

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    :cond_1b
    :goto_a
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 291
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashAppID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "20000067"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 292
    invoke-virtual {v9}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashAppID()Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;)V

    .line 295
    :cond_1c
    return-void

    .line 238
    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 239
    if-eqz v11, :cond_1d

    .line 240
    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_b

    .line 242
    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v8, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 244
    :cond_1d
    :goto_b
    nop

    :goto_c
    throw v1

    .line 127
    :cond_1e
    :goto_d
    return-void
.end method

.method public static declared-synchronized getHistoryCrashTypes(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;

    monitor-enter v0

    .line 55
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    .local v1, "rList":Ljava/util/List;
    if-nez p0, :cond_0

    .line 58
    monitor-exit v0

    return-object v1

    .line 62
    :cond_0
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    monitor-exit v0

    return-object v1

    .line 67
    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    .line 69
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 70
    .local v4, "sp":Landroid/content/SharedPreferences;
    move-object v4, v2

    if-eqz v2, :cond_3

    .line 73
    const-string v2, "crashTypes"

    const-string v5, ""

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    .line 74
    .local v5, "crashTypes":Ljava/lang/String;
    move-object v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, "crashDOArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 77
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 78
    .local v7, "object":Lorg/json/JSONObject;
    new-instance v8, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;

    invoke-direct {v8}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;-><init>()V

    .line 79
    .local v3, "crashInfoDO":Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;
    move-object v3, v8

    invoke-virtual {v8, v7}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->parse(Lorg/json/JSONObject;)V

    .line 80
    sget-object v8, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    nop

    .end local v3    # "crashInfoDO":Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;
    .end local v7    # "object":Lorg/json/JSONObject;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "crashDOArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    :cond_2
    sget-object v2, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "crashTypes":Ljava/lang/String;
    goto :goto_1

    .line 71
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "SP is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "rList":Ljava/util/List;
    .end local p0    # "context":Landroid/content/Context;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v1    # "rList":Ljava/util/List;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    .line 86
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "CrashAnalyzer"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_1
    monitor-exit v0

    return-object v1

    .line 54
    .end local v1    # "rList":Ljava/util/List;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getNebulaXCrashInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 369
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 370
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "lastNebulaxCrashInfo"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    return-object v1
.end method

.method public static hasH5CrashedBefore(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 329
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->a(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "true"

    const-string v2, "h5Crashed"

    const-string v3, "false"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 331
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v0

    .line 332
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CrashAnalyzer"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .end local v0    # "tr":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static markNebulaXEnable()V
    .locals 1

    .line 351
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->b:Z

    .line 352
    return-void
.end method
