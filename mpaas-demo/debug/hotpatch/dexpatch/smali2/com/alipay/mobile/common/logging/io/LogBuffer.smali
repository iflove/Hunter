.class public Lcom/alipay/mobile/common/logging/io/LogBuffer;
.super Ljava/lang/Object;
.source "LogBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogBuffer"


# instance fields
.field private bufferPath:Ljava/lang/String;

.field private bufferSize:I

.field private initptr:J

.field private isInited:Z

.field private mUseMmap:Z

.field private stringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(ZLjava/io/File;I)V
    .locals 3
    .param p1, "useMmap"    # Z
    .param p2, "bufferFile"    # Ljava/io/File;
    .param p3, "capacity"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInited:Z

    .line 31
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    .line 34
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->stringBuffer:Ljava/lang/StringBuffer;

    .line 42
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInited:Z

    const-string v2, "LogBuffer"

    if-eqz v1, :cond_0

    .line 43
    const-string v0, "LogBuffer is Inited !"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 46
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInited:Z

    .line 47
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->mUseMmap:Z

    .line 48
    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    .line 51
    :cond_1
    iput p3, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferSize:I

    .line 52
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->mUseMmap:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    invoke-static {v1, p3, v0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initNative(Ljava/lang/String;IZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "init error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    .line 60
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private native getContent(JLjava/lang/String;I)Ljava/lang/String;
.end method

.method private native getPosition(JLjava/lang/String;I)I
.end method

.method public static native initNative(Ljava/lang/String;IZ)J
.end method

.method private native releaseNative(JI)V
.end method

.method private native setPosition(JLjava/lang/String;II)V
.end method

.method private native writeNative(JLjava/lang/String;Ljava/lang/String;I)V
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/String;)V
    .locals 7
    .param p1, "log"    # Ljava/lang/String;

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInitMmapSuccess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 103
    :try_start_1
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    iget v6, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferSize:I

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->writeNative(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 108
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/io/LogBuffer;
    .end local p1    # "log":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBufferPath()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferSize:I

    return v0
.end method

.method public declared-synchronized getContent()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInitMmapSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferSize:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->getContent(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 121
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/io/LogBuffer;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .locals 4

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInitMmapSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferSize:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->getPosition(JLjava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 96
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/io/LogBuffer;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitMmapSuccess()Z
    .locals 6

    .line 63
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->mUseMmap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    return v1

    .line 66
    :cond_0
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInited:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    return v1

    .line 72
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_3
    :goto_0
    return v1
.end method

.method public release()V
    .locals 5

    .line 125
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 127
    :try_start_0
    iget v4, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferSize:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->releaseNative(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    .line 131
    :goto_0
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    .line 133
    :cond_0
    return-void
.end method

.method public declared-synchronized setLength(I)V
    .locals 7
    .param p1, "pos"    # I

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->isInitMmapSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->initptr:J

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferPath:Ljava/lang/String;

    iget v6, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->bufferSize:I

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->setPosition(JLjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 88
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/io/LogBuffer;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/io/LogBuffer;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 84
    .end local p1    # "pos":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->getContent()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/io/LogBuffer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
