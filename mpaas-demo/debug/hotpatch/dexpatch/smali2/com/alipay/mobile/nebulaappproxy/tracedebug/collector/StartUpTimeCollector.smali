.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;
.super Ljava/lang/Object;
.source "StartUpTimeCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Object;)J
    .locals 5
    .param p0, "source"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    .line 164
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 165
    .local v3, "value":Ljava/lang/Object;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_2

    instance-of v2, v3, Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 168
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 170
    :cond_1
    return-wide v0

    .line 166
    :cond_2
    :goto_0
    move-object v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 173
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-wide v0
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;
    .locals 1

    .line 42
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector$a;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->obtain()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 102
    .local v2, "traceDebugBean":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;
    move-object v2, v0

    const-string v3, "STARTUP"

    iput-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->name:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c()J

    move-result-wide v4

    .line 104
    .local v4, "time":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->startTime:Ljava/lang/String;

    .line 105
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->endTime:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 107
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-virtual {v0, v3, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/TDPageUtil;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "page"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->detail:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "send: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b()Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->covertToString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/TraceDebugBean;->recycle()V

    .line 113
    return-void
.end method

.method private static a(Ljava/util/Map;[Ljava/lang/Enum;)V
    .locals 4
    .param p0, "source"    # Ljava/util/Map;
    .param p1, "trackTypeConstants"    # [Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum;",
            ">;[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    array-length v2, p1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 154
    :goto_1
    if-eqz v0, :cond_2

    .line 155
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 156
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 157
    .local v2, "trackType":Ljava/lang/Enum;
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v2    # "trackType":Ljava/lang/Enum;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 120
    .local v2, "klass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 121
    array-length v3, v1

    const/4 v4, 0x0

    move-object v6, v0

    move-object v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v8, v1, v5

    .line 122
    .local v6, "field":Ljava/lang/reflect/Field;
    move-object v6, v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 131
    const-string v8, "com.alipay.mobile.liteprocess.perf.PerformanceLogger$TrackType"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 132
    .local v8, "trackType":Ljava/lang/Class;
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 133
    .local v7, "trackInfoMap":Ljava/util/Map;
    move-object v7, v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 134
    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    .line 135
    return-object v7

    .line 121
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "trackInfoMap":Ljava/util/Map;
    .end local v8    # "trackType":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "klass":Ljava/lang/Class;
    :cond_1
    goto :goto_1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static b()Z
    .locals 24

    .line 47
    const-string v0, "com.alipay.mobile.liteprocess.perf.PerformanceLogger"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 48
    .local v1, "trackInfoMap":Ljava/util/Map;
    const-string v0, "com.alipay.mobile.liteprocess.perf.PerformanceLogger$TrackType"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/ReflectUtil;->a(Ljava/lang/String;)[Ljava/lang/Enum;

    move-result-object v2

    .line 50
    .local v2, "trackTypeConstants":[Ljava/lang/Enum;
    const/4 v0, 0x0

    .line 52
    .local v0, "foundError":Z
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 53
    :cond_0
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a:Ljava/lang/String;

    const-string v4, "getPerformanceDataInWallet foundError=true.1"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    .line 58
    :cond_1
    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/utils/CollectionsUtil;->a([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a:Ljava/lang/String;

    const-string v4, "getPerformanceDataInWallet foundError=true.2"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    .line 63
    :cond_2
    move v3, v0

    .end local v0    # "foundError":Z
    .local v3, "foundError":Z
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 65
    return v4

    .line 69
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->b:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a(Ljava/util/Map;[Ljava/lang/Enum;)V

    .line 72
    :try_start_0
    const-string v5, "STARTUP_OPEN"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 73
    .local v5, "openAppTimeKey":Ljava/lang/Enum;
    :try_start_1
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v6

    .line 74
    .local v6, "openAppTime":J
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getPerformanceDataInWallet openAppTime "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v9, "STARTUP_DOM_READY"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Enum;

    .line 77
    .local v9, "domReadyTimeKey":Ljava/lang/Enum;
    invoke-static {v1, v9}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v10

    .line 78
    .local v10, "domReadyTime":J
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getPerformanceDataInWallet  domReadyTime "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v12, "STARTUP_PAGE_FINISH"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Enum;

    .line 81
    .local v12, "pageFinishTimeKey":Ljava/lang/Enum;
    invoke-static {v1, v12}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v13

    .line 82
    .local v13, "pageFinish":J
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "getPerformanceDataInWallet  pageFinish "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v4, "STARTUP_APP_LOADED"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 85
    .local v0, "appLoadedTimeKey":Ljava/lang/Enum;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a(Ljava/util/Map;Ljava/lang/Object;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 86
    .local v19, "appLoadedTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "getPerformanceDataInWallet  appLoadedTime "

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v0

    move-object v15, v1

    move-wide/from16 v0, v19

    .end local v1    # "trackInfoMap":Ljava/util/Map;
    .end local v19    # "appLoadedTime":J
    .local v0, "appLoadedTime":J
    .local v15, "trackInfoMap":Ljava/util/Map;
    .local v17, "appLoadedTimeKey":Ljava/lang/Enum;
    :try_start_2
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    move-object v4, v2

    move/from16 v18, v3

    .end local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v3    # "foundError":Z
    .local v4, "trackTypeConstants":[Ljava/lang/Enum;
    .local v18, "foundError":Z
    :try_start_3
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v2, v6

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v19

    .line 91
    .local v21, "startupTime":J
    move-wide/from16 v21, v2

    cmp-long v23, v2, v19

    if-gtz v23, :cond_4

    const/4 v2, 0x0

    return v2

    .line 92
    :cond_4
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;->a(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "startup: %s"

    const/4 v3, 0x1

    move-wide/from16 v19, v0

    .end local v0    # "appLoadedTime":J
    .restart local v19    # "appLoadedTime":J
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v0, v16

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    return v3

    .line 95
    .end local v5    # "openAppTimeKey":Ljava/lang/Enum;
    .end local v6    # "openAppTime":J
    .end local v9    # "domReadyTimeKey":Ljava/lang/Enum;
    .end local v10    # "domReadyTime":J
    .end local v12    # "pageFinishTimeKey":Ljava/lang/Enum;
    .end local v13    # "pageFinish":J
    .end local v17    # "appLoadedTimeKey":Ljava/lang/Enum;
    .end local v19    # "appLoadedTime":J
    .end local v21    # "startupTime":J
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v4    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v18    # "foundError":Z
    .restart local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v3    # "foundError":Z
    :catch_1
    move-exception v0

    move-object v4, v2

    move/from16 v18, v3

    .end local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v3    # "foundError":Z
    .restart local v4    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v18    # "foundError":Z
    goto :goto_1

    .end local v4    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v15    # "trackInfoMap":Ljava/util/Map;
    .end local v18    # "foundError":Z
    .restart local v1    # "trackInfoMap":Ljava/util/Map;
    .restart local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v3    # "foundError":Z
    :catch_2
    move-exception v0

    move-object v15, v1

    move-object v4, v2

    move/from16 v18, v3

    .end local v1    # "trackInfoMap":Ljava/util/Map;
    .end local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v3    # "foundError":Z
    .restart local v4    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v15    # "trackInfoMap":Ljava/util/Map;
    .restart local v18    # "foundError":Z
    goto :goto_1

    .end local v4    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v15    # "trackInfoMap":Ljava/util/Map;
    .end local v18    # "foundError":Z
    .restart local v1    # "trackInfoMap":Ljava/util/Map;
    .restart local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v3    # "foundError":Z
    :catch_3
    move-exception v0

    move-object v15, v1

    move-object v4, v2

    move/from16 v18, v3

    .end local v1    # "trackInfoMap":Ljava/util/Map;
    .end local v2    # "trackTypeConstants":[Ljava/lang/Enum;
    .end local v3    # "foundError":Z
    .restart local v4    # "trackTypeConstants":[Ljava/lang/Enum;
    .restart local v15    # "trackInfoMap":Ljava/util/Map;
    .restart local v18    # "foundError":Z
    const/4 v5, 0x0

    :goto_1
    move-object v0, v5

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
