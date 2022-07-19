.class public Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;
.super Ljava/lang/Object;
.source "MonitorLoggerUtils.java"


# static fields
.field public static final LIB_VERSION:Ljava/lang/String; = "LIBV"

.field public static LIB_VERSION_BIFROST:Ljava/lang/String; = null

.field public static LIB_VERSION_BIFROST_BDRD:Ljava/lang/String; = null

.field public static LIB_VERSION_BIFROST_HTTP2:Ljava/lang/String; = null

.field public static LIB_VERSION_BIFROST_HTTP2_BDRD:Ljava/lang/String; = null

.field public static LIB_VERSION_LOCAL_AMNET:Ljava/lang/String; = null

.field public static LIB_VERSION_OLD:Ljava/lang/String; = null

.field public static LIB_VERSION_OLD_BDRD:Ljava/lang/String; = null

.field public static final LOG_LEVEL_DEBUG:Ljava/lang/String; = "DEBUG"

.field public static final LOG_LEVEL_FATAL:Ljava/lang/String; = "FATAL"

.field public static final LOG_LEVEL_INFO:Ljava/lang/String; = "INFO"

.field public static final NETTUNNEL:Ljava/lang/String; = "NETTUNNEL"

.field public static final NETTUNNEL_ULib_h2:Ljava/lang/String; = "ULib_h2"

.field public static final PROCESS_ID:Ljava/lang/String; = "pid"

.field public static final PROCESS_NAME:Ljava/lang/String; = "procname"

.field public static final REPORT_BIZ_NAME:Ljava/lang/String; = "network"

.field private static a:I

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "40"

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_OLD:Ljava/lang/String;

    .line 42
    const-string v0, "41"

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST:Ljava/lang/String;

    .line 43
    const-string v0, "45"

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST_HTTP2:Ljava/lang/String;

    .line 49
    const-string v0, "42"

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_OLD_BDRD:Ljava/lang/String;

    .line 50
    const-string v0, "43"

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST_BDRD:Ljava/lang/String;

    .line 51
    const-string v0, "47"

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST_HTTP2_BDRD:Ljava/lang/String;

    .line 54
    const-string v0, "100"

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_LOCAL_AMNET:Ljava/lang/String;

    .line 101
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a:I

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 3
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 199
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam2()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 200
    .local v1, "logLevel":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "DEBUG"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setLoggerLevel(I)V

    return-void

    .line 202
    :cond_0
    const-string v0, "INFO"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setLoggerLevel(I)V

    return-void

    .line 204
    :cond_1
    const-string v0, "FATAL"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setLoggerLevel(I)V

    .line 207
    :cond_2
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p1, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 179
    const-string v0, "MonitorLoggerUtils"

    if-nez p1, :cond_0

    .line 180
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 181
    return-void

    .line 184
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->loggerLevel:Ljava/lang/String;

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    :try_start_0
    iget-object v1, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->loggerLevel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setLoggerLevel(I)V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setLogLevel] loggerLevel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->loggerLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    return-void

    .line 190
    :catchall_0
    move-exception v1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[uploadPerfLog] parse logger level fail. loggerLevel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->loggerLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 196
    return-void
.end method

.method private static a()Z
    .locals 2

    .line 387
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->UPLOAD_ATONCE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 388
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    return v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static b()I
    .locals 3

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->LOG_UPLOAD_SIZE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 401
    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)I

    move-result v0

    .line 402
    return v0
.end method

.method private static b(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 4
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 260
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->c(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 262
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->USE_LIBV:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 263
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "LA"

    const-string v3, "LIBV"

    if-eqz v0, :cond_1

    .line 267
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->d(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 268
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->e(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 271
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_LOCAL_AMNET:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_LOCAL_AMNET:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    return-void

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method private static c(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 4
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 301
    if-eqz p0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    sget v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a:I

    if-gez v0, :cond_1

    .line 306
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a:I

    .line 308
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b:Ljava/lang/String;

    .line 311
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 312
    .local v1, "procName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    const-string/jumbo v0, "unknown"

    move-object v1, v0

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "pid"

    sget v3, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "procname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    nop

    .end local v1    # "procName":Ljava/lang/String;
    return-void

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPid and getProcessName error. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitorLoggerUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 302
    :cond_4
    :goto_0
    return-void
.end method

.method private static d(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 4
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 329
    const-string v0, "LIBV"

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, "libVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnableBifrost()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_OLD:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 338
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    return-void

    .line 342
    :cond_2
    sget-object v2, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_OLD:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v1    # "libVersion":Ljava/lang/String;
    :cond_3
    return-void

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MonitorLoggerUtils"

    const-string/jumbo v2, "setAmnetLibVersion exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static e(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 4
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    const-string v0, "LIBV"

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 358
    .local v2, "libVersion":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isDisableBifrostRpcDowngrade()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    return-void

    .line 366
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_OLD:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_OLD_BDRD:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 369
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST_BDRD:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 372
    :cond_3
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST_HTTP2:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->LIB_VERSION_BIFROST_HTTP2_BDRD:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v2    # "libVersion":Ljava/lang/String;
    :cond_4
    return-void

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MonitorLoggerUtils"

    const-string/jumbo v2, "updateAmnetLibVersion exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public static getLogBizType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "subType"    # Ljava/lang/String;

    .line 107
    const-string v0, "MASS"

    const-string v1, "MMTP"

    const-string/jumbo v2, "network"

    const-string v3, "RPC"

    :try_start_0
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    return-object v3

    .line 111
    :cond_0
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "TCP_STACK"

    .line 112
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 116
    :cond_1
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "DJG"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "RSRC"

    .line 117
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 121
    :cond_2
    const-string v0, "H5"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const-string v0, "NETWORKH5"

    return-object v0

    .line 125
    :cond_3
    const-string v0, "HTTPDNS"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SignalState"

    .line 126
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "NetDiago"

    .line 127
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TunnelChange"

    .line 128
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "NETQOS"

    .line 129
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "NetChange"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 133
    :cond_4
    const-string v0, "LOG"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    const-string/jumbo v0, "mdaplog"

    return-object v0

    .line 137
    :cond_5
    return-object v2

    .line 130
    :cond_6
    :goto_0
    const-string v0, "MISC"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 118
    :cond_7
    :goto_1
    return-object v0

    .line 113
    :cond_8
    :goto_2
    return-object v1

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getLogBizType,ex:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MonitorLoggerUtils"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object v2
.end method

.method public static uploadAutoDiagLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 10
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 238
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 239
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "SUBTYPE"

    const-string v2, "DIAG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isVip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_FOOTPRINT:Ljava/lang/String;

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->setUploadSize(Ljava/lang/String;I)V

    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    const-string/jumbo v4, "network"

    .line 246
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam1()Ljava/lang/String;

    move-result-object v6

    .line 247
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v9

    .line 246
    invoke-interface/range {v3 .. v9}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    return-void

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "MonitorLoggerUtils"

    const-string/jumbo v2, "uploadAutoDiagLog exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public static uploadDiagLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 4
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string v1, "SUBTYPE"

    const-string v2, "DIAG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->getLogBizType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "bizType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_NETWORK:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 224
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_NETWORK:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v0    # "bizType":Ljava/lang/String;
    return-void

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "MonitorLoggerUtils"

    const-string/jumbo v2, "uploadDiagLog exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public static uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 1
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 147
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 148
    return-void
.end method

.method public static uploadPerfLog(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3
    .param p0, "pf"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p1, "transportContext"    # Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 157
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isVip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_NETWORK:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->setUploadSize(Ljava/lang/String;I)V

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->b(Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->getLogBizType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "bizType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 169
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/MonitorLoggerUtils;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v0    # "bizType":Ljava/lang/String;
    return-void

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "MonitorLoggerUtils"

    const-string/jumbo v2, "uploadPerfLog exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method
