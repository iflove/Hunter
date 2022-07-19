.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;
.super Ljava/lang/Object;
.source "ANRUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 14

    .line 65
    const-string v0, "getThreadsStackTrace"

    const-string v1, "\n"

    const-string v2, "ANRUtil"

    const-string v3, ""

    .line 67
    .local v3, "trace":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "ANR thread dump start"

    invoke-interface {v5, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 70
    .local v5, "stackTracesBuf":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    .line 71
    .local v4, "allStackTraces":Ljava/util/Map;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .local v7, "entry":Ljava/util/Map$Entry;
    :try_start_2
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Thread;

    .line 74
    .local v8, "targetThread":Ljava/lang/Thread;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/StackTraceElement;

    .line 75
    .local v9, "stackTraces":[Ljava/lang/StackTraceElement;
    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, "threadName":Ljava/lang/String;
    const/16 v11, 0xa

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const-string v11, "ThreadName="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    array-length v11, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    aget-object v13, v9, v12

    .line 80
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "traces":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    nop

    .end local v13    # "traces":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v8    # "targetThread":Ljava/lang/Thread;
    .end local v9    # "stackTraces":[Ljava/lang/StackTraceElement;
    .end local v10    # "threadName":Ljava/lang/String;
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v8

    .line 86
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v2, v0, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 91
    .end local v4    # "allStackTraces":Ljava/util/Map;
    :cond_1
    goto :goto_2

    .line 89
    :catchall_1
    move-exception v1

    .line 90
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ANR thread dump end"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "All Threads Traces: ###"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 99
    .end local v5    # "stackTracesBuf":Ljava/lang/StringBuilder;
    :cond_2
    goto :goto_4

    .line 97
    :catchall_2
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catchall_3
    move-exception v0

    :goto_3
    move-object v0, v4

    .line 98
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "ANR thread dump failed"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const-string/jumbo v3, "no threads trace"

    .line 104
    :cond_3
    return-object v3
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p0, "param"    # Ljava/lang/Throwable;

    .line 109
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.common.logging.impl.StatisticalExceptionHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 110
    .local v2, "exceptionHandlerClass":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 111
    .local v1, "getInstance":Ljava/lang/reflect/Method;
    const-string v3, "getExternalExceptionInfo"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 112
    .local v3, "getExternalExceptionInfo":Ljava/lang/reflect/Method;
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 113
    .local v6, "exceptionHandler":Ljava/lang/Object;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 114
    .end local v1    # "getInstance":Ljava/lang/reflect/Method;
    .end local v2    # "exceptionHandlerClass":Ljava/lang/Class;
    .end local v3    # "getExternalExceptionInfo":Ljava/lang/reflect/Method;
    .end local v6    # "exceptionHandler":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 115
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ANRUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "trace"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    return v0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 36
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_1
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ANRUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .line 123
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->c()Landroid/app/Activity;

    move-result-object v1

    move-object v2, v0

    .line 125
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 126
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    return-object v0

    .line 133
    :cond_1
    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 134
    .end local v2    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    .line 135
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ANRUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "trace"    # Ljava/lang/String;

    .line 55
    const-string v0, "android.os.MessageQueue.nativePollOnce"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "android.hardware.Camera.open"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string v0, "android.location.LocationManager.requestLocationUpdates"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c()Landroid/app/Activity;
    .locals 13

    .line 143
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 144
    .local v2, "activityThreadClass":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 145
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "activityThread":Ljava/lang/Object;
    const-string v3, "mActivities"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v4, v0

    .line 147
    .local v4, "activitiesField":Ljava/lang/reflect/Field;
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v6, v0

    .line 149
    .local v6, "activities":Ljava/util/Map;
    move-object v6, v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, v0

    move-object v8, v7

    move-object v9, v8

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 150
    .local v10, "iToken":Ljava/lang/Object;
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 151
    .local v7, "activityRecord":Ljava/lang/Object;
    move-object v7, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 152
    .local v8, "activityRecordClass":Ljava/lang/Class;
    move-object v8, v11

    const-string/jumbo v12, "paused"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 153
    .local v9, "pausedField":Ljava/lang/reflect/Field;
    move-object v9, v11

    invoke-virtual {v11, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 155
    const-string v3, "activity"

    invoke-virtual {v8, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v11, v0

    .line 156
    .local v11, "activityField":Ljava/lang/reflect/Field;
    move-object v11, v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 159
    .end local v7    # "activityRecord":Ljava/lang/Object;
    .end local v8    # "activityRecordClass":Ljava/lang/Class;
    .end local v9    # "pausedField":Ljava/lang/reflect/Field;
    .end local v10    # "iToken":Ljava/lang/Object;
    .end local v11    # "activityField":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 162
    .end local v1    # "activityThread":Ljava/lang/Object;
    .end local v2    # "activityThreadClass":Ljava/lang/Class;
    .end local v4    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v6    # "activities":Ljava/util/Map;
    :cond_1
    goto :goto_1

    .line 160
    :catchall_0
    move-exception v1

    .line 161
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ANRUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method
