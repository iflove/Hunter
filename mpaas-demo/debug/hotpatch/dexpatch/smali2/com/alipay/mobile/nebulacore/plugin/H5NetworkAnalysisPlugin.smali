.class public Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5NetworkAnalysisPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NetworkAnalysisPlugin"

.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x1"    # Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    .param p1, "x2"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x3"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 27
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->b(Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method private static b(Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 7
    .param p0, "result"    # Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    .param p1, "resultJson"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 85
    if-eqz p0, :cond_3

    .line 86
    iget v0, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->avgConsumedTimeMs:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "avgConsumedTimeMs"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    .line 90
    .local v0, "loss":F
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->loss:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 92
    .local v3, "tmp":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    move v0, v2

    .line 96
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "H5NetworkAnalysisPlugin"

    const-string v4, "exception detail"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "##0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loss"

    invoke-virtual {p1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->timePerRound:[Ljava/lang/Float;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->timePerRound:[Ljava/lang/Float;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 101
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 102
    .local v3, "timePerRound":Lcom/alibaba/fastjson/JSONArray;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;->timePerRound:[Ljava/lang/Float;

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 103
    .local v6, "time":Ljava/lang/Float;
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v6    # "time":Ljava/lang/Float;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    .local v1, "context":Landroid/content/Context;
    const-string v4, "timePerRound"

    invoke-virtual {p1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "networkType"

    invoke-virtual {p1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "timeStamp"

    invoke-virtual {p1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v0    # "loss":F
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v3    # "timePerRound":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    goto :goto_2

    .line 111
    :cond_3
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_2
    invoke-interface {p2, p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 114
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 15
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 43
    move-object/from16 v6, p2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "action":Ljava/lang/String;
    const-string v0, "ping"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v0

    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    .local v8, "param":Lcom/alibaba/fastjson/JSONObject;
    const/4 v9, 0x1

    if-eqz v0, :cond_3

    .line 47
    const-string v0, "host"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "host":Ljava/lang/String;
    const/4 v0, 0x3

    const-string v1, "numOfRound"

    invoke-static {v8, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v11

    .line 49
    .local v11, "numOfRound":I
    const-string v0, "useCached"

    invoke-static {v8, v0, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v12

    .line 50
    .local v12, "useCached":Z
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 51
    .local v4, "resultJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-gtz v11, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    if-eqz v12, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v6, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 59
    return v9

    .line 61
    :cond_1
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v13

    new-instance v14, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v10

    move v3, v11

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v1, p1

    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal arguments(host:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " numOfRound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NetworkAnalysisPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v1, p1

    invoke-interface {v6, v1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 55
    return v9

    .line 46
    .end local v4    # "resultJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "host":Ljava/lang/String;
    .end local v11    # "numOfRound":I
    .end local v12    # "useCached":Z
    :cond_3
    move-object/from16 v1, p1

    .line 78
    :goto_1
    return v9

    .line 80
    .end local v8    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    move-object/from16 v1, p1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 38
    const-string v0, "ping"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 39
    return-void
.end method
