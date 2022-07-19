.class public Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;
.super Ljava/lang/Object;
.source "NetDiagnoseService.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;
    .locals 2

    .line 19
    sget-object v0, Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;

    if-eqz v0, :cond_0

    .line 20
    return-object v0

    .line 22
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;

    if-eqz v1, :cond_1

    .line 24
    monitor-exit v0

    return-object v1

    .line 26
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;->a:Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/NetDiagnoseService;

    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public launch(Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/DiagnoseResult;)V
    .locals 1
    .param p1, "diagnoseResult"    # Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/DiagnoseResult;

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->diagnoseForEasterEggs(Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/DiagnoseResult;)V

    .line 37
    return-void
.end method
