.class public Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;
.super Ljava/lang/Object;
.source "RealTimeLocation.java"


# static fields
.field public static LBS_ERROR:J

.field private static g:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-wide/16 v0, -0x64

    sput-wide v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->LBS_ERROR:J

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->g:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-wide v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->LBS_ERROR:J

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a:J

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->b:Ljava/lang/String;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->c:J

    .line 49
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->d:J

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->e:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    .line 56
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a:J

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->d:J

    .line 81
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->e:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    .line 82
    return-void
.end method

.method private a(J)V
    .locals 2
    .param p1, "lbs_id"    # J

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    const-string v1, "ip_rank_lbsId"

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 146
    return-void
.end method

.method private a()Z
    .locals 5

    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->c()J

    move-result-wide v0

    .line 93
    .local v0, "outTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private b()J
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    const-string v1, "ip_rank_lbsId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getLonggData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(J)V
    .locals 2
    .param p1, "outTime"    # J

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    const-string v1, "ip_rank_outTime"

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 162
    return-void
.end method

.method private c()J
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    const-string v1, "ip_rank_outTime"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getLonggData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->g:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    if-eqz v0, :cond_0

    .line 65
    return-object v0

    .line 67
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->g:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->g:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    .line 71
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->g:Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;

    return-object v0

    .line 71
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLbsIdGently()J
    .locals 8

    .line 103
    const-string v0, "IPR_RealTimeLoc"

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a:J

    .line 106
    sget-wide v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->LBS_ERROR:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    const-string/jumbo v1, "realTimeLocation not init or has timeout,get new lbs_id"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/iprank/utils/IpRankUtil;->getLatLng(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "mLocation":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->e:Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/iprank/mng/IpLbsManager;->getLbsIdAnyway(Ljava/lang/String;)J

    move-result-wide v2

    .line 112
    .local v2, "mLbs_id":J
    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a:J

    .line 113
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->b:Ljava/lang/String;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->c:J

    .line 115
    const-wide/32 v6, 0x124f80

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->d:J

    .line 118
    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a:J

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a(J)V

    .line 119
    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->d:J

    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->b(J)V

    .line 123
    .end local v1    # "mLocation":Ljava/lang/String;
    .end local v2    # "mLbs_id":J
    :cond_1
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 124
    :catchall_0
    move-exception v1

    .line 125
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .end local v1    # "ex":Ljava/lang/Throwable;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealTimeLocation{lbs_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", latlng=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", recordTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/RealTimeLocation;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
