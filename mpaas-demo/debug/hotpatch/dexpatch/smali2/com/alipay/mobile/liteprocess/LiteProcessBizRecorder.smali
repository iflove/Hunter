.class public Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder;
.super Ljava/lang/Object;
.source "LiteProcessBizRecorder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onLiteProcessPreload(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/util/HashMap;)V
    .locals 20
    .param p0, "totalPreloadIndex"    # I
    .param p1, "currentPreloadIndex"    # I
    .param p2, "preloadFrom"    # Ljava/lang/String;
    .param p3, "preloadDecision"    # Ljava/lang/String;
    .param p4, "liteProcessName"    # Ljava/lang/String;
    .param p5, "processCreateTime"    # J
    .param p7, "firstForegroundTime"    # J
    .param p9, "currentForegroundTime"    # J
    .param p11, "preloadStartTime"    # J
    .param p13, "preloadCompletedTime"    # J
    .param p15, "appStartedWhenPreloading"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v16, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    .line 43
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v17, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    move/from16 v18, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 45
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 46
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;

    move-object/from16 v17, v0

    move-object/from16 v19, v1

    move/from16 v1, v18

    invoke-direct/range {v0 .. v16}, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;-><init>(IILjava/lang/String;Ljava/lang/String;JJJJJLjava/util/HashMap;Ljava/lang/String;)V

    move-object/from16 v1, v17

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public static onTinyAppStart(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJJJJJ)V
    .locals 24
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "totalPreloadIndex"    # I
    .param p2, "currentPreloadIndex"    # I
    .param p3, "preloadFrom"    # Ljava/lang/String;
    .param p4, "preloadDecision"    # Ljava/lang/String;
    .param p5, "liteProcessName"    # Ljava/lang/String;
    .param p6, "isPreloaded"    # Z
    .param p7, "isPreloadedCompleted"    # Z
    .param p8, "processCreateTime"    # J
    .param p10, "firstForegroundTime"    # J
    .param p12, "currentForegroundTime"    # J
    .param p14, "preloadStartTime"    # J
    .param p16, "preloadCompletedTime"    # J
    .param p18, "tinyAppStartTime"    # J

    move-object/from16 v19, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v20, p4

    move-object/from16 v4, p5

    move/from16 v18, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    move-wide/from16 v12, p14

    move-wide/from16 v14, p16

    move-wide/from16 v16, p18

    .line 89
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v21, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    move/from16 v22, v1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 91
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    .line 92
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;

    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v1, v22

    invoke-direct/range {v0 .. v20}, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;-><init>(IILjava/lang/String;Ljava/lang/String;ZJJJJJJZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v21

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public static recordDecisionData()V
    .locals 2

    .line 126
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 128
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$3;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
