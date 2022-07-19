.class public interface abstract Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;
.super Ljava/lang/Object;
.source "TianyanLoggingDelegator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MonitorContextDelegate"
.end annotation


# virtual methods
.method public abstract isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z
.end method

.method public abstract isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
.end method

.method public abstract notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
.end method

.method public abstract noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
.end method
