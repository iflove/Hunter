.class Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullProcessInfo;
.super Ljava/lang/Object;
.source "LoggerFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/ProcessInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullProcessInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;

    .line 1375
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullProcessInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtProcessId()I
    .locals 1

    .line 1505
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1506
    const/4 v0, 0x0

    return v0
.end method

.method public getExtProcessName()Ljava/lang/String;
    .locals 1

    .line 1409
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtProcessTag()Ljava/lang/String;
    .locals 1

    .line 1439
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1440
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainProcessId()I
    .locals 1

    .line 1469
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1470
    const/4 v0, -0x1

    return v0
.end method

.method public getMainProcessName()Ljava/lang/String;
    .locals 1

    .line 1391
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1392
    const-string v0, ""

    return-object v0
.end method

.method public getMainProcessTag()Ljava/lang/String;
    .locals 1

    .line 1421
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1422
    const-string v0, ""

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1379
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1380
    const-string v0, ""

    return-object v0
.end method

.method public getProcessAlias()Ljava/lang/String;
    .locals 1

    .line 1385
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1386
    const-string v0, ""

    return-object v0
.end method

.method public getProcessId()I
    .locals 1

    .line 1517
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1518
    const/4 v0, -0x1

    return v0
.end method

.method public getProcessIdByName(Ljava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .line 1457
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1458
    const/4 v0, -0x1

    return v0
.end method

.method public getProcessIdsByName(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1451
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1452
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 1415
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1416
    const-string v0, ""

    return-object v0
.end method

.method public getProcessNameById(I)Ljava/lang/String;
    .locals 1
    .param p1, "processId"    # I

    .line 1463
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1464
    const-string v0, ""

    return-object v0
.end method

.method public getProcessStartTime()J
    .locals 2

    .line 1595
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1596
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getProcessTag()Ljava/lang/String;
    .locals 1

    .line 1445
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1446
    const-string v0, ""

    return-object v0
.end method

.method public getPushProcessId()I
    .locals 1

    .line 1481
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1482
    const/4 v0, -0x1

    return v0
.end method

.method public getPushProcessName()Ljava/lang/String;
    .locals 1

    .line 1397
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1398
    const-string v0, ""

    return-object v0
.end method

.method public getPushProcessTag()Ljava/lang/String;
    .locals 1

    .line 1427
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1428
    const-string v0, ""

    return-object v0
.end method

.method public getStartupBundle()Landroid/os/Bundle;
    .locals 1

    .line 1583
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1584
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartupData()Landroid/net/Uri;
    .locals 1

    .line 1589
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1590
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartupReason()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1577
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1578
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    .line 1529
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1530
    const/4 v0, -0x1

    return v0
.end method

.method public getToolsProcessId()I
    .locals 1

    .line 1493
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1494
    const/4 v0, -0x1

    return v0
.end method

.method public getToolsProcessName()Ljava/lang/String;
    .locals 1

    .line 1403
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1404
    const-string v0, ""

    return-object v0
.end method

.method public getToolsProcessTag()Ljava/lang/String;
    .locals 1

    .line 1433
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1434
    const-string v0, ""

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 1523
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1524
    const/4 v0, -0x1

    return v0
.end method

.method public isExtProcess()Z
    .locals 1

    .line 1553
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1554
    const/4 v0, 0x0

    return v0
.end method

.method public isExtProcessExist()Z
    .locals 1

    .line 1511
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1512
    const/4 v0, 0x0

    return v0
.end method

.method public isIsolatedProcess()Z
    .locals 1

    .line 1571
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1572
    const/4 v0, 0x0

    return v0
.end method

.method public isLiteProcess()Z
    .locals 1

    .line 1559
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1560
    const/4 v0, 0x0

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .line 1535
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1536
    const/4 v0, 0x0

    return v0
.end method

.method public isMainProcessExist()Z
    .locals 1

    .line 1475
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1476
    const/4 v0, 0x0

    return v0
.end method

.method public isPushProcess()Z
    .locals 1

    .line 1541
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1542
    const/4 v0, 0x0

    return v0
.end method

.method public isPushProcessExist()Z
    .locals 1

    .line 1487
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1488
    const/4 v0, 0x0

    return v0
.end method

.method public isSandboxProcess()Z
    .locals 1

    .line 1565
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1566
    const/4 v0, 0x0

    return v0
.end method

.method public isStartupByAnyActivity()Z
    .locals 1

    .line 1601
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1602
    const/4 v0, 0x0

    return v0
.end method

.method public isStartupByLauncherIcon()Z
    .locals 1

    .line 1607
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1608
    const/4 v0, 0x0

    return v0
.end method

.method public isToolsProcess()Z
    .locals 1

    .line 1547
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1548
    const/4 v0, 0x0

    return v0
.end method

.method public isToolsProcessExist()Z
    .locals 1

    .line 1499
    # invokes: Lcom/alipay/mobile/common/logging/api/LoggerFactory;->a()V
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->access$800()V

    .line 1500
    const/4 v0, 0x0

    return v0
.end method
