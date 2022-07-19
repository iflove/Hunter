.class final Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;
.super Ljava/lang/Object;
.source "MonitorContextImpl.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    .line 120
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;
    .param p2, "diagnose"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->isPowerConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/BatteryID;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .param p2, "url"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->isTraficConsumeAccept(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->notePowerConsume(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V

    .line 124
    return-void
.end method

.method public final noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/monitor/MonitorContextImpl;->noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 132
    return-void
.end method
