.class final Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;

    .line 1404
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;-><init>()V

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 5
    .param p1, "cookie"    # I

    .line 1482
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    const/4 v1, 0x0

    .line 1483
    .local v1, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1486
    return v2

    .line 1489
    :cond_0
    return v2
.end method

.method private getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    .locals 4
    .param p1, "cookie"    # I

    .line 1508
    and-int/lit16 v0, p1, 0xff

    .line 1509
    .local v0, "index":I
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 1510
    .local v3, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    move-object v3, v1

    iget v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v1, p1, :cond_0

    return-object v3

    :cond_0
    return-object v2
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 1493
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    .line 1494
    .local v0, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1495
    .local v1, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1496
    if-eqz p2, :cond_0

    .line 1497
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SQLiteConnection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2
    .param p1, "index"    # I

    .line 1503
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1504
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .line 1414
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1415
    :try_start_0
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x14

    .line 1416
    .local v1, "index":I
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 1417
    .local v4, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    move-object v4, v2

    if-nez v2, :cond_0

    .line 1418
    new-instance v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    invoke-direct {v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V

    move-object v4, v2

    .line 1419
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aput-object v4, v2, v1

    goto :goto_0

    .line 1421
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1422
    iput-object v3, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1423
    iget-object v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1424
    iget-object v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1427
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1428
    iput-object p1, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1429
    iput-object p2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1430
    if-eqz p3, :cond_4

    .line 1431
    iget-object v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    goto :goto_1

    .line 1434
    :cond_2
    iget-object v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1436
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, p3

    if-ge v2, v5, :cond_4

    .line 1437
    aget-object v5, p3, v2

    .line 1438
    .local v3, "arg":Ljava/lang/Object;
    move-object v3, v5

    if-eqz v5, :cond_3

    instance-of v5, v3, [B

    if-eqz v5, :cond_3

    .line 1440
    iget-object v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    # getter for: Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->access$500()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1442
    :cond_3
    iget-object v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    .end local v3    # "arg":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1446
    .end local v2    # "i":I
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v2

    iput v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1447
    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1448
    iget v2, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v0

    return v2

    .line 1449
    .end local v1    # "index":I
    .end local v4    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final describeCurrentOperation()Ljava/lang/String;
    .locals 4

    .line 1514
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1515
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    move-object v3, v2

    .line 1516
    .local v3, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    move-object v3, v1

    if-eqz v1, :cond_0

    iget-boolean v1, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v1, :cond_0

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1518
    .local v1, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1519
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1521
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1522
    .end local v3    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final dump(Landroid/util/Printer;Z)V
    .locals 7
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1526
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1527
    :try_start_0
    const-string v1, "  Most recently executed operations:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1528
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1529
    .local v1, "index":I
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 1530
    .local v4, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    move-object v4, v2

    if-eqz v2, :cond_3

    .line 1531
    const/4 v2, 0x0

    .line 1533
    .local v2, "n":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1534
    .local v3, "msg":Ljava/lang/StringBuilder;
    move-object v3, v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    # invokes: Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->getFormattedStartTime()Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->access$600(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-virtual {v4, v3, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1540
    if-lez v1, :cond_1

    .line 1541
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1543
    :cond_1
    const/16 v1, 0x13

    .line 1545
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 1546
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    aget-object v5, v5, v1

    .line 1547
    .end local v3    # "msg":Ljava/lang/StringBuilder;
    move-object v4, v5

    if-eqz v5, :cond_2

    const/16 v5, 0x14

    if-lt v2, v5, :cond_0

    .line 1548
    .end local v2    # "n":I
    :cond_2
    goto :goto_1

    .line 1549
    :cond_3
    const-string v2, "    <none>"

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1551
    .end local v1    # "index":I
    .end local v4    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final endOperation(I)V
    .locals 2
    .param p1, "cookie"    # I

    .line 1462
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1463
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1466
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final endOperationDeferLog(I)Z
    .locals 2
    .param p1, "cookie"    # I

    .line 1470
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1471
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final failOperation(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 1453
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1454
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    const/4 v2, 0x0

    .line 1455
    .local v2, "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 1456
    iput-object p2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1458
    .end local v2    # "operation":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final logOperation(ILjava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "detail"    # Ljava/lang/String;

    .line 1476
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->mOperations:[Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1477
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1478
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
