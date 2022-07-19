.class public Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;
.super Ljava/lang/Object;
.source "ExtTransportOffice.java"


# static fields
.field public static final AMNET_HELPER:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.mmtp.amnetadapt.AmnetHelper"

.field public static final BIND_EVENT_LISTENER_MANGER:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.mmtp.BindEventListenerManger"

.field public static final DIAGNOSE_BY_SYSTEMCALL:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.diagnose.network.DiagnoseBySystemCall"

.field public static final DIAGNOSE_BY_USERCALL:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.diagnose.network.DiagnoseByUserCall"

.field public static final DIAGNOSE_LAUNCH:Ljava/lang/String; = "launch"

.field public static final DIAGNOSE_NOTIFY:Ljava/lang/String; = "diagnoseNotify"

.field public static final EXT_TRANSPORT_CONN_CHECKER:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.shared.ExtTransportConnChecker"

.field public static final EXT_TRANSPORT_MANAGER_IMPL:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.shared.ExtTransportManagerImpl"

.field public static final IS_CONNECTION_AVAILABLE:Ljava/lang/String; = "isConnectionAvailable"

.field public static final METHOD_SETSCENE:Ljava/lang/String; = "setScene"

.field public static final MMTPSCENEMANAGER:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.mmtp.MMTPSceneManager"

.field public static final NETWORK_CHECK_CLASS_NAME:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.diagnose.network.NetworkCheck"

.field public static final NETWORK_DIAGONAL_SERVICE:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.diagnose.NetworkDiagnoseServiceImpl"

.field public static final SPEED_TEST_IMPL:Ljava/lang/String; = "com.alipay.mobile.common.transportext.biz.iprank.SpeeTestImpl"

.field private static a:Z

.field private static b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;
    .locals 2

    .line 79
    sget-object v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    if-eqz v0, :cond_0

    .line 80
    return-object v0

    .line 83
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    if-nez v1, :cond_1

    .line 85
    new-instance v1, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    .line 87
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->b:Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    return-object v0

    .line 87
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isFakeWifi()Z
    .locals 7

    const-string v0, "ExtTransportOffice"

    .line 270
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.alipay.mobile.common.transportext.biz.diagnose.network.NetworkCheck"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 271
    .local v4, "networkCheckClass":Ljava/lang/Class;
    move-object v4, v2

    const-string v5, "isFakeWifi"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 272
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 273
    .local v3, "result":Ljava/lang/Object;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 274
    return v1

    .line 276
    :cond_0
    move-object v2, v3

    check-cast v2, Ljava/lang/Boolean;

    .line 277
    .local v2, "isFakeWifi":Ljava/lang/Boolean;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ExtTPOffice , isFakeWifi "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 279
    .end local v2    # "isFakeWifi":Ljava/lang/Boolean;
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "networkCheckClass":Ljava/lang/Class;
    :catchall_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isFakeWifi: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method


# virtual methods
.method public diagnoseForEasterEggs(Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/DiagnoseResult;)V
    .locals 9
    .param p1, "result"    # Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/DiagnoseResult;

    const-string v0, "ExtTransportOffice"

    .line 322
    :try_start_0
    const-string v1, "ExtTPOffice, diagnoseForEasterEggs"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "com.alipay.mobile.common.transportext.biz.diagnose.network.DiagnoseByUserCall"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 325
    .local v3, "diagnoseClass":Ljava/lang/Class;
    const-string v4, "launch"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lcom/alipay/mobile/common/transport/ext/diagnose/eastereggs/DiagnoseResult;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 327
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    nop

    .end local v3    # "diagnoseClass":Ljava/lang/Class;
    return-void

    .line 329
    :catchall_0
    move-exception v1

    .line 330
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public diagnoseNotify()V
    .locals 6

    const-string v0, "ExtTransportOffice"

    .line 306
    :try_start_0
    const-string v1, "com.alipay.mobile.common.transportext.biz.diagnose.network.DiagnoseBySystemCall"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 307
    .local v2, "diagnoseClass":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "diagnoseNotify"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 308
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "ExtTPOffice , diagnoseNotify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v2    # "diagnoseClass":Ljava/lang/Class;
    return-void

    .line 311
    :catchall_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "diagnoseNotify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public getConnState()I
    .locals 6

    const-string v0, "ExtTransportOffice"

    .line 356
    :try_start_0
    const-string v1, "com.alipay.mobile.common.transportext.biz.mmtp.amnetadapt.AmnetHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 357
    .local v2, "amnetHelper":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "getConnState"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 359
    .local v1, "state":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnState,state=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    return v1

    .line 361
    .end local v1    # "state":I
    .end local v2    # "amnetHelper":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    .line 362
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .end local v1    # "ex":Ljava/lang/Throwable;
    const/4 v0, -0x1

    return v0
.end method

.method public getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 146
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    return-object v1

    .line 150
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    .line 151
    .local v2, "extTransportManager":Ljava/lang/Object;
    const-string v3, "getExtTransportClient"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    aput-object v6, v4, v7

    aput-object p2, v4, v8

    invoke-static {v0, v3, v5, v4}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 154
    .end local v2    # "extTransportManager":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "ExtTransportOffice"

    const-string v3, "No enable extTransport. "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-object v1
.end method

.method public getExtTransportManager()Ljava/lang/Object;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 169
    return-object v0

    .line 172
    :cond_0
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v0

    .line 178
    :cond_1
    :try_start_1
    const-string v0, "com.alipay.mobile.common.transportext.biz.shared.ExtTransportManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const-string v1, "ExtTransportOffice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enable extTransport."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->d:Ljava/lang/Object;

    return-object v0

    .line 184
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getNetworkDiagnoseService()Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;
    .locals 3

    .line 208
    :try_start_0
    const-string v0, "com.alipay.mobile.common.transportext.biz.diagnose.NetworkDiagnoseServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.alipay.mobile.common.transportext.biz.diagnose.NetworkDiagnoseServiceImpl not found."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtTransportOffice"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtobufCodec()Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    :try_start_0
    const-string v0, "com.alipay.mobile.common.transportext.biz.shared.ProtobufCodecImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.alipay.mobile.common.transportext.biz.shared.ProtobufCodecImpl not found."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtTransportOffice"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpeeTestImpl()Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;
    .locals 4

    .line 291
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.common.transportext.biz.iprank.SpeeTestImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 292
    .local v2, "speedTestImplClass":Ljava/lang/Class;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/iprank/mng/speedtest/BaseSpeedTest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return-object v1

    .line 294
    .end local v2    # "speedTestImplClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ExtTransportOffice"

    const-string v3, "getSpeeTestImpl exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public getSwitchFromOriginal(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "ExtTransportOffice"

    .line 393
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.alipay.mobile.common.transportext.biz.util.SwitchBridge"

    .line 394
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    .line 395
    .local v3, "switchBridge":Ljava/lang/Class;
    move-object v3, v2

    const-string v4, "getSwitchFromOriginal"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 396
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 397
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] value=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    return-object v2

    .line 400
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "switchBridge":Ljava/lang/Class;
    :catchall_0
    move-exception v2

    .line 401
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    .end local v2    # "ex":Ljava/lang/Throwable;
    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    .line 96
    sget-boolean v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, "extTransportManager":Ljava/lang/Object;
    :try_start_0
    const-string v2, "init"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    aput-object v4, v0, v5

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    return-void

    .line 105
    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 107
    .local v2, "e":Ljava/lang/Throwable;
    move-object v2, v0

    instance-of v0, v0, Ljava/lang/reflect/InvocationTargetException;

    const-string v3, "[init] "

    const-string v4, "ExtTransportOffice"

    if-eqz v0, :cond_1

    .line 108
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .line 109
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    return-void

    .line 119
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MMTPException"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "0,0,0"

    if-eqz v0, :cond_3

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V

    .line 125
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    return-void
.end method

.method public isBindedPushProcess()Z
    .locals 6

    .line 370
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.common.transportext.biz.mmtp.BindEventListenerManger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 371
    .local v3, "clazzBindEventListenerManger":Ljava/lang/Class;
    move-object v3, v1

    const-string v4, "getInstance"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 372
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 374
    .local v1, "objBindEventListenerManger":Ljava/lang/Object;
    const-string v4, "isBinded"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 375
    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 376
    .local v2, "isBinded":Ljava/lang/Boolean;
    move-object v2, v4

    if-nez v4, :cond_0

    .line 377
    return v0

    .line 379
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 380
    .end local v1    # "objBindEventListenerManger":Ljava/lang/Object;
    .end local v2    # "isBinded":Ljava/lang/Boolean;
    .end local v3    # "clazzBindEventListenerManger":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    .line 381
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isBindedPushProcess ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtTransportOffice"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public isConnectionAvailable()Z
    .locals 6

    const-string v0, "ExtTransportOffice"

    .line 244
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.alipay.mobile.common.transportext.biz.shared.ExtTransportConnChecker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 245
    .local v3, "connCheckerClass":Ljava/lang/Class;
    move-object v3, v2

    const-string v4, "isConnectionAvailable"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 247
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 248
    .local v2, "ret":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ExtTPOffice , isConnectionAvailable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 250
    .end local v2    # "ret":Ljava/lang/Boolean;
    .end local v3    # "connCheckerClass":Ljava/lang/Class;
    :catchall_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isConnectionAvailable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public isEnableExtTransport(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    return v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportManager()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 135
    .local v2, "extTransportManager":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 136
    const/4 v0, 0x1

    return v0

    .line 141
    .end local v2    # "extTransportManager":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isEnableExtTransport: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtTransportOffice"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public isInvokedMMTPInit()Z
    .locals 1

    .line 217
    sget-boolean v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    return v0
.end method

.method public networkStateNotify(Z)V
    .locals 8
    .param p1, "available"    # Z

    const-string v0, "ExtTransportOffice"

    .line 258
    :try_start_0
    const-string v1, "com.alipay.mobile.common.transportext.biz.diagnose.network.NetworkCheck"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 259
    .local v2, "networkCheckClass":Ljava/lang/Class;
    move-object v2, v1

    const-string/jumbo v3, "networkStateNotify"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 260
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ExtTPOffice , networkStateNotify "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v2    # "networkCheckClass":Ljava/lang/Class;
    return-void

    .line 262
    :catchall_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "networkStateNotify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public notifyPush2UpdateInfo(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstUpdate"    # Z

    .line 230
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    const-string v0, "com.alipay.mobile.common.transportext.biz.httpdns.ExtHttpDnsManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 234
    .local v1, "extHttpDnsManagerClass":Ljava/lang/Class;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/ExtHttpDnsManager;

    .line 235
    invoke-interface {v0, p2}, Lcom/alipay/mobile/common/transport/ext/ExtHttpDnsManager;->ayncNotifyUpdateDnsInfo(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v1    # "extHttpDnsManagerClass":Ljava/lang/Class;
    return-void

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestHttpDnsFromPush: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtTransportOffice"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 225
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->c:Landroid/content/Context;

    .line 226
    return-void
.end method

.method public setInvokedMMTPInit(Z)V
    .locals 0
    .param p1, "inited"    # Z

    .line 221
    sput-boolean p1, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->a:Z

    .line 222
    return-void
.end method

.method public setScene(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "pass"    # Z

    .line 341
    :try_start_0
    const-string v0, "com.alipay.mobile.common.transportext.biz.mmtp.MMTPSceneManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    .local v1, "sceneManager":Ljava/lang/Class;
    move-object v1, v0

    const-string/jumbo v2, "setScene"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    nop

    .end local v1    # "sceneManager":Ljava/lang/Class;
    return-void

    .line 345
    :catchall_0
    move-exception v0

    .line 346
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "ExtTransportOffice"

    const-string/jumbo v2, "setScene exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method
