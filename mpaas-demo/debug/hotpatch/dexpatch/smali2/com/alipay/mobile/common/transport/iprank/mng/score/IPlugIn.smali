.class public interface abstract Lcom/alipay/mobile/common/transport/iprank/mng/score/IPlugIn;
.super Ljava/lang/Object;
.source "IPlugIn.java"


# virtual methods
.method public abstract getWeight()F
.end method

.method public abstract isActivated()Z
.end method

.method public abstract run(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)V"
        }
    .end annotation
.end method
