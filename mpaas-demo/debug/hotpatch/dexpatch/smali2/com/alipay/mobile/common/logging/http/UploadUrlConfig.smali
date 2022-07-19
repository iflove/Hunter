.class public Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;
.super Ljava/lang/Object;
.source "UploadUrlConfig.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->b:Z

    .line 18
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->c:Z

    .line 19
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->d:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->e:J

    .line 21
    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->f:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->a:Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->a:Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;

    .line 27
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->a:Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()Z
    .locals 6

    const-string v0, "UploadUrlConfig"

    .line 47
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->b:Z

    if-eqz v1, :cond_0

    .line 48
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->d:Z

    return v0

    .line 50
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->b:Z

    .line 53
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    .line 54
    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "LoggingUrlConfig"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 55
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v4, "LogUploadDisableHttps"

    const-string/jumbo v5, "no"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "disableHttps":Ljava/lang/String;
    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "disable https, use http upload"

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->d:Z

    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v2    # "disableHttps":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->d:Z

    return v0
.end method

.method private e()Z
    .locals 9

    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->f()V

    .line 71
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->c:Z

    .line 74
    :cond_0
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->e:J

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 80
    .local v4, "curTimeSecond":J
    move-wide v4, v2

    iget-wide v6, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->e:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_2

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->f:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "UploadUrlConfig"

    const-string v3, "disableHttpsInTime use http upload"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v1

    .line 85
    :cond_2
    return v0

    .line 75
    .end local v4    # "curTimeSecond":J
    :cond_3
    :goto_0
    return v0
.end method

.method private f()V
    .locals 10

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LoggingUrlConfig"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    const-string v1, "LogUploadDisableHttpsTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 92
    .local v2, "disableHttpsTime":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v1, "times":[Ljava/lang/String;
    move-object v1, v0

    const-string v3, "UploadUrlConfig"

    if-eqz v0, :cond_4

    array-length v0, v1

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    goto :goto_2

    .line 103
    :cond_1
    const-wide/16 v4, 0x0

    .line 104
    .local v4, "startTime":J
    const-wide/16 v6, 0x0

    .line 106
    .local v6, "endTime":J
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v4, v8

    .line 107
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v6, v8

    .line 111
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v8, "convert time error"

    invoke-interface {v0, v3, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    iput-wide v4, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->e:J

    .line 119
    iput-wide v6, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->f:J

    .line 120
    return-void

    .line 114
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v8, "startTime or endTime is null"

    invoke-interface {v0, v3, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 98
    .end local v4    # "startTime":J
    .end local v6    # "endTime":J
    :cond_4
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "configTime is error"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->b:Z

    .line 32
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->c:Z

    .line 33
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
