.class public interface abstract Lcom/alipay/mobile/quinox/perfhelper/CpuBooster;
.super Ljava/lang/Object;
.source "CpuBooster.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract fillReportData(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract init(Lorg/json/JSONObject;)Z
.end method

.method public abstract startBoost(I)Z
.end method

.method public abstract stopBoost()V
.end method
