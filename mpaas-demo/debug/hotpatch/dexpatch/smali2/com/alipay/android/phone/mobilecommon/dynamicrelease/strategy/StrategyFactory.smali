.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;
.super Ljava/lang/Object;
.source "StrategyFactory.java"


# static fields
.field private static volatile a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/SharedPreferences;

.field private d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

.field private e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "DynamicRelease"

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->b:Landroid/content/Context;

    .line 32
    const-string v1, "DynamicReleaseTools"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->c:Landroid/content/SharedPreferences;

    .line 33
    const-string v2, "dynamicrelease_config"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 34
    .local v2, "configJson":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "strategyDef:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-class v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->a()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->a()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    .line 48
    :cond_1
    return-void
.end method

.method private static a()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;
    .locals 16

    .line 209
    const/4 v0, 0x0

    .local v0, "strategyDef":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;-><init>()V

    .line 210
    move-object v0, v1

    sget-wide v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a;->a:J

    iput-wide v2, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->duration:J

    .line 211
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    const/4 v11, 0x4

    new-array v9, v11, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const/4 v12, 0x0

    aput-object v3, v9, v12

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const/4 v13, 0x1

    aput-object v3, v9, v13

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const/4 v14, 0x2

    aput-object v3, v9, v14

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    const/4 v15, 0x3

    aput-object v3, v9, v15

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x5

    const/16 v8, 0xa

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;-><init>(JJI[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_SYNC:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    new-array v9, v11, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v12

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v13

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v14

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v15

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;-><init>(JJI[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_IDLE:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    new-array v9, v11, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v12

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v13

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v14

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v15

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;-><init>(JJI[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_BACKGROUND:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    new-array v9, v11, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v12

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v13

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v14

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v15

    const-wide/16 v6, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;-><init>(JJI[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_USER:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    new-array v9, v13, [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    aput-object v3, v9, v12

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;-><init>(JJI[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v2

    const v3, 0x4c4b40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v2

    const v3, 0x16e360

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v2

    const v3, 0xf4240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7a120

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iput-boolean v13, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->setOnlyWifiRequest:Z

    .line 250
    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    .line 20
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "tmp":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;
    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    if-nez v2, :cond_0

    .line 55
    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    .line 57
    .end local v1    # "tmp":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 60
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->c:Landroid/content/SharedPreferences;

    const-string v1, "dynamicrelease_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    const-string v0, "DynamicRelease"

    const-string/jumbo v1, "strategy clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->a()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    .line 94
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$2;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;)V

    const-string/jumbo v2, "strategy_clear"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public getDelay(I)J
    .locals 4
    .param p1, "when"    # I

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 109
    .local v1, "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 110
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->delay:J

    return-wide v2

    .line 109
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 114
    .restart local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 115
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->delay:J

    return-wide v2

    .line 112
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_2
    :goto_0
    nop

    .line 119
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDownloadDelay(I)J
    .locals 4
    .param p1, "when"    # I

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 125
    .local v1, "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 126
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->downloadDelay:J

    return-wide v2

    .line 125
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 130
    .restart local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 131
    iget-wide v2, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->downloadDelay:J

    return-wide v2

    .line 128
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_2
    :goto_0
    nop

    .line 135
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxDiffSize()I
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "netLevel":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v3, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 194
    .local v2, "diffSize":Ljava/lang/Integer;
    move-object v2, v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1

    .line 195
    .end local v0    # "netLevel":Ljava/lang/String;
    .end local v2    # "diffSize":Ljava/lang/Integer;
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->b(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "netLevel":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v3, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 198
    .restart local v2    # "diffSize":Ljava/lang/Integer;
    move-object v2, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    return v1

    .line 201
    .end local v0    # "netLevel":Ljava/lang/String;
    .end local v2    # "diffSize":Ljava/lang/Integer;
    :cond_3
    return v1
.end method

.method public getMaxRetry(I)I
    .locals 3
    .param p1, "when"    # I

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 141
    .local v1, "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 142
    iget v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->maxRetry:I

    return v0

    .line 145
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 147
    .restart local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 148
    iget v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->maxRetry:I

    return v0

    .line 152
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestDuration()J
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-wide v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->duration:J

    return-wide v0

    .line 174
    :cond_1
    :goto_0
    sget-wide v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a;->a:J

    return-wide v0
.end method

.method public getSetOnlyWifiRequest()Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    const-string v1, "DynamicRelease"

    if-nez v0, :cond_0

    .line 182
    const-string v0, "getSetOnlyWifiRequest() got empty strategyDef, return false"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getSetOnlyWifiRequest() got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-boolean v2, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->setOnlyWifiRequest:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-boolean v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->setOnlyWifiRequest:Z

    return v0
.end method

.method public getTypes(I)Ljava/util/List;
    .locals 3
    .param p1, "when"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 158
    .local v1, "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->types:Ljava/util/List;

    return-object v0

    .line 162
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;

    .line 164
    .restart local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->types:Ljava/util/List;

    return-object v0

    .line 169
    .end local v1    # "timingConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getUserTag()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->userTag:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1, "configJson"    # Ljava/lang/String;

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "dynamicrelease_config"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "strategy update:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->d:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;Ljava/lang/String;)V

    const-string/jumbo v2, "strategy_update"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    return-void
.end method
