.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "ANRWatchDog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private volatile c:I

.field private volatile d:I

.field private volatile e:I

.field private final f:Ljava/lang/Runnable;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->b:Landroid/os/Handler;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->c:I

    .line 60
    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->d:I

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->e:I

    .line 64
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->f:Ljava/lang/Runnable;

    .line 71
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->g:Z

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    .line 50
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->d:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;
    .param p1, "x1"    # I

    .line 50
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->d:I

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 18

    .line 86
    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->d:I

    iget v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->e:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_a

    .line 87
    invoke-static {}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-nez v1, :cond_a

    .line 89
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->a:Ljava/lang/String;

    const-string v4, "countCheck:1"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "waitCount:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v4, v1

    .line 93
    .local v4, "error":Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;

    move-result-object v4

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "automationanr"

    const-string v7, "Force Start parse for automation"

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v7, "anr"

    invoke-interface {v5, v2, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v7, "Force End parse for automation"

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "currentStack":Ljava/lang/String;
    iget v6, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->c:I

    const-string v7, "bundleUpdates"

    const-string/jumbo v8, "threadsTrace"

    const-string v9, "currentPage"

    const-string/jumbo v10, "report nothing, invalidStack"

    const-string/jumbo v11, "viewID"

    const-string v12, "errorCode"

    const-string v13, "anrTime"

    const-string/jumbo v14, "stackFrame"

    const/4 v15, 0x1

    if-nez v6, :cond_4

    .line 100
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a()Ljava/lang/String;

    goto/16 :goto_0

    .line 104
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 105
    .local v16, "anrTime":J
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v10, v1

    .line 106
    .local v10, "mParams":Ljava/util/Map;
    move-object v10, v6

    invoke-interface {v6, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v6, "1000"

    invoke-interface {v10, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v6

    invoke-interface {v6, v11}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v11, v1

    .line 110
    .local v11, "viewId":Ljava/lang/String;
    move-object v11, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 111
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_2
    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v1, "bundleUpdates":Ljava/lang/String;
    move-object v1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 115
    invoke-interface {v10, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_3
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->anr(Ljava/util/Map;)V

    .line 121
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "report:1000"

    invoke-interface {v6, v2, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v6, "applog"

    invoke-interface {v2, v6, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 124
    .end local v1    # "bundleUpdates":Ljava/lang/String;
    .end local v10    # "mParams":Ljava/util/Map;
    .end local v11    # "viewId":Ljava/lang/String;
    .end local v16    # "anrTime":J
    goto/16 :goto_0

    .line 125
    :cond_4
    iget v3, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->c:I

    if-ne v3, v15, :cond_9

    .line 126
    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a()Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 131
    .restart local v16    # "anrTime":J
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v6, v1

    .line 132
    .local v6, "mParams":Ljava/util/Map;
    move-object v6, v3

    invoke-interface {v3, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v3, "1114"

    invoke-interface {v6, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3, v11}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v1

    .line 136
    .local v10, "viewId":Ljava/lang/String;
    move-object v10, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 137
    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_6
    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v1    # "bundleUpdates":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 141
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_7
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->anr(Ljava/util/Map;)V

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v7, "report:1114"

    invoke-interface {v3, v2, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 151
    .local v2, "context":Landroid/content/Context;
    iget-boolean v3, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->g:Z

    if-nez v3, :cond_8

    .line 152
    invoke-static {v2}, Lcom/alipay/mobile/monitor/util/TransUtils;->exceptionCollectorRecordException(Landroid/content/Context;)V

    .line 153
    iput-boolean v15, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->g:Z

    .line 157
    .end local v1    # "bundleUpdates":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "mParams":Ljava/util/Map;
    .end local v10    # "viewId":Ljava/lang/String;
    .end local v16    # "anrTime":J
    :cond_8
    goto :goto_0

    .line 159
    :cond_9
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRUtil;->a()Ljava/lang/String;

    .line 162
    :goto_0
    iget v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->c:I

    add-int/2addr v1, v15

    iput v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->c:I

    .line 163
    .end local v4    # "error":Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
    .end local v5    # "currentStack":Ljava/lang/String;
    goto :goto_1

    .line 164
    :cond_a
    iput v3, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->c:I

    .line 167
    :goto_1
    iget v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->d:I

    iput v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->e:I

    .line 168
    iget-object v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->b:Landroid/os/Handler;

    iget-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method
