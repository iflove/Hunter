.class public interface abstract Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
.super Ljava/lang/Object;
.source "AutoTrackerAdapter.java"


# virtual methods
.method public abstract getActivityAt(Landroid/app/Activity;I)Landroid/app/Activity;
.end method

.method public abstract getActivityTrackId(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract getAppId(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract getSourceId(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract getStartActivityCount(Landroid/app/Activity;)I
.end method

.method public abstract onAssembleBehavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
.end method

.method public abstract onTrackIntegratorInit(Lcom/alipay/mobile/monitor/track/TrackIntegrator;)V
.end method
