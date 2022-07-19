.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;
.super Ljava/lang/Object;
.source "SmoothnessUtil.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a:Z

    .line 23
    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->b:Z

    return-void
.end method

.method public static a(J)D
    .locals 4
    .param p0, "lagDuration"    # J

    .line 63
    const-wide/16 v0, 0xc8

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x1f3

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 65
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    return-wide v0

    .line 66
    :cond_0
    const-wide/16 v0, 0x1f4

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x3e7

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 68
    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v2

    return-wide v0

    .line 69
    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    .line 71
    long-to-double v0, p0

    const-wide/high16 v2, 0x4002000000000000L    # 2.25

    mul-double v0, v0, v2

    return-wide v0

    .line 73
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(JJ)D
    .locals 25
    .param p0, "lagTime"    # J
    .param p2, "totalTime"    # J

    .line 33
    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_2

    cmp-long v0, v1, v7

    if-ltz v0, :cond_2

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 37
    :cond_0
    long-to-double v7, v3

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    const-wide/16 v11, 0x0

    move-wide v13, v11

    .line 38
    .local v13, "recordSeconds":D
    const-wide/high16 v15, 0x4002000000000000L    # 2.25

    mul-double v7, v7, v15

    .line 39
    .local v7, "weightSeconds":D
    long-to-double v5, v1

    div-double/2addr v5, v9

    .line 41
    .local v5, "lagValue":D
    sub-double v9, v7, v5

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 42
    .local v9, "score":D
    mul-double v17, v7, v7

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    mul-double v17, v17, v19

    mul-double v17, v17, v19

    mul-double v21, v9, v9

    const-wide v23, 0x40c3880000000000L    # 10000.0

    mul-double v21, v21, v23

    sub-double v17, v17, v21

    .line 43
    move-wide/from16 v9, v17

    cmpg-double v0, v17, v11

    if-gez v0, :cond_1

    .line 44
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    move-wide v9, v11

    .line 46
    :cond_1
    mul-double v11, v7, v7

    div-double v11, v9, v11

    .line 47
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v9, v11

    .line 48
    sub-double v19, v19, v9

    .line 49
    return-wide v19

    .line 50
    .end local v5    # "lagValue":D
    .end local v7    # "weightSeconds":D
    .end local v9    # "score":D
    .end local v13    # "recordSeconds":D
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSmoothnessScore() error lagTime:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " totalTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SmoothnessUtil"

    invoke-interface {v5, v7, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Throwable;
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    return-wide v5

    .line 33
    :cond_2
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 34
    :goto_0
    return-wide v5
.end method

.method public static a()Z
    .locals 4

    .line 77
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->b:Z

    if-nez v0, :cond_2

    .line 78
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    sput-boolean v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a:Z

    .line 80
    sput-boolean v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->b:Z

    .line 81
    return v1

    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "SmoothnessUtil"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_1
    sput-boolean v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->b:Z

    .line 90
    :cond_2
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a:Z

    return v0
.end method
