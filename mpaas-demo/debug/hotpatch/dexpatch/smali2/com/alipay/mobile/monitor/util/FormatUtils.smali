.class public Lcom/alipay/mobile/monitor/util/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# static fields
.field private static final a:[I

.field private static b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/monitor/util/FormatUtils;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatLimitedSimpleDate(J)Ljava/lang/String;
    .locals 4
    .param p0, "timeMillis"    # J

    .line 27
    invoke-static {p0, p1}, Lcom/alipay/mobile/monitor/util/FormatUtils;->formatLimitedSimpleDatePerf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    .local v1, "result":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/alipay/mobile/monitor/util/FormatUtils;->b:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/monitor/util/FormatUtils;->b:Ljava/text/SimpleDateFormat;

    .line 32
    :cond_0
    sget-object v0, Lcom/alipay/mobile/monitor/util/FormatUtils;->b:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/monitor/util/FormatUtils;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 34
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 36
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static formatLimitedSimpleDatePerf(J)Ljava/lang/String;
    .locals 30
    .param p0, "timeMillis"    # J

    .line 44
    const-wide v0, 0x16804fe4800L

    sub-long v0, p0, v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 45
    .local v4, "milLeft":J
    move-wide v4, v0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_9

    const-wide v0, 0x17e113827ffL

    cmp-long v6, p0, v0

    if-lez v6, :cond_0

    goto/16 :goto_5

    :cond_0
    move-wide v0, v2

    .local v0, "monthNum":J
    move-wide v6, v2

    .local v6, "yearNum":J
    move-wide v8, v2

    .local v8, "secNum":J
    move-wide v10, v2

    .local v10, "minNum":J
    move-wide v12, v2

    .local v12, "dayNum":J
    move-wide v14, v2

    .line 55
    .local v2, "milNum":J
    .local v14, "hourNum":J
    const-wide/32 v16, 0x5265c00

    div-long v18, v4, v16

    .line 56
    .local v18, "dayCount":J
    mul-long v16, v16, v18

    sub-long v4, v4, v16

    .line 57
    const-wide/16 v16, 0x1

    add-long v18, v18, v16

    .line 58
    const/16 v16, 0x0

    .line 59
    .local v16, "monthIdx":I
    const/16 v17, 0x0

    move-wide/from16 v19, v18

    move-wide/from16 v28, v0

    move/from16 v0, v17

    move-wide/from16 v17, v28

    .end local v18    # "dayCount":J
    .local v0, "i":I
    .local v17, "monthNum":J
    .local v19, "dayCount":J
    :goto_0
    sget-object v1, Lcom/alipay/mobile/monitor/util/FormatUtils;->a:[I

    move-wide/from16 v21, v2

    .end local v2    # "milNum":J
    .local v21, "milNum":J
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 60
    aget v2, v1, v0

    int-to-long v2, v2

    cmp-long v23, v19, v2

    if-lez v23, :cond_1

    .line 61
    aget v1, v1, v0

    int-to-long v1, v1

    sub-long v19, v19, v1

    .line 62
    add-int/lit8 v16, v0, 0x1

    .line 59
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v21

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_1
    move-wide/from16 v0, v19

    .line 65
    .end local v12    # "dayNum":J
    .local v0, "dayNum":J
    div-int/lit8 v2, v16, 0xc

    .line 66
    .local v2, "yearDiff":I
    mul-int/lit8 v3, v2, 0xc

    sub-int v3, v16, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v12, v3

    .line 67
    .end local v17    # "monthNum":J
    .local v12, "monthNum":J
    const-wide/16 v17, 0x7e3

    move-wide/from16 v23, v6

    .end local v6    # "yearNum":J
    .local v23, "yearNum":J
    int-to-long v6, v2

    add-long v6, v6, v17

    .line 68
    .end local v23    # "yearNum":J
    .restart local v6    # "yearNum":J
    const-wide/32 v17, 0x36ee80

    div-long v14, v4, v17

    .line 69
    mul-long v17, v17, v14

    sub-long v17, v4, v17

    .line 70
    move-wide/from16 v3, v17

    .end local v4    # "milLeft":J
    .local v3, "milLeft":J
    const-wide/32 v23, 0xea60

    div-long v10, v17, v23

    .line 71
    mul-long v23, v23, v10

    sub-long v17, v3, v23

    .line 72
    move-wide/from16 v3, v17

    const-wide/16 v23, 0x3e8

    div-long v8, v17, v23

    .line 73
    mul-long v23, v23, v8

    move-wide/from16 v17, v8

    .end local v8    # "secNum":J
    .local v17, "secNum":J
    sub-long v8, v3, v23

    .line 74
    .end local v21    # "milNum":J
    .local v8, "milNum":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    .line 75
    .local v21, "buf":Ljava/lang/StringBuilder;
    move-object/from16 v22, v5

    .end local v21    # "buf":Ljava/lang/StringBuilder;
    .local v22, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move/from16 v21, v2

    .end local v2    # "yearDiff":I
    .local v21, "yearDiff":I
    const/16 v2, 0x2d

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const-wide/16 v23, 0xa

    const/16 v5, 0x30

    cmp-long v25, v12, v23

    if-gez v25, :cond_2

    move-object/from16 v2, v22

    .end local v22    # "buf":Ljava/lang/StringBuilder;
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .restart local v22    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v2, v22

    .line 77
    .end local v22    # "buf":Ljava/lang/StringBuilder;
    .restart local v2    # "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    cmp-long v5, v0, v23

    if-gez v5, :cond_3

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_3
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    cmp-long v5, v14, v23

    if-gez v5, :cond_4

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :cond_4
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    cmp-long v25, v10, v23

    if-gez v25, :cond_5

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v5, 0x30

    .line 83
    :goto_2
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    cmp-long v25, v17, v23

    if-gez v25, :cond_6

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const/16 v5, 0x30

    .line 85
    :goto_3
    move-wide/from16 v26, v6

    move-wide/from16 v5, v17

    .end local v6    # "yearNum":J
    .end local v17    # "secNum":J
    .local v5, "secNum":J
    .local v26, "yearNum":J
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    cmp-long v7, v8, v23

    if-gez v7, :cond_7

    const/16 v7, 0x30

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/16 v7, 0x30

    .line 87
    :goto_4
    const-wide/16 v17, 0x64

    cmp-long v22, v8, v17

    if-gez v22, :cond_8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :cond_8
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 46
    .end local v0    # "dayNum":J
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "milLeft":J
    .end local v5    # "secNum":J
    .end local v8    # "milNum":J
    .end local v10    # "minNum":J
    .end local v12    # "monthNum":J
    .end local v14    # "hourNum":J
    .end local v16    # "monthIdx":I
    .end local v19    # "dayCount":J
    .end local v21    # "yearDiff":I
    .end local v26    # "yearNum":J
    .restart local v4    # "milLeft":J
    :cond_9
    :goto_5
    const-string v0, ""

    return-object v0
.end method
