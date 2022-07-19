.class public final Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;
.super Ljava/lang/Object;
.source "PreloadAiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

.field private static b:J

.field private static c:I

.field private static d:Z

.field public static sAiDecisionType:I

.field public static sCloudId:Ljava/lang/String;

.field public static sDecisionTime:J

.field public static sExtraInfo:Ljava/lang/String;

.field public static sModelReady:Z

.field public static sRuleTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->UNEXECUTED:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sAiDecisionType:I

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->b:J

    .line 43
    const/16 v0, 0x28

    sput v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->c:I

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->d:Z

    .line 45
    sput-boolean v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sRuleTest:Z

    .line 46
    sput-boolean v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sModelReady:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static a()I
    .locals 7

    .line 175
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->UNEXECUTED:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-ne v0, v1, :cond_2

    .line 177
    :cond_0
    sget v0, Lcom/alipay/mobile/liteprocess/Config;->B:I

    if-lez v0, :cond_1

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->b:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget v3, Lcom/alipay/mobile/liteprocess/Config;->B:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 179
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    goto :goto_0

    .line 181
    :cond_1
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 185
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makePreloadDecision sAiAssistantState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const/4 v2, -0x1

    if-eq v0, v1, :cond_8

    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 189
    :cond_3
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_PRELOAD_NOW:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->RULE_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 191
    :cond_4
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_PRELOAD_LATER:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-ne v0, v1, :cond_6

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getClientCurrentStartupTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget v2, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->c:I

    add-int/lit8 v4, v2, -0x5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    .line 193
    return v3

    .line 195
    :cond_5
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getTimestampInfo()Lcom/alipay/mobile/monitor/api/TimestampInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/monitor/api/TimestampInfo;->getClientCurrentStartupTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    return v1

    .line 198
    :cond_6
    return v2

    .line 190
    :cond_7
    :goto_1
    return v3

    .line 188
    :cond_8
    :goto_2
    return v2
.end method

.method public static getAiAssistantState()Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;
    .locals 1

    .line 202
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    return-object v0
.end method

.method public static makePreloadDecision()I
    .locals 13

    const-string v0, "laterTime"

    const-string/jumbo v1, "preloadLater"

    const-string/jumbo v2, "preloadNow"

    const-string v3, "CONFIG"

    const-string v4, "CLOUDID"

    const-string v5, "MD5"

    const-string v6, "LiteProcess"

    .line 83
    const/4 v7, 0x0

    :try_start_0
    sget-object v8, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v9, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->UNEXECUTED:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-eq v8, v9, :cond_0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a()I

    move-result v0

    return v0

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sDecisionTime:J

    .line 87
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v8

    const-class v9, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/base/config/ConfigService;

    move-object v9, v7

    .line 88
    .local v9, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    const-string/jumbo v10, "xNN_liteprocess_ai"

    invoke-virtual {v8, v10, v7}, Lcom/alipay/mobile/base/config/ConfigService;->getConfigForAB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v10, v7

    .line 93
    .local v10, "config":Ljava/lang/String;
    move-object v10, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 94
    invoke-static {v10}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    move-object v11, v7

    .line 95
    .local v11, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v11, v8

    if-eqz v8, :cond_a

    .line 96
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v11, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 97
    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 98
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 105
    const-string v8, "decisionType"

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sAiDecisionType:I

    .line 106
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sCloudId:Ljava/lang/String;

    .line 107
    const-string/jumbo v4, "ruleTest"

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sRuleTest:Z

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "makePreloadDecision cloud id = "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sCloudId:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-boolean v4, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sRuleTest:Z

    if-eqz v4, :cond_1

    .line 110
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sCloudId:Ljava/lang/String;

    invoke-virtual {v11, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobileaix/MobileAiXManager;->checkModelDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sModelReady:Z

    goto/16 :goto_3

    .line 115
    :cond_1
    sget-object v4, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sCloudId:Ljava/lang/String;

    .line 116
    invoke-virtual {v11, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sAiDecisionType:I

    const/4 v12, 0x2

    if-ne v8, v12, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 115
    :goto_0
    invoke-static {v4, v5, v3, v8}, Lcom/alipay/mobileaix/MobileAiXManager;->executeModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;

    move-result-object v3

    move-object v4, v7

    .line 117
    .local v4, "result":Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;
    move-object v4, v3

    invoke-virtual {v3}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;->getResultCode()Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;->EXECUTE_SUCCESS:Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;

    if-ne v3, v5, :cond_5

    sget v3, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sAiDecisionType:I

    if-nez v3, :cond_5

    .line 118
    invoke-virtual {v4}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;->getResult()F

    move-result v3

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    .line 119
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_PRELOAD_NOW:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v4}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;->getResult()F

    move-result v2

    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    .line 121
    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_PRELOAD_LATER:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sput-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    .line 122
    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->c:I

    goto :goto_1

    .line 124
    :cond_4
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->AI_DONOT_PRELOAD:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {v4}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;->getResultCode()Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;->MODEL_NOT_DOWNLOAD:Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;

    if-ne v0, v1, :cond_6

    .line 127
    sget-object v0, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;->MODEL_NOT_DOWNLOAD:Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;

    invoke-virtual {v0}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sExtraInfo:Ljava/lang/String;

    goto :goto_1

    .line 129
    :cond_6
    invoke-virtual {v4}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;->getResultCode()Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;->EXECUTE_FAILED:Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResultCode;

    if-ne v0, v1, :cond_7

    .line 130
    const-string/jumbo v0, "model_execute_failed"

    invoke-virtual {v4}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/alipay/mobileaix/MobileAiXLogger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_7
    invoke-virtual {v4}, Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sExtraInfo:Ljava/lang/String;

    .line 135
    :goto_1
    const-string/jumbo v0, "supportCacheValidTime"

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobileaix/feature/RealTimeFeatureExtractor;->updateFeatureSupportData(I)V

    .line 136
    const-string v0, "GROUPNAMES"

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v1, v7

    .line 137
    .local v1, "groups":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 139
    .local v0, "groupList":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 140
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    .end local v2    # "j":I
    :cond_8
    const-string/jumbo v2, "offlineCacheValidTime"

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v7, v2}, Lcom/alipay/mobileaix/feature/OfflineFeatureManager;->updateOfflineFeature(Ljava/util/List;Lcom/alipay/mobileaix/feature/OfflineFeatureManager$FeatureUpdateListener;I)V

    .line 145
    .end local v0    # "groupList":Ljava/util/List;
    .end local v1    # "groups":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "result":Lcom/alipay/mobileaix/MobileAiXManager$MobileAiXResult;
    :cond_9
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "makePreloadDecision end"

    invoke-interface {v0, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v11    # "jo":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->UNEXECUTED:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-ne v0, v1, :cond_b

    .line 152
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_tiny_app_start"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->b:J

    .line 166
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 167
    .end local v9    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    .end local v10    # "config":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 168
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "makePreloadDecision error!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "make_preload_decision_error"

    invoke-static {v2, v7, v1}, Lcom/alipay/mobileaix/MobileAiXLogger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v1, -0x1

    return v1
.end method

.method public static onTinyAppStart()V
    .locals 4

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->b:J

    .line 207
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->b:J

    const-string v3, "last_tiny_app_start"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method public static recordDecisionData()V
    .locals 2

    .line 211
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->d:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->a:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    sget-object v1, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;->UNEXECUTED:Lcom/alipay/mobile/liteprocess/PreloadAiAssistant$AiAssistantState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder;->recordDecisionData()V

    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->d:Z

    .line 217
    return-void

    .line 212
    :cond_1
    :goto_0
    return-void
.end method
