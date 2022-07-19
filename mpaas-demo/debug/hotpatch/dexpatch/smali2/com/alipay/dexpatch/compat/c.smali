.class public final Lcom/alipay/dexpatch/compat/c;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 11
    invoke-static {p0}, Lcom/alipay/dexpatch/compat/c;->b(Ljava/io/File;)[B

    move-result-object v0

    .line 13
    .local v0, "data":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    .local v0, "data":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 71
    nop

    .line 72
    invoke-static {p0, v0}, Lcom/alipay/dexpatch/compat/c;->a(Ljava/io/File;[B)V

    .line 73
    return-void

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static a(Ljava/io/File;[B)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "stream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 82
    move-object v0, v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 83
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v1

    .line 92
    return-void

    .line 84
    :catchall_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/OutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "data":[B
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "stream":Ljava/io/OutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "data":[B
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    .line 89
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 92
    goto :goto_0

    .line 90
    :catchall_3
    move-exception v2

    .line 92
    :cond_1
    :goto_0
    throw v1
.end method

.method private static b(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 20
    const/4 v0, 0x0

    .line 23
    .local v0, "stream":Ljava/io/FileInputStream;
    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    .line 27
    new-array v1, v5, [B

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    move-object v0, v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 32
    .local v1, "avail":I
    const/4 v2, 0x0

    .line 33
    .local v2, "pos":I
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 36
    .local v3, "data":[B
    :goto_0
    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v2, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 37
    .local v4, "amt":I
    move v4, v6

    if-lez v6, :cond_3

    .line 41
    add-int/2addr v2, v4

    .line 42
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 44
    move v1, v6

    array-length v7, v3

    sub-int/2addr v7, v2

    if-le v6, v7, :cond_2

    .line 45
    add-int v6, v2, v1

    new-array v6, v6, [B

    .line 46
    .local v6, "tmp":[B
    invoke-static {v3, v5, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    move-object v3, v6

    .line 49
    .end local v4    # "amt":I
    .end local v6    # "tmp":[B
    :cond_2
    goto :goto_0

    .line 50
    :cond_3
    nop

    .line 57
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v4

    .line 50
    :goto_1
    return-object v3

    .line 52
    .end local v1    # "avail":I
    .end local v2    # "pos":I
    .end local v3    # "data":[B
    :catchall_1
    move-exception v1

    .line 53
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    .line 57
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 60
    goto :goto_2

    .line 58
    :catchall_3
    move-exception v2

    .line 60
    :cond_4
    :goto_2
    throw v1

    .line 24
    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method
