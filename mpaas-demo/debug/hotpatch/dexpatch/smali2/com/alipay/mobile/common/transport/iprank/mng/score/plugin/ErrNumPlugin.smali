.class public Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/ErrNumPlugin;
.super Ljava/lang/Object;
.source "ErrNumPlugin.java"

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
    sget v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->ErrNumPluginNum:F

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public run(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)V"
        }
    .end annotation

    .line 24
    nop

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 26
    iget v3, v3, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 27
    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    cmpl-float v0, v2, v1

    if-nez v0, :cond_1

    .line 31
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/ErrNumPlugin;->getWeight()F

    move-result v0

    div-float/2addr v0, v2

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;

    .line 36
    iget v2, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->failCount:I

    .line 37
    iget v3, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/plugin/ErrNumPlugin;->getWeight()F

    move-result v4

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;->grade:F

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    return-void
.end method
