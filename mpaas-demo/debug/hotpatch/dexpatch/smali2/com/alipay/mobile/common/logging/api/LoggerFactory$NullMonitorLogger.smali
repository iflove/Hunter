.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullMonitorLogger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    .line 351
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 390
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 391
    return-void
.end method

.method public battery(Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;)V
    .locals 0
    .param p1, "batteryModel"    # Lcom/alipay/mobile/common/logging/api/monitor/BatteryModel;

    .line 400
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 401
    return-void
.end method

.method public crash(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "extParam"    # Ljava/lang/String;

    .line 385
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 386
    return-void
.end method

.method public crash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "extParam"    # Ljava/lang/String;

    .line 380
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 381
    return-void
.end method

.method public dangerousUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failMsg"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 355
    return-void
.end method

.method public dataflow(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 0
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 395
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 396
    return-void
.end method

.method public endLinkTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;

    .line 437
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 438
    return-void
.end method

.method public exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exceptionID"    # Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 359
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 360
    return-void
.end method

.method public exception(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 364
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 365
    return-void
.end method

.method public footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 375
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 376
    return-void
.end method

.method public keyBizTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failCode"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 412
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 413
    return-void
.end method

.method public mergeLog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I

    .line 453
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 454
    return-void
.end method

.method public mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "failCode"    # Ljava/lang/String;
    .param p4, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 406
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 407
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 0
    .param p1, "performanceID"    # Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .param p2, "msg"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 369
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 370
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;)V
    .locals 0
    .param p1, "performanceID"    # Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p3, "customerParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 459
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 460
    return-void
.end method

.method public performance(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 0
    .param p1, "performanceID"    # Ljava/lang/String;
    .param p2, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    .line 464
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 465
    return-void
.end method

.method public recordLinkTransaction(Ljava/lang/String;J[BLjava/util/ArrayList;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;
    .param p2, "seq"    # J
    .param p4, "node"    # [B
    .param p5, "filedList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[B",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/fulllink/msg/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 432
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 433
    return-void
.end method

.method public rollbackTransactioin(Ljava/lang/String;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;

    .line 442
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 443
    return-void
.end method

.method public setUploadSize(Ljava/lang/String;I)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 417
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 418
    return-void
.end method

.method public startLinkTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "tranId"    # Ljava/lang/String;
    .param p2, "linkName"    # Ljava/lang/String;
    .param p3, "calculateRule"    # Ljava/lang/String;
    .param p4, "fields"    # Ljava/util/ArrayList;
    .param p5, "extMap"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 422
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 423
    return-void
.end method
