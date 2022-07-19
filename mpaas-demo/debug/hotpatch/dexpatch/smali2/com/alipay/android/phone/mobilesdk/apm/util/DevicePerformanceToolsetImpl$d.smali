.class final Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;
.super Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;
.source "DevicePerformanceToolsetImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/io/FileFilter;


# instance fields
.field private volatile a:I

.field private volatile b:J

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:J

.field private volatile g:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->h:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/api/DevicePerformanceToolset$StaticDeviceInfo;-><init>()V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->h:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 253
    .local v1, "list":[Ljava/io/File;
    move-object v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v1

    return v0
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;
    .locals 1

    .line 111
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d$a;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 9
    .param p0, "file"    # Ljava/lang/String;

    const-string v0, "[getCoresFromFile] error! %s"

    const-string v1, "DevicePerformanceToolset"

    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 260
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v5, 0x0

    move-object v6, v5

    .line 261
    .local v6, "buf":Ljava/io/BufferedReader;
    move-object v6, v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "fileContents":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 263
    if-eqz v4, :cond_1

    const-string v7, "0-[\\d]+$"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v5, "num":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    add-int/lit8 v3, v3, 0x1

    .line 274
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    goto :goto_0

    .line 276
    :catchall_0
    move-exception v7

    .line 277
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v1, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_0
    return v3

    .line 274
    .end local v5    # "num":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    goto :goto_2

    .line 276
    :catchall_1
    move-exception v5

    .line 277
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    invoke-interface {v7, v1, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_2
    return v3

    .line 268
    .end local v4    # "fileContents":Ljava/lang/String;
    .end local v6    # "buf":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v4

    .line 269
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v1, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 273
    if-eqz v2, :cond_2

    .line 274
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .line 276
    :catchall_3
    move-exception v5

    .line 277
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v1, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 278
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    nop

    .line 270
    :goto_4
    return v3

    .line 272
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_4
    move-exception v3

    .line 273
    if-eqz v2, :cond_3

    .line 274
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    .line 276
    :catchall_5
    move-exception v4

    .line 277
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v1, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 278
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_5
    nop

    :goto_6
    throw v3
.end method


# virtual methods
.method public final getLaunchTime()J
    .locals 11

    const-string v0, "DevicePerformanceToolset"

    .line 192
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 193
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->e:J

    return-wide v0

    .line 196
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 197
    .local v1, "start":J
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getStartupPerfData()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    .line 198
    .local v6, "startupPerfData":Ljava/util/Map;
    move-object v6, v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    const-string v5, "launchTime"

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string/jumbo v5, "timePreLaunch"

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->e:J

    .line 203
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->getLaunchTimeAvgLast3Times()J

    .line 204
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getLaunchTime = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->e:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", cost = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->e:J

    return-wide v3

    .line 199
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v7, "getLaunchTime returns 0 because of ClientMonitorAgent getStartupPerfData returns null or empty"

    invoke-interface {v5, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    return-wide v3

    .line 206
    .end local v1    # "start":J
    .end local v6    # "startupPerfData":Ljava/util/Map;
    :catchall_0
    move-exception v1

    .line 207
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v5, "getLaunchTime got exception"

    invoke-interface {v2, v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    return-wide v3
.end method

.method public final getLaunchTimeAvgLast3Times()J
    .locals 22

    .line 214
    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    .line 215
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->f:J

    return-wide v2

    .line 217
    :cond_0
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->e:J

    .line 218
    .local v2, "currentLaunchTime":J
    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 219
    return-wide v4

    .line 221
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 222
    .local v4, "start":J
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->g:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->g:Landroid/content/SharedPreferences;

    .line 225
    :cond_2
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->g:Landroid/content/SharedPreferences;

    const-string v6, "DevicePerformanceToolset"

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->g:Landroid/content/SharedPreferences;

    const-string v7, "device_performance_toolset_launch_time_avg"

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "launchTimeAvgJson":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "launchTime2"

    const-string v11, "launchTime1"

    if-nez v0, :cond_3

    .line 229
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 230
    .local v8, "jsonObject":Lorg/json/JSONObject;
    move-object v8, v0

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 231
    .local v12, "launchTime1":J
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 232
    .local v14, "launchTime2":J
    add-long v16, v12, v14

    add-long v16, v16, v2

    const-wide/16 v18, 0x3

    move-wide/from16 v20, v12

    .end local v12    # "launchTime1":J
    .local v20, "launchTime1":J
    div-long v12, v16, v18

    iput-wide v12, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->f:J

    .line 233
    invoke-virtual {v8, v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 234
    invoke-virtual {v8, v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 235
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "launchTime2":J
    .end local v20    # "launchTime1":J
    goto :goto_0

    .line 237
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 238
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    move-object v8, v0

    invoke-virtual {v0, v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 239
    invoke-virtual {v8, v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 240
    iput-wide v2, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->f:J

    .line 241
    iget-object v0, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string v8, "getLaunchTimeAvgLast3Times got exception"

    invoke-interface {v7, v6, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v9    # "launchTimeAvgJson":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getLaunchTimeAvgLast3Times = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->f:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", cost = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-wide v6, v1, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->f:J

    return-wide v6
.end method

.method public final getLowMemoryThreshold(Landroid/content/Context;)J
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 182
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 183
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->d:J

    return-wide v0

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->getTotalMemory(Landroid/content/Context;)J

    .line 187
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->d:J

    return-wide v0
.end method

.method public final getMaxMemory(Landroid/content/Context;)J
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->c:J

    const-wide/16 v2, 0x400

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    .line 174
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->c:J

    mul-long v0, v0, v2

    return-wide v0

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->getTotalMemory(Landroid/content/Context;)J

    .line 177
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->c:J

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final getNumberOfCPUCores()I
    .locals 2

    .line 120
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->a:I

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->a:I

    return v0

    .line 125
    :cond_0
    :try_start_0
    const-string v0, "/sys/devices/system/cpu/possible"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 126
    .local v1, "cores":I
    move v1, v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "/sys/devices/system/cpu/present"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->b(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 129
    :cond_1
    if-nez v1, :cond_2

    .line 130
    const-string v0, "/sys/devices/system/cpu/"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->a(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 134
    :cond_2
    goto :goto_0

    .line 132
    .end local v1    # "cores":I
    :catch_0
    move-exception v0

    .line 133
    const/4 v1, 0x0

    .line 135
    .restart local v1    # "cores":I
    :goto_0
    if-nez v1, :cond_3

    .line 136
    const/4 v1, 0x1

    .line 138
    :cond_3
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->a:I

    .line 139
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->a:I

    return v0
.end method

.method public final getTotalMemory(Landroid/content/Context;)J
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "DevicePerformanceToolset"

    .line 145
    const-wide/16 v1, 0x0

    :try_start_0
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->b:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 146
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->b:J

    return-wide v0

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 149
    .local v3, "start":J
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    .line 150
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 151
    .local v5, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    const/4 v7, 0x0

    .line 152
    .local v7, "am":Landroid/app/ActivityManager;
    move-object v7, v6

    invoke-virtual {v6, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 153
    iget-wide v8, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->b:J

    .line 154
    iget-wide v8, v5, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->d:J

    .line 155
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    move-wide v10, v1

    .line 156
    .local v10, "memClass":J
    move-wide v10, v8

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v6, v8, v12

    if-nez v6, :cond_1

    .line 157
    invoke-virtual {v7}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    int-to-long v8, v6

    iput-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->c:J

    goto :goto_0

    .line 159
    :cond_1
    const-wide/32 v8, 0x100000

    div-long v8, v10, v8

    long-to-int v6, v8

    int-to-long v8, v6

    iput-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->c:J

    .line 161
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getTotalMemory cost:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v3

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", total_mem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->b:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", LowMemoryThresold:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->d:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", Memory Class:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->c:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/DevicePerformanceToolsetImpl$d;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 167
    .end local v3    # "start":J
    .end local v5    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v7    # "am":Landroid/app/ActivityManager;
    .end local v10    # "memClass":J
    :cond_2
    goto :goto_1

    .line 165
    :catchall_0
    move-exception v3

    .line 166
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "getTotalMemory got exception"

    invoke-interface {v4, v0, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    return-wide v1
.end method
