.class public Lcom/alipay/mobile/common/logging/strategy/SimplingUtils;
.super Ljava/lang/Object;
.source "SimplingUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SimplingUtils"

.field public static final maxRate:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDay()J
    .locals 4

    .line 69
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    .line 71
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    .line 72
    return-wide v0
.end method

.method public static getOffset(I)I
    .locals 4
    .param p0, "rate"    # I

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/SimplingUtils;->getCurrentDay()J

    move-result-wide v0

    .line 64
    const/16 v2, 0x3e8

    div-int/2addr v2, p0

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    mul-int v1, v1, p0

    return v1
.end method

.method public static isHitStoreFlood(ILjava/lang/String;)Z
    .locals 8
    .param p0, "rate"    # I
    .param p1, "utdid"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    .line 85
    return v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    if-gtz p0, :cond_1

    .line 88
    return v1

    .line 90
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 94
    .local v3, "current64":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/strategy/IntUtil;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 96
    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, p0

    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    return v0

    :cond_3
    return v1

    .line 91
    .end local v3    # "current64":Ljava/lang/String;
    :cond_4
    :goto_0
    return v1

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isHitStoreFlood ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimplingUtils"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "ex":Ljava/lang/Throwable;
    return v1
.end method

.method public static isHitTest(ILjava/lang/String;)Z
    .locals 5
    .param p0, "rate"    # I
    .param p1, "utdid"    # Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 26
    return v1

    .line 28
    :cond_0
    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_6

    if-gez p0, :cond_1

    goto :goto_2

    .line 31
    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 32
    return v0

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    .local v2, "bucketId":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    goto :goto_0

    .line 39
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/strategy/IntUtil;->a(Ljava/lang/String;)J

    move-result-wide v3

    .line 41
    long-to-int v4, v3

    rem-int/lit16 v4, v4, 0x3e8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 44
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 36
    :cond_4
    :goto_0
    const/16 v2, 0x3e7

    .line 47
    :goto_1
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/strategy/SimplingUtils;->getOffset(I)I

    move-result v3

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x3e8

    if-ge v3, p0, :cond_5

    .line 48
    return v1

    .line 50
    :cond_5
    return v0

    .line 29
    .end local v2    # "bucketId":I
    :cond_6
    :goto_2
    return v1
.end method
