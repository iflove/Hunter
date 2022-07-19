.class public interface abstract Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor;
.super Ljava/lang/Object;
.source "ISmoothnessMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;
    }
.end annotation


# virtual methods
.method public abstract addSmoothnessMonitor(Ljava/lang/Object;Lcom/alipay/mobile/monitor/smoothness/SmoothnessRequest;)V
.end method

.method public abstract getSmoothnessResult(Ljava/lang/Object;)J
.end method

.method public abstract setListener(Lcom/alipay/mobile/monitor/smoothness/ISmoothnessMonitor$ISmoothnessListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract start(Ljava/lang/Object;)V
.end method

.method public abstract stop()V
.end method

.method public abstract stop(Ljava/lang/Object;)V
.end method
