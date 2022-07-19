.class public Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;
.super Ljava/lang/Object;
.source "ThreadSnapshotCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "filePath"    # Ljava/io/File;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "stream":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v1, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 108
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 109
    const/16 v2, 0x2000

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    .line 112
    .local v2, "data":[B
    .local v4, "length":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 113
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 114
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    nop

    .end local v5    # "str":Ljava/lang/String;
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v5

    .line 116
    :goto_1
    return-object v3

    .line 118
    .end local v2    # "data":[B
    .end local v4    # "length":I
    :catchall_1
    move-exception v2

    .line 122
    if-eqz v0, :cond_1

    .line 124
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 127
    :goto_2
    goto :goto_3

    .line 125
    :catchall_2
    move-exception v2

    goto :goto_2

    .line 130
    :cond_1
    :goto_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;)V
    .locals 3
    .param p0, "statContent"    # Ljava/lang/String;
    .param p1, "threadSnapshot"    # Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "elements":[Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 56
    :cond_0
    if-eqz v0, :cond_3

    .line 57
    iget v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->tid:I

    if-gtz v1, :cond_1

    .line 58
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->tid:I

    .line 60
    :cond_1
    iget-object v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 61
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->name:Ljava/lang/String;

    .line 63
    :cond_2
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->state:Ljava/lang/String;

    .line 65
    const/16 v1, 0xd

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->userUseTime:J

    .line 66
    const/16 v1, 0xe

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->sysUseTime:J

    .line 67
    const/16 v1, 0xf

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->userWaitTime:J

    .line 68
    const/16 v1, 0x10

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->sysWaitTime:J

    .line 69
    const/16 v1, 0x11

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->priority:I

    .line 70
    const/16 v1, 0x12

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->nice:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    return-void

    .line 75
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "statContent"    # Ljava/lang/String;

    .line 78
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 79
    .local v0, "leftIndex":I
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 80
    .local v1, "rightIndex":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "leftPart":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "namePart":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "rightPart":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 85
    .local v6, "elements":[Ljava/lang/String;
    move-object v6, v5

    const/4 v7, 0x1

    aput-object v3, v5, v7

    .line 86
    return-object v6
.end method


# virtual methods
.method public getSnapshot(I)Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;
    .locals 6
    .param p1, "tid"    # I

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 17
    .local v0, "pid":I
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/task/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {v1}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "statContent":Ljava/lang/String;
    new-instance v2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;-><init>()V

    const/4 v3, 0x0

    .line 20
    .local v3, "threadSnapshot":Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;
    move-object v3, v2

    iput p1, v2, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->tid:I

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->uptime:J

    .line 22
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;->name:Ljava/lang/String;

    .line 25
    :cond_0
    invoke-static {v1, v3}, Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshotCatcher;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/pipeline/analysis/ThreadSnapshot;)V

    .line 26
    return-object v3
.end method
