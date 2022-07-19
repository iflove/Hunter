.class public Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
.super Ljava/lang/Object;
.source "ExceptionData.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final E_LAUNCH_TIME:Ljava/lang/String; = "LAUNCH_TIME"

.field public static final E_TYPE:Ljava/lang/String; = "TYPE"

.field public static final TYPE_ANR:Ljava/lang/String; = "ANR"

.field public static final TYPE_CRASH:Ljava/lang/String; = "CRASH"

.field public static final TYPE_START_APP_FAIL:Ljava/lang/String; = "START_APP_FAIL"

.field public static final TYPE_START_UP_DEAD:Ljava/lang/String; = "START_UP_DEAD"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->b:J

    return-void
.end method

.method public static isValidExceptionType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .line 74
    if-eqz p0, :cond_1

    .line 75
    const-string v0, "CRASH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string v0, "START_UP_DEAD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string v0, "ANR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const-string v0, "START_APP_FAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    return v0

    .line 78
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "another"    # Ljava/lang/Object;

    .line 62
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->b:J

    .line 63
    .local v0, "mine":J
    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    iget-wide v2, v2, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->b:J

    .line 64
    .local v2, "theirs":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 65
    const/4 v4, 0x1

    return v4

    .line 66
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 67
    const/4 v4, -0x1

    return v4

    .line 69
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public getClientLaunchTime()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->b:J

    return-wide v0
.end method

.method public getExceptionType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 42
    :try_start_0
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->setExceptionType(Ljava/lang/String;)V

    .line 43
    const-string v0, "LAUNCH_TIME"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->setClientLaunchTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    .local v0, "wr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExceptionData"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .end local v0    # "wr":Ljava/lang/Throwable;
    return-void
.end method

.method public setClientLaunchTime(J)V
    .locals 0
    .param p1, "clientLaunchTime"    # J

    .line 37
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->b:J

    .line 38
    return-void
.end method

.method public setExceptionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionType"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "TYPE"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->getExceptionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "LAUNCH_TIME"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->getClientLaunchTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ExceptionData"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
