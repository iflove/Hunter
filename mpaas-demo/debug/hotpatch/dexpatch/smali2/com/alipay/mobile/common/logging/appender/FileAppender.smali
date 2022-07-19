.class public abstract Lcom/alipay/mobile/common/logging/appender/FileAppender;
.super Lcom/alipay/mobile/common/logging/appender/Appender;
.source "FileAppender.java"


# instance fields
.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;
    .param p2, "logCategory"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/Appender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 87
    .local v2, "saveFile":Ljava/io/File;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {v2, p1, v0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    return v0

    .line 92
    .end local v2    # "saveFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->r:Z

    if-nez v2, :cond_1

    .line 94
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->r:Z

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    const-string v2, "Appender"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isMdapEncrypt"    # Z

    .line 57
    if-eqz p2, :cond_4

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogEncryptClient()Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 59
    .local v2, "client":Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 60
    const-string v0, "\\$\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 61
    .local v3, "logs":[Ljava/lang/String;
    move-object v3, v0

    array-length v0, v0

    .line 62
    .local v0, "len":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    move v6, v5

    move-object v5, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 64
    aget-object v7, v3, v6

    .line 65
    .local v1, "log":Ljava/lang/String;
    move-object v1, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 68
    invoke-interface {v2, v1}, Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v5, "enItem":Ljava/lang/String;
    move-object v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "$$"

    if-nez v7, :cond_0

    .line 70
    const-string v7, "1_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .end local v1    # "log":Ljava/lang/String;
    .end local v5    # "enItem":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->a(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 77
    .end local v0    # "len":I
    .end local v3    # "logs":[Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 80
    .end local v2    # "client":Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final declared-synchronized a([BI)Z
    .locals 11
    .param p1, "source"    # [B
    .param p2, "length"    # I

    monitor-enter p0

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "gzipData":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2, p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->gzipDataByBytes([BII)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 111
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v3

    .line 107
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-boolean v4, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->s:Z

    if-nez v4, :cond_0

    .line 108
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->s:Z

    .line 109
    const-string v4, "Appender"

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 112
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/FileAppender;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 113
    monitor-exit p0

    return v2

    .line 116
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->getInstance()Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v0, v2, v4}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->encrypt([BII)[B

    move-result-object v3

    .line 117
    .local v3, "encrypted":[B
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->getInstance()Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->getSecureSeed()[B

    move-result-object v4

    .line 119
    .local v4, "secureSeed":[B
    if-eqz v3, :cond_9

    if-nez v4, :cond_2

    goto/16 :goto_5

    .line 126
    :cond_2
    array-length v5, v4

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_3

    .line 127
    const-string v1, "Appender"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "the length of secure seed is too long: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 128
    monitor-exit p0

    return v2

    .line 131
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c()Ljava/io/File;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 132
    .local v5, "saveFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 134
    .local v6, "stream":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 135
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 137
    :cond_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 138
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 140
    .local v8, "bos":Ljava/io/BufferedOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    move-object v6, v9

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    array-length v9, v4

    int-to-short v9, v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 143
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 144
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 145
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    goto :goto_1

    .line 164
    :catchall_1
    move-exception v2

    .line 146
    :goto_1
    monitor-exit p0

    return v1

    .line 148
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v7

    .line 149
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_6
    iget-boolean v8, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->u:Z

    if-nez v8, :cond_6

    .line 150
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->u:Z

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    const-string v8, "applog"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v7, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_5

    .line 153
    const-string v1, "Appender"

    const-string v8, "applog can\'t work without permission WRITE_EXTERNAL_STORAGE."

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 155
    :cond_5
    const-string v1, "Appender"

    iget-object v8, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    invoke-static {v1, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 161
    :cond_6
    :goto_2
    if-eqz v6, :cond_7

    .line 163
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 166
    goto :goto_3

    .line 164
    :catchall_3
    move-exception v1

    .line 158
    :cond_7
    :goto_3
    monitor-exit p0

    return v2

    .line 161
    .end local v7    # "e":Ljava/lang/Throwable;
    :catchall_4
    move-exception v1

    if-eqz v6, :cond_8

    .line 163
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 166
    goto :goto_4

    .line 164
    :catchall_5
    move-exception v2

    .line 166
    :cond_8
    :goto_4
    :try_start_9
    throw v1

    .line 120
    .end local v5    # "saveFile":Ljava/io/File;
    .end local v6    # "stream":Ljava/io/DataOutputStream;
    :cond_9
    :goto_5
    iget-boolean v5, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->t:Z

    if-nez v5, :cond_a

    .line 121
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->t:Z

    .line 122
    const-string v1, "Appender"

    const-string v5, "HybridEncryption.encrypt occured error"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 124
    :cond_a
    monitor-exit p0

    return v2

    .line 102
    .end local v0    # "gzipData":[B
    .end local v3    # "encrypted":[B
    .end local v4    # "secureSeed":[B
    .end local p1    # "source":[B
    .end local p2    # "length":I
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract c()Ljava/io/File;
.end method

.method protected abstract d()Ljava/io/File;
.end method
