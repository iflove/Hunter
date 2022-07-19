.class public Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SpeedTestPlugin;
.super Ljava/lang/Object;
.source "SpeedTestPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight()F
    .locals 1

    .line 56
    sget v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->SpeedTestPluginNum:F

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public run(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)V"
        }
    .end annotation

    .line 25
    nop

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x270f

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 27
    iget v5, v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    if-eq v5, v4, :cond_0

    .line 30
    iget v3, v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 31
    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    cmpl-float v0, v2, v1

    if-nez v0, :cond_2

    .line 35
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SpeedTestPlugin;->getWeight()F

    move-result v0

    div-float/2addr v0, v2

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 41
    iget v2, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    if-ne v2, v4, :cond_3

    .line 42
    iget v2, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SpeedTestPlugin;->getWeight()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    goto :goto_1

    .line 44
    :cond_3
    iget v2, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->rtt:I

    .line 46
    if-lez v2, :cond_4

    .line 47
    iget v3, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/SpeedTestPlugin;->getWeight()F

    move-result v5

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v5, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    iput v3, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    .line 51
    :cond_4
    goto :goto_1

    .line 52
    :cond_5
    return-void
.end method
