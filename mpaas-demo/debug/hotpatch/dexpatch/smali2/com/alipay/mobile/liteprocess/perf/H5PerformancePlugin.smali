.class public Lcom/alipay/mobile/liteprocess/perf/H5PerformancePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PerformancePlugin.java"


# static fields
.field public static final PERFORMANCE_JS_API:Ljava/lang/String; = "onAppPerfEvent"

.field public static final TAG:Ljava/lang/String; = "H5PerformancePlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;IJLjava/util/Map;)V
    .locals 9
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "loadTime"    # I
    .param p3, "timestamp"    # J
    .param p5, "extra"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleAppPerfEvent: state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loadTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PerformancePlugin"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 257
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    const/4 v1, 0x0

    .line 259
    .local v1, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 260
    return-void

    .line 262
    :cond_1
    const-string/jumbo v0, "pageLoaded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_PageLoad:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 265
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 266
    .local v2, "elapsedRealtime":J
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_3

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v2, p3, v4

    .line 269
    :cond_3
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Stub;

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Stub;-><init>(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "js_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Stub;->setTrackId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object v0

    .line 270
    .local v0, "stubEvent":Lcom/alipay/mobile/nebulax/kernel/track/Event;
    if-eqz p5, :cond_4

    .line 271
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 272
    .local v6, "extraKey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->putAttr(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 273
    .end local v6    # "extraKey":Ljava/lang/String;
    goto :goto_0

    .line 275
    :cond_4
    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->event(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/Event;)V

    .line 277
    if-lez p2, :cond_5

    .line 278
    new-instance v4, Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;

    int-to-long v6, p2

    invoke-direct {v4, v6, v7}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;-><init>(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_cost"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;->setTrackId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object v4

    .line 279
    .local v4, "costEvent":Lcom/alipay/mobile/nebulax/kernel/track/Event;
    invoke-interface {v1, p0, v4}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->event(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/Event;)V

    .line 281
    .end local v4    # "costEvent":Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :cond_5
    return-void

    .line 255
    .end local v0    # "stubEvent":Lcom/alipay/mobile/nebulax/kernel/track/Event;
    .end local v1    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    .end local v2    # "elapsedRealtime":J
    :cond_6
    :goto_1
    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;)[J
    .locals 10
    .param p0, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 233
    const-string/jumbo v0, "time"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 234
    .local v4, "timeStamp":J
    move-wide v4, v0

    .line 235
    .local v0, "timeFromAppx":J
    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 239
    :cond_0
    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 243
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    return-object v2
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v0, "state"

    const-class v1, Lcom/alipay/mobile/liteprocess/perf/H5PerformancePlugin;

    .line 108
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 109
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    move-object v4, v3

    .line 111
    .local v4, "topAppId":Ljava/lang/String;
    move-object v4, v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->getCurrentAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0

    .line 116
    .end local v4    # "topAppId":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "action":Ljava/lang/String;
    const-string v4, "h5PageStarted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 118
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 119
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_START:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v4, v3

    .line 121
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    if-eqz v0, :cond_4

    .line 122
    const-string/jumbo v0, "url"

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v3, "url":Ljava/lang/String;
    move-object v3, v0

    if-nez v0, :cond_3

    const-string v0, "invalid"

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a:Ljava/lang/String;

    .line 125
    .end local v3    # "url":Ljava/lang/String;
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_6

    .line 126
    :cond_4
    const-string/jumbo v0, "null"

    sput-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->a:Ljava/lang/String;

    .line 128
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_6

    .line 118
    :cond_5
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_4

    .line 129
    :cond_6
    const-string v4, "h5PageFinished"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string/jumbo v5, "tiny_launch_cost"

    if-eqz v4, :cond_8

    .line 130
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 131
    .local v6, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "5 H5PerformancePlugin#handleEvent launch_cost maybe end:"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v0, v6, v7}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 134
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_7

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 136
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 137
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->setH5WebviewVersion(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_7
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_6

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    .local v0, "thr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get h5 webview version error!"

    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "thr":Ljava/lang/Throwable;
    .end local v6    # "time":J
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_6

    :cond_8
    const-string v4, "h5PageRender"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 145
    .local v3, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "2 H5PerformancePlugin#handleEvent launch_cost maybe end:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_RENDER:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 147
    .end local v3    # "time":J
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_6

    :cond_9
    const-string v4, "h5PageClosed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->logStartup(Lcom/alipay/mobile/h5container/api/H5Page;)V

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_6

    .line 151
    :cond_a
    const-string v4, "h5PagePause"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->logStartup(Lcom/alipay/mobile/h5container/api/H5Page;)V

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_6

    .line 153
    :cond_b
    const-string/jumbo v4, "onAppPerfEvent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v6, v3

    .line 156
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v4

    if-eqz v4, :cond_17

    .line 157
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "state":Ljava/lang/String;
    const-string v7, "finish"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v8, "data"

    const-string v9, "loadTime"

    const/4 v10, 0x0

    if-eqz v7, :cond_c

    .line 160
    :try_start_4
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_JS_FINISH:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v6}, Lcom/alipay/mobile/liteprocess/perf/H5PerformancePlugin;->a(Lcom/alibaba/fastjson/JSONObject;)[J

    move-result-object v5

    aget-wide v10, v5, v10

    invoke-static {v3, v10, v11}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 161
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_3

    .line 162
    :cond_c
    const-string v7, "appLoaded"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 166
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_APP_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v6}, Lcom/alipay/mobile/liteprocess/perf/H5PerformancePlugin;->a(Lcom/alibaba/fastjson/JSONObject;)[J

    move-result-object v5

    aget-wide v10, v5, v10

    invoke-static {v3, v10, v11}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 167
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_3

    .line 168
    :cond_d
    const-string/jumbo v7, "renderFrameworkLoaded"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 170
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    .line 171
    .local v3, "loadTime":I
    invoke-static {v5}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->logRenderFrameworkLoaded(I)V

    .line 172
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 173
    .end local v3    # "loadTime":I
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v7, "pageLoaded"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 176
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v7

    move-object v11, v3

    .line 177
    .local v11, "loadTime":I
    move v11, v7

    const/4 v12, 0x1

    if-nez v7, :cond_f

    .line 178
    sget-object v7, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_LOADED_CLIENT:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v7}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;)V

    .line 179
    invoke-static {v6}, Lcom/alipay/mobile/liteprocess/perf/H5PerformancePlugin;->a(Lcom/alibaba/fastjson/JSONObject;)[J

    move-result-object v7

    .line 180
    .local v7, "timePair":[J
    sget-object v13, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_PAGE_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    aget-wide v14, v7, v10

    invoke-static {v13, v14, v15}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "6 H5PerformancePlugin#handleEvent launch_cost maybe end:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    .end local v4    # "state":Ljava/lang/String;
    .local v15, "state":Ljava/lang/String;
    aget-wide v3, v7, v10

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0ctimeFromAppx\uff1a"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v7, v12

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 177
    .end local v7    # "timePair":[J
    .end local v15    # "state":Ljava/lang/String;
    .restart local v4    # "state":Ljava/lang/String;
    :cond_f
    move-object v15, v4

    .line 184
    .end local v4    # "state":Ljava/lang/String;
    .restart local v15    # "state":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "page"

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "page":Ljava/lang/String;
    if-nez v11, :cond_10

    const/4 v10, 0x1

    :cond_10
    invoke-static {v11, v3, v10}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->logPageSwitch(ILjava/lang/String;Z)V

    .line 186
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 187
    sget-boolean v4, Lcom/alipay/mobile/liteprocess/Config;->TINYAPP_PAGE_FLUENCY:Z

    if-eqz v4, :cond_11

    .line 189
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 191
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v5, 0x0

    .line 192
    .local v5, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v5, v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 193
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v4

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/alipay/mobile/monitor/api/MonitorContext;->onTinyAppPageUrlChanged(Ljava/lang/String;)V

    .line 196
    .end local v3    # "page":Ljava/lang/String;
    .end local v5    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v11    # "loadTime":I
    :cond_11
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object v4, v15

    goto/16 :goto_3

    .end local v15    # "state":Ljava/lang/String;
    .restart local v4    # "state":Ljava/lang/String;
    :cond_12
    move-object v15, v4

    .end local v4    # "state":Ljava/lang/String;
    .restart local v15    # "state":Ljava/lang/String;
    const-string/jumbo v3, "workerFrameworkLoaded"

    move-object v4, v15

    .end local v15    # "state":Ljava/lang/String;
    .restart local v4    # "state":Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 197
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    .line 198
    .local v5, "loadTime":I
    move v5, v3

    if-lez v3, :cond_13

    .line 199
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_WORKER_FRAMEWORK_LOADED:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    int-to-long v10, v5

    invoke-static {v3, v10, v11}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 201
    :cond_13
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 202
    .end local v5    # "loadTime":I
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto :goto_3

    :cond_14
    const-string v3, "firstPaint"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 203
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const/4 v5, 0x0

    .line 204
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v3

    if-eqz v3, :cond_15

    .line 205
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_DATALEN:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string v7, "dataLen"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 206
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_RENDERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string/jumbo v7, "renderTime"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 207
    sget-object v3, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_FIRSTPAINT_TRANSFERTIME:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    const-string/jumbo v7, "transferTime"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 208
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto :goto_3

    .line 210
    :cond_15
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    :try_start_5
    invoke-interface {v10, v7, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_3

    .line 202
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_16
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    .line 213
    :goto_3
    if-eqz v6, :cond_19

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v11

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 216
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v0, "time"

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v14

    .line 217
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 215
    invoke-static/range {v11 .. v16}, Lcom/alipay/mobile/liteprocess/perf/H5PerformancePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;IJLjava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 225
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "state":Ljava/lang/String;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 156
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_17
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    goto :goto_4

    .line 153
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_18
    move-object/from16 v7, p1

    move-object/from16 v10, p2

    .line 227
    .end local v2    # "action":Ljava/lang/String;
    :cond_19
    :goto_4
    goto :goto_6

    .line 225
    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    .line 226
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "handleEvent"

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 15
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v0, "value"

    const-string/jumbo v1, "name"

    .line 62
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0

    .line 67
    :cond_0
    :try_start_0
    const-string/jumbo v2, "monitorH5Performance"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v4, v3

    .line 69
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    move-object v5, v3

    .line 70
    .local v5, "data":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    .line 72
    .local v2, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    .line 73
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 74
    .local v3, "element":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v7

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "name":Ljava/lang/String;
    const-string v8, "domReady"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 77
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 79
    .local v0, "value":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 80
    .local v8, "time":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    const-string/jumbo v11, "tiny_launch_cost"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "4 H5PerformancePlugin#interceptEvent launch_cost maybe end:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v10, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->STARTUP_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v10, v8, v9}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;J)V

    .line 83
    sget-object v10, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;->PAGE_SWITCH_DOM_READY:Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;

    invoke-static {v10}, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->track(Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger$TrackType;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    sget-object v11, Lcom/alipay/mobile/liteprocess/perf/PerformanceLogger;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "domReady:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", now:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    goto :goto_1

    .line 72
    .end local v0    # "value":J
    .end local v3    # "element":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "time":J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "length":I
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "i":I
    :cond_2
    goto :goto_1

    :cond_3
    const-string v0, "h5PageResume"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->TINYAPP_PAGE_FLUENCY:Z

    if-eqz v0, :cond_4

    .line 92
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    move-object v1, v3

    .line 95
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/monitor/api/MonitorContext;->onTinyAppPageUrlChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_4
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    .line 102
    :goto_1
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 0
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V

    .line 44
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 48
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v0, "h5PageRender"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "pushWindow"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v0, "h5PagePause"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v0, "h5PageResume"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "monitorH5Performance"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "onAppPerfEvent"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 58
    return-void
.end method
