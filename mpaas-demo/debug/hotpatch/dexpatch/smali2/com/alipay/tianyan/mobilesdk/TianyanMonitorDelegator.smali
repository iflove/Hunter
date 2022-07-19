.class public Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator;
.super Ljava/lang/Object;
.source "TianyanMonitorDelegator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;,
        Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$TimeTickTriggerDelegate;,
        Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ClientAutoEventDelegate;,
        Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;,
        Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;
    }
.end annotation


# static fields
.field public static final SPEND_LONG_TIME:J = 0x32L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putClientAutoEventDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ClientAutoEventDelegate;)Z
    .locals 1
    .param p0, "bizKey"    # Ljava/lang/String;
    .param p1, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ClientAutoEventDelegate;

    .line 87
    invoke-static {p0, p1}, Lcom/alipay/tianyan/mobilesdk/ClientAutoEventDispatcher;->putClientAutoEventDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ClientAutoEventDelegate;)Z

    move-result v0

    return v0
.end method

.method public static putCyclicalReportDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;)Z
    .locals 1
    .param p0, "bizKey"    # Ljava/lang/String;
    .param p1, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;

    .line 31
    invoke-static {p0, p1}, Lcom/alipay/tianyan/mobilesdk/CyclicalReportDispatcher;->putCyclicalReportDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$CyclicalReportDelegate;)Z

    move-result v0

    return v0
.end method

.method public static putProcessAliveReportDelegate(ZLjava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;)Z
    .locals 1
    .param p0, "isOnDayFirstly"    # Z
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;

    .line 54
    invoke-static {p0, p1, p2}, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->putProcessAliveReportDelegate(ZLjava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$ProcessAliveReportDelegate;)Z

    move-result v0

    return v0
.end method

.method public static putTimeTickTriggerDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$TimeTickTriggerDelegate;)Z
    .locals 1
    .param p0, "bizKey"    # Ljava/lang/String;
    .param p1, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$TimeTickTriggerDelegate;

    .line 111
    invoke-static {p0, p1}, Lcom/alipay/tianyan/mobilesdk/TimeTickTriggerDispatcher;->putTimeTickTriggerDelegate(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$TimeTickTriggerDelegate;)Z

    move-result v0

    return v0
.end method

.method public static removeClientAutoEventDelegate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bizKey"    # Ljava/lang/String;

    .line 91
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/ClientAutoEventDispatcher;->removeClientAutoEventDelegate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeCyclicalReportDelegate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bizKey"    # Ljava/lang/String;

    .line 35
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/CyclicalReportDispatcher;->removeCyclicalReportDelegate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeProcessAliveReportDelegate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bizKey"    # Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/ProcessAliveReportDispatcher;->removeProcessAliveReportDelegate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeTimeTickTriggerDelegate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bizKey"    # Ljava/lang/String;

    .line 115
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TimeTickTriggerDispatcher;->removeTimeTickTriggerDelegate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setIndependenceDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;)Z
    .locals 1
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;

    .line 133
    if-eqz p0, :cond_1

    sget-object v0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;->sIndependenceDelegate:Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    sput-object p0, Lcom/alipay/tianyan/mobilesdk/TianyanMonitorAbility;->sIndependenceDelegate:Lcom/alipay/tianyan/mobilesdk/TianyanMonitorDelegator$IndependenceDelegate;

    .line 137
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
