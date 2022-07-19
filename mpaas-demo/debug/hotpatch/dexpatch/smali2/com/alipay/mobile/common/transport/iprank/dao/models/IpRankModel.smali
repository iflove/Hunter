.class public Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
.super Ljava/lang/Object;
.source "IpRankModel.java"


# instance fields
.field public _id:J

.field public domain:Ljava/lang/String;

.field public failCount:I

.field public feedbackSuccCount:I

.field public feedbackSuccTime:J

.field public grade:F

.field public ip:Ljava/lang/String;

.field public lastSuccTime:J

.field public lbs_id:J

.field public netType:I

.field public rtt:I

.field public successCount:I

.field public time:J

.field public ttl:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->_id:J

    .line 17
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    .line 20
    const-string v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    .line 26
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    .line 29
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    .line 32
    const/4 v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    .line 35
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 38
    iput v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    .line 41
    iput v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 44
    iput v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    .line 47
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    .line 50
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    .line 57
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JJIIIIIJJF)V
    .locals 16
    .param p1, "lbs_id"    # J
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "ip"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "ttl"    # J
    .param p9, "netType"    # I
    .param p10, "rtt"    # I
    .param p11, "successCount"    # I
    .param p12, "failCount"    # I
    .param p13, "feedbackSuccCount"    # I
    .param p14, "feedbackSuccTime"    # J
    .param p16, "lastSuccTime"    # J
    .param p18, "grade"    # F

    .line 61
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->_id:J

    .line 17
    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    .line 20
    const-string v3, ""

    iput-object v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    .line 23
    iput-object v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    .line 26
    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    .line 29
    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    .line 32
    const/4 v3, -0x1

    iput v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    .line 35
    const/4 v3, 0x0

    iput v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 38
    iput v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    .line 41
    iput v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 44
    iput v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    .line 47
    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    .line 50
    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    .line 53
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    .line 62
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    .line 63
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    .line 64
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    .line 65
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    .line 66
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    .line 67
    move/from16 v9, p9

    iput v9, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    .line 68
    move/from16 v10, p10

    iput v10, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 69
    move/from16 v11, p11

    iput v11, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    .line 70
    move/from16 v12, p12

    iput v12, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 71
    move/from16 v13, p13

    iput v13, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    .line 72
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    .line 73
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    .line 74
    move/from16 v1, p18

    iput v1, v0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    .line 75
    return-void
.end method


# virtual methods
.method public isTimeOut()Z
    .locals 5

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IpRankModel{_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lbs_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lbs_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", domain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->ttl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->netType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", successCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->successCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackSuccCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackSuccTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->feedbackSuccTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastSuccTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", grade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
