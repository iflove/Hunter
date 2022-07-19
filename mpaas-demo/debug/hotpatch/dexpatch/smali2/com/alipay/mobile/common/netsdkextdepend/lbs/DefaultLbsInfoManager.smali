.class public Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;
.super Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;
.source "DefaultLbsInfoManager.java"


# static fields
.field private static d:J


# instance fields
.field private a:Lcom/alipay/mobile/common/lbs/LBSLocation;

.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a:Lcom/alipay/mobile/common/lbs/LBSLocation;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->b:J

    .line 27
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->c:J

    return-void
.end method

.method private a()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 6

    .line 109
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->b:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->c:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 110
    iput-object v0, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a:Lcom/alipay/mobile/common/lbs/LBSLocation;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-eqz v1, :cond_1

    .line 114
    return-object v1

    .line 117
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->b:J

    .line 119
    new-instance v1, Lcom/alipay/mobile/common/lbs/LBSLocationRequest;

    invoke-direct {v1}, Lcom/alipay/mobile/common/lbs/LBSLocationRequest;-><init>()V

    move-object v2, v0

    .line 121
    .local v2, "request":Lcom/alipay/mobile/common/lbs/LBSLocationRequest;
    move-object v2, v1

    sget-wide v3, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->d:J

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/lbs/LBSLocationRequest;->setCacheTimeInterval(J)V

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationRequest;->setNeedAddress(Z)V

    .line 125
    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationRequest;->setReGeoLevel(I)V

    .line 127
    const-string/jumbo v1, "network_getLastKnown"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationRequest;->setBizType(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationRequest;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a:Lcom/alipay/mobile/common/lbs/LBSLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    return-object v1

    .line 130
    .end local v2    # "request":Lcom/alipay/mobile/common/lbs/LBSLocationRequest;
    :catchall_0
    move-exception v1

    .line 131
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLBSLocation ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultLbsInfoManager"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 163
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 164
    return-object p0

    .line 168
    :cond_0
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInnerString ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultLbsInfoManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    const-string v0, "-"

    return-object v0
.end method

.method private static b()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 4

    .line 138
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/selfutil/EnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLastKnownLocation ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultLbsInfoManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v0    # "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, "3"

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .line 153
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocationtime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 154
    .local v2, "age":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 155
    .end local v2    # "age":J
    :catchall_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAge ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultLbsInfoManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "ex":Ljava/lang/Throwable;
    const-string v0, "-"

    return-object v0
.end method


# virtual methods
.method public getExtLbsInfo()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "_"

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 54
    return-object v0

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 57
    .local v3, "lbsStrExt":Ljava/lang/StringBuilder;
    move-object v3, v2

    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAoiname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 61
    .end local v3    # "lbsStrExt":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getExtLbsInfo ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultLbsInfoManager"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method public getKeyLBSInfo()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "_"

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 36
    return-object v0

    .line 38
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 39
    .local v3, "lbsStr":Ljava/lang/StringBuilder;
    move-object v3, v2

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getEncryptLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 44
    .end local v3    # "lbsStr":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 45
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getKeyLBSInfo ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultLbsInfoManager"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method public getLatitude()D
    .locals 4

    .line 70
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->b()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    .local v1, "location":Lcom/alipay/mobile/common/lbs/LBSLocation;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 76
    .end local v1    # "location":Lcom/alipay/mobile/common/lbs/LBSLocation;
    :cond_0
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLatitude ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultLbsInfoManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationtime()Ljava/lang/Long;
    .locals 4

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->b()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    .local v1, "location":Lcom/alipay/mobile/common/lbs/LBSLocation;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocationtime()Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 102
    .end local v1    # "location":Lcom/alipay/mobile/common/lbs/LBSLocation;
    :cond_0
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLocationtime ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultLbsInfoManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;->getLocationtime()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()D
    .locals 4

    .line 83
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdepend/lbs/DefaultLbsInfoManager;->b()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    .local v1, "location":Lcom/alipay/mobile/common/lbs/LBSLocation;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 89
    .end local v1    # "location":Lcom/alipay/mobile/common/lbs/LBSLocation;
    :cond_0
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLongitude ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultLbsInfoManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/lbs/LbsInfoManagerAdapter;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method
