.class public Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator;
.super Ljava/lang/Object;
.source "TianyanLoggingDelegator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;,
        Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;,
        Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$LoggingHttpClientGetter;,
        Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;,
        Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;,
        Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putCommonSimpleDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;)Z
    .locals 1
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    .line 110
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->putCommonSimpleDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;)Z

    move-result v0

    return v0
.end method

.method public static putConfigServiceDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;)Z
    .locals 1
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    .line 118
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->putConfigServiceDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;)Z

    move-result v0

    return v0
.end method

.method public static putMonitorContextDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;)Z
    .locals 1
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    .line 126
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->putMonitorContextDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;)Z

    move-result v0

    return v0
.end method

.method public static removeCommonSimpleDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;)Z
    .locals 1
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;

    .line 114
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->removeCommonSimpleDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$CommonSimpleDelegate;)Z

    move-result v0

    return v0
.end method

.method public static removeConfigServiceDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;)Z
    .locals 1
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;

    .line 122
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->removeConfigServiceDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ConfigServiceDelegate;)Z

    move-result v0

    return v0
.end method

.method public static removeMonitorContextDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;)Z
    .locals 1
    .param p0, "delegate"    # Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;

    .line 130
    invoke-static {p0}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->removeMonitorContextDelegate(Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$MonitorContextDelegate;)Z

    move-result v0

    return v0
.end method

.method public static setFrameworkBackground(Z)V
    .locals 0
    .param p0, "isBackground"    # Z

    .line 147
    sput-boolean p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsFrameworkBackground:Z

    .line 157
    return-void
.end method

.method public static setMonitorBackground(Z)V
    .locals 0
    .param p0, "isBackground"    # Z

    .line 134
    sput-boolean p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsMonitorBackground:Z

    .line 144
    return-void
.end method

.method public static setRelaxedBackground(Z)V
    .locals 0
    .param p0, "isBackground"    # Z

    .line 173
    sput-boolean p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsRelaxedBackground:Z

    .line 183
    return-void
.end method

.method public static setStrictBackground(Z)V
    .locals 0
    .param p0, "isBackground"    # Z

    .line 160
    sput-boolean p0, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDispatcher;->sIsStrictBackground:Z

    .line 170
    return-void
.end method
