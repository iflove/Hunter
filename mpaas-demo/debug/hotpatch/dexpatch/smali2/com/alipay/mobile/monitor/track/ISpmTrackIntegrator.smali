.class public interface abstract Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;
.super Ljava/lang/Object;
.source "ISpmTrackIntegrator.java"


# virtual methods
.method public abstract logPageEndWithSpmId(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logPageStartWithSpmId(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setLastClickViewSpm(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setTagId(I)V
.end method

.method public abstract tagViewEntityContentId(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract tagViewSpm(Landroid/view/View;Ljava/lang/String;)V
.end method
