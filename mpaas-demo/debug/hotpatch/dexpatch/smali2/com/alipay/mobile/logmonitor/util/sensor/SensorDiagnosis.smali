.class public Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;
.super Ljava/lang/Object;
.source "SensorDiagnosis.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 12

    .line 29
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->b()[Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "sensorEventListeners":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 31
    .local v3, "sensorInfoBuild":Ljava/lang/StringBuilder;
    move-object v3, v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    array-length v2, v1

    const/4 v4, 0x0

    move-object v5, v0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 33
    .local v5, "object":Ljava/lang/Object;
    move-object v5, v6

    if-eqz v6, :cond_0

    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const/16 v6, 0x7c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .end local v5    # "object":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "sensorInfoStr":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v4

    sget-object v11, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v2

    invoke-interface/range {v4 .. v10}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_FOOTPRINT:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 42
    .end local v1    # "sensorEventListeners":[Ljava/lang/Object;
    .end local v2    # "sensorInfoStr":Ljava/lang/String;
    .end local v3    # "sensorInfoBuild":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 92
    .local v4, "field":Ljava/lang/reflect/Field;
    move-object v4, v5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    return-object v4

    .line 91
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_2
    return-object v2
.end method

.method private static b()[Ljava/lang/Object;
    .locals 11

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "sensorManagerClazz":Ljava/lang/Class;
    :try_start_0
    const-string v1, "android.hardware.SystemSensorManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 57
    :goto_0
    if-nez v0, :cond_0

    .line 59
    :try_start_1
    const-string v1, "android.hardware.SensorManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 62
    goto :goto_1

    .line 60
    :catch_1
    move-exception v1

    .line 65
    :cond_0
    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a:Ljava/lang/String;

    const-string/jumbo v4, "reflect sensorManagerClazz fail"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    return-object v1

    .line 71
    :cond_1
    :try_start_2
    const-string/jumbo v2, "sListeners"

    invoke-static {v0, v2}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v4, v3

    .line 73
    .local v4, "sListenerDelegates":Ljava/util/ArrayList;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v1

    .line 74
    .local v5, "size":I
    move v5, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    .local v2, "listeners":[Ljava/lang/Object;
    const/4 v6, 0x0

    move v7, v6

    move-object v6, v3

    .local v7, "i":I
    :goto_2
    if-ge v7, v5, :cond_2

    .line 76
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 77
    .local v3, "listenerDelegate":Ljava/lang/Object;
    move-object v3, v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getListener"

    new-array v10, v1, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 78
    .local v6, "getListenerMethod":Ljava/lang/reflect/Method;
    move-object v6, v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 80
    .local v8, "listener":Ljava/lang/Object;
    aput-object v8, v2, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .end local v3    # "listenerDelegate":Ljava/lang/Object;
    .end local v6    # "getListenerMethod":Ljava/lang/reflect/Method;
    .end local v8    # "listener":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 82
    .end local v7    # "i":I
    :cond_2
    return-object v2

    .line 83
    .end local v2    # "listeners":[Ljava/lang/Object;
    .end local v4    # "sListenerDelegates":Ljava/util/ArrayList;
    .end local v5    # "size":I
    :catch_2
    move-exception v2

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a:Ljava/lang/String;

    const-string/jumbo v4, "reflect sensorManagerClazz.sListeners fail"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    return-object v1
.end method
