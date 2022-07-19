.class public Lcom/alipay/mobile/common/logging/render/ExceptionRender;
.super Lcom/alipay/mobile/common/logging/render/BaseRender;
.source "ExceptionRender.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 0
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/render/BaseRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    .line 29
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 17
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/String;
    .param p3, "extParam"    # Ljava/lang/String;
    .param p4, "traceNativeCrashWhenBoot"    # Z
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "threadName"    # Ljava/lang/String;
    .param p7, "isNativeCrash"    # Z
    .param p8, "bizType"    # Ljava/lang/String;
    .param p9, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 59
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 61
    .local v5, "msg":Ljava/lang/StringBuilder;
    move-object v5, v0

    const-string v6, "$$"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "e"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "nowTime":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 70
    :try_start_0
    const-string v0, "log end"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "nativeLogEndTime":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v4

    .line 72
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    move-object v8, v7

    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-wide v13, v11

    .line 74
    .local v13, "nativeCrashTime":J
    move-wide v13, v9

    cmp-long v7, v9, v11

    if-lez v7, :cond_0

    .line 75
    invoke-static {v13, v14}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime(J)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    .line 79
    .end local v0    # "nativeLogEndTime":Ljava/lang/String;
    .end local v8    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v13    # "nativeCrashTime":J
    :cond_0
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v8, v4

    goto :goto_0

    .line 68
    :cond_1
    move-object v8, v4

    .line 81
    :goto_0
    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "productVersion":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 89
    const-string/jumbo v7, "mPaaSProductVersion"

    invoke-static {v2, v7}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v8, "nativeProductVersion":Ljava/lang/String;
    move-object v8, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 91
    move-object v0, v8

    move-object v7, v0

    goto :goto_1

    .line 94
    .end local v8    # "nativeProductVersion":Ljava/lang/String;
    :cond_2
    move-object v7, v0

    .end local v0    # "productVersion":Ljava/lang/String;
    .local v7, "productVersion":Ljava/lang/String;
    :goto_1
    invoke-static {v5, v7}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v0, "4"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-object/from16 v8, p9

    invoke-static {v5, v8}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendExtParam(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, "exception"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    if-eqz v3, :cond_3

    .line 112
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 115
    .end local p2    # "ex":Ljava/lang/String;
    .local v2, "ex":Ljava/lang/String;
    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    move/from16 v9, p4

    invoke-interface {v0, v9, v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientStatus(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-object/from16 v10, p8

    invoke-static {v5, v10}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    const-string v11, "appID"

    invoke-interface {v0, v11}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "appId":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 123
    invoke-static {v2, v11}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    .line 122
    :cond_4
    move-object v11, v0

    .line 126
    .end local v0    # "appId":Ljava/lang/String;
    .local v11, "appId":Ljava/lang/String;
    :goto_2
    invoke-static {v5, v11}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {v5, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getTopActivity()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "topActivity":Ljava/lang/String;
    const-string/jumbo v12, "viewID"

    if-eqz v3, :cond_5

    .line 140
    invoke-static {v2, v12}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v14, v4

    .line 141
    .local v14, "nativeTopActivity":Ljava/lang/String;
    move-object v14, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 142
    move-object v0, v14

    move-object v13, v0

    goto :goto_3

    .line 145
    .end local v14    # "nativeTopActivity":Ljava/lang/String;
    :cond_5
    move-object v13, v0

    .end local v0    # "topActivity":Ljava/lang/String;
    .local v13, "topActivity":Ljava/lang/String;
    :goto_3
    invoke-static {v5, v13}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    const-string/jumbo v14, "refViewID"

    invoke-interface {v0, v14}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "refViewId":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 156
    invoke-static {v2, v14}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_4

    .line 155
    :cond_6
    move-object v14, v0

    .line 158
    .end local v0    # "refViewId":Ljava/lang/String;
    .local v14, "refViewId":Ljava/lang/String;
    :goto_4
    invoke-static {v5, v14}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0, v12}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "viewId":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 163
    invoke-static {v2, v12}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    .line 162
    :cond_7
    move-object v12, v0

    .line 165
    .end local v0    # "viewId":Ljava/lang/String;
    .local v12, "viewId":Ljava/lang/String;
    :goto_5
    invoke-static {v5, v12}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result v15

    .line 169
    .local v15, "isBackground":Z
    if-eqz v15, :cond_8

    const-string v0, "bg"

    goto :goto_6

    :cond_8
    const-string v0, "fg"

    :goto_6
    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    const-string v4, "actionID"

    invoke-interface {v0, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    const-string v4, "actionToken"

    invoke-interface {v0, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getStorageParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/NetUtil;->getNetworkTypeOptimized(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    move-object/from16 v4, p3

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    move-object/from16 v4, p5

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    move-object/from16 v4, p6

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    if-eqz v3, :cond_9

    const-string/jumbo v0, "native"

    goto :goto_7

    :cond_9
    const-string v0, "java"

    :goto_7
    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApkUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/16 v16, 0x0

    .line 216
    .local v16, "startupReason":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "toString"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v0

    .line 219
    goto :goto_8

    .line 217
    :catchall_2
    move-exception v0

    .line 220
    :goto_8
    if-eqz v3, :cond_a

    .line 221
    const-string v0, "StartupReason"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 222
    .local v4, "nativeStartupReason":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 223
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    goto :goto_9

    .line 226
    .end local v4    # "nativeStartupReason":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v16

    .end local v16    # "startupReason":Ljava/lang/String;
    .local v0, "startupReason":Ljava/lang/String;
    :goto_9
    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v4, v1, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBizExternParams()Ljava/util/Map;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendExtParam(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/String;
    .param p3, "extParam"    # Ljava/lang/String;
    .param p4, "traceNativeCrashWhenBoot"    # Z
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "threadName"    # Ljava/lang/String;
    .param p7, "isNativeCrash"    # Z

    .line 42
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "extParam"    # Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    .line 35
    .local v9, "threadName":Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v6, v0

    move-object v7, v9

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "bizType"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "threadName":Ljava/lang/String;
    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    move-object v7, v11

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
