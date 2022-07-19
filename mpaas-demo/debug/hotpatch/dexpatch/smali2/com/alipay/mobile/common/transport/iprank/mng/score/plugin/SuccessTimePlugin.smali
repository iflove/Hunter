.class public Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SuccessTimePlugin;
.super Ljava/lang/Object;
.source "SuccessTimePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight()F
    .locals 1

    .line 45
    sget v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->SuccessTimePluginNum:F

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public run(Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SuccessTimePlugin;->getWeight()F

    move-result v0

    const/high16 v1, 0x44b40000    # 1440.0f

    div-float/2addr v0, v1

    .line 26
    .local v0, "bi":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 28
    .local v3, "temp":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    move-object v3, v6

    iget-wide v6, v6, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->lastSuccTime:J

    .line 29
    .local v6, "lastSuccTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 30
    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    .line 33
    .local v4, "offTime":J
    move-wide v4, v8

    long-to-float v8, v8

    cmpl-float v8, v8, v1

    if-gtz v8, :cond_0

    .line 37
    iget v8, v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    float-to-double v8, v8

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SuccessTimePlugin;->getWeight()F

    move-result v10

    long-to-float v11, v4

    mul-float v11, v11, v0

    sub-float/2addr v10, v11

    float-to-double v10, v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    iput v8, v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    .line 40
    .end local v3    # "temp":Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;
    .end local v4    # "offTime":J
    .end local v6    # "lastSuccTime":J
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method
