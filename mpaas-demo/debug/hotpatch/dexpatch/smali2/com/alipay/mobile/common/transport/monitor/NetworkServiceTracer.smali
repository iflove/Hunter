.class public Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;
.super Ljava/lang/Object;
.source "NetworkServiceTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;,
        Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;
    }
.end annotation


# static fields
.field public static final KEY_LAST_STATE_COUNT:Ljava/lang/String; = "last_state_count"

.field public static final KEY_LAST_STATE_TS:Ljava/lang/String; = "last_state_ts"

.field public static final REPORT_BIZ_NAME:Ljava/lang/String; = "BIZ_NETWORK"

.field public static final REPORT_SUB_NAME_DJG:Ljava/lang/String; = "DJG"

.field public static final REPORT_SUB_NAME_H5:Ljava/lang/String; = "H5"

.field public static final REPORT_SUB_NAME_NBNET_UP:Ljava/lang/String; = "NBNET_UP"

.field public static final REPORT_SUB_NAME_RPC:Ljava/lang/String; = "RPC"

.field public static final REPORT_SUB_NAME_RSRC:Ljava/lang/String; = "RSRC"

.field public static final TAG:Ljava/lang/String; = "NS_TRACER"

.field public static final TRACE_STATE_FILE:Ljava/lang/String; = "NS_Tracer_Data"

.field private static c:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;


# instance fields
.field private a:J

.field private b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

.field public maxErrorCount:I


# direct methods
.method private constructor <init>()V
    .locals 12

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->maxErrorCount:I

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 82
    .local v0, "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NETSERVICE_REPORT_PERIOD:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a:J

    .line 83
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NETSERVICE_REPORT_ERRCOUNT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->maxErrorCount:I

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a()V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 88
    .local v3, "ctx":Landroid/content/Context;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x4

    const-string v4, "NS_Tracer_Data"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    .local v1, "spf":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 92
    .local v2, "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    move-object v2, v8

    iget-object v9, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->getTSKeyByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-interface {v1, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    .line 93
    iget-object v8, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->getCountKeyByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    .line 91
    .end local v2    # "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "spf":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 97
    :cond_1
    const-string v1, "NS_TRACER"

    const-string v2, "Context is not intialzied yet"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    .locals 2
    .param p1, "index"    # Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static a(B)Ljava/lang/String;
    .locals 2
    .param p0, "bizType"    # B

    .line 204
    const-string v0, ""

    .line 205
    .local v0, "reportSubName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 206
    const-string v0, "RPC"

    goto :goto_0

    .line 207
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 208
    const-string v0, "H5"

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 210
    const-string v0, "RSRC"

    goto :goto_0

    .line 211
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 212
    const-string v0, "DJG"

    goto :goto_0

    .line 213
    :cond_3
    const/4 v1, 0x6

    if-ne p0, v1, :cond_4

    .line 214
    const-string v0, "NBNET_UP"

    .line 216
    :cond_4
    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 6

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    .line 105
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RPC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;-><init>(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;)V

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_H5:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;-><init>(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;)V

    aput-object v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RSRC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;-><init>(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;)V

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_DJG:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;-><init>(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;)V

    aput-object v2, v0, v1

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_NBNET_UP:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;-><init>(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;)V

    aput-object v2, v0, v1

    .line 111
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RPC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v0

    .line 112
    .local v0, "rpcItem":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_H5:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v1

    .line 113
    .local v1, "h5Item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    sget-object v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RSRC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v2

    .line 114
    .local v2, "rsrcItem":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    sget-object v3, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_DJG:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v3

    .line 115
    .local v3, "djgItem":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    sget-object v4, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_NBNET_UP:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v4

    .line 117
    .local v4, "nbnetUpItem":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    const-string v5, "RPC"

    iput-object v5, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    .line 118
    const-string v5, "H5"

    iput-object v5, v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    .line 119
    const-string v5, "RSRC"

    iput-object v5, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    .line 120
    const-string v5, "DJG"

    iput-object v5, v3, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    .line 121
    const-string v5, "NBNET_UP"

    iput-object v5, v4, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;)V
    .locals 5
    .param p1, "item"    # Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    .line 318
    iget v0, p1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "strErrorCode":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 320
    .local v2, "dataMap":Ljava/util/Map;
    move-object v2, v1

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorMsg:Ljava/lang/String;

    const-string v4, "Last_error_msg"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-wide v3, p1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Last_error_ts"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    .line 323
    const-string v4, "BIZ_NETWORK"

    invoke-interface {v1, v4, v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "--->mtBizReport invoked, subname="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NS_TRACER"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    iput v1, p1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    .line 327
    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    .line 330
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b()V

    .line 331
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "reportSubName"    # Ljava/lang/String;
    .param p2, "extMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v0

    .line 271
    .local v0, "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    const-string v1, "Operation-Type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "opeType":Ljava/lang/String;
    const-string v2, "RPC"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    const-string v2, "NS_TRACER"

    const-string v3, "import rpc ex,report rignt now"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NETSERVICE_UPERR_REPORT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 281
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "uploadSwitch":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    const-string v3, "DJG_UP_BIZ"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 285
    .local v3, "djgUpBiz":Ljava/lang/String;
    const-string v4, "DJG"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1"

    .line 286
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "2"

    .line 287
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    :cond_1
    const-string v4, "NS_TRACER"

    const-string v5, "DJG up ex,report rignt now"

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 293
    :cond_2
    :try_start_2
    const-string v4, "NBNET_UP"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    const-string v4, "NS_TRACER"

    const-string/jumbo v5, "nbnet_up up ex, report rignt now"

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 303
    .end local v3    # "djgUpBiz":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 304
    .local v3, "nowTS":J
    iget v5, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    iget v6, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->maxErrorCount:I

    if-le v5, v6, :cond_4

    iget-wide v5, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    .line 305
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;)V

    goto :goto_0

    .line 307
    :cond_4
    const-string v5, "NS_TRACER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Waiting for more error happened,subtype="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from begin time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    sub-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    .end local v0    # "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    .end local v1    # "opeType":Ljava/lang/String;
    .end local v2    # "uploadSwitch":Ljava/lang/String;
    .end local v3    # "nowTS":J
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_4
    const-string v1, "NS_TRACER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryReport ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    .end local v0    # "ex":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 267
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;
    .end local p1    # "reportSubName":Ljava/lang/String;
    .end local p2    # "extMap":Ljava/util/Map;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "opeType"    # Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NETSERVICE_RPC_LIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 225
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 226
    .local v1, "rpcList":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 227
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 229
    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "importRpc.opeType: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NS_TRACER"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return v2
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    .locals 2
    .param p1, "reportSubName"    # Ljava/lang/String;

    .line 246
    const-string v0, "RPC"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RPC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 248
    :cond_0
    const-string v0, "H5"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_H5:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 250
    :cond_1
    const-string v0, "RSRC"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_RSRC:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 252
    :cond_2
    const-string v0, "DJG"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_DJG:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 254
    :cond_3
    const-string v0, "NBNET_UP"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->TRACE_ITEM_NBNET_UP:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$TRACE_ITEM_INDEX;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 257
    :cond_4
    const-string v0, "NS_TRACER"

    const-string v1, "getTraceItemByName,networkType unknown error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 337
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$1;-><init>(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLazy(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    return-void

    .line 349
    :catchall_0
    move-exception v0

    .line 350
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startNetworkDiagnose ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NS_TRACER"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .param p1, "reportSubName"    # Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b:[Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    const-string v1, "NS_TRACER"

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    const/4 v2, 0x4

    .line 367
    const-string v3, "NS_Tracer_Data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 369
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v2

    .line 371
    .local v2, "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "trying to persistTrace Item: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " first error Time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " error count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->getTSKeyByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v3, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->getCountKeyByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    return-void

    .line 362
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    :cond_1
    :goto_0
    const-string v0, "Nothing to save..."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;
    .locals 2

    .line 70
    const-class v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    .line 74
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    return-object v0

    .line 74
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearErrorByType(B)V
    .locals 6
    .param p1, "bizType"    # B

    const-string v0, "NS_TRACER"

    .line 174
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 176
    .local v3, "reportSubName":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "clearErrorByType unknown bizType,ignored"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v1

    .line 183
    .local v2, "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x0

    iput v1, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    .line 185
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    .line 186
    iput v1, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorCode:I

    .line 187
    const-string v1, ""

    iput-object v1, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorMsg:Ljava/lang/String;

    .line 188
    iput-wide v4, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorTime:J

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Clearing error state for subtype:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->networkType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v2    # "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    .end local v3    # "reportSubName":Ljava/lang/String;
    :cond_1
    return-void

    .line 192
    :catchall_0
    move-exception v1

    .line 193
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "clearErrorByType exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public getCountKeyByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_last_state_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTSKeyByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_last_state_ts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized recordError(BILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "bizType"    # B
    .param p2, "errCode"    # I
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p4, "extMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_0
    const-string v0, "NS_TRACER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--->Exception reported to NSTracer, type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "NS_TRACER"

    const-string/jumbo v1, "network isn\'t available,need\'t record error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_2
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 141
    .local v1, "reportSubName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "NS_TRACER"

    const-string/jumbo v2, "recordError unknown bizType,ignored"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->b(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;

    move-result-object v0

    .line 148
    .local v0, "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 149
    .local v2, "nowTS":J
    if-eqz v0, :cond_3

    .line 150
    iget v4, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    if-nez v4, :cond_2

    .line 151
    iput-wide v2, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->firstErrorTime:J

    .line 153
    :cond_2
    iget v4, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->errorCount:I

    .line 154
    iput p2, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorCode:I

    .line 155
    iput-object p3, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorMsg:Ljava/lang/String;

    .line 156
    iput-wide v2, v0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->lastErrorTime:J

    .line 159
    invoke-direct {p0, v1, p4}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 161
    :cond_3
    :try_start_4
    const-string v4, "NS_TRACER"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Empty item for tunnel type"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    .end local v0    # "item":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
    .end local v1    # "reportSubName":Ljava/lang/String;
    .end local v2    # "nowTS":J
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_5
    const-string v1, "NS_TRACER"

    const-string/jumbo v2, "recordError exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    .end local v0    # "ex":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 130
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;
    .end local p1    # "bizType":B
    .end local p2    # "errCode":I
    .end local p3    # "errMsg":Ljava/lang/String;
    .end local p4    # "extMap":Ljava/util/Map;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
