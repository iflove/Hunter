.class public Lcom/alipay/mobile/common/transport/utils/GzipUtils;
.super Ljava/lang/Object;
.source "GzipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toGzip([B)[B
    .locals 10
    .param p0, "content"    # [B

    const-string v0, "GzipUtils"

    const/4 v1, 0x0

    .line 21
    .local v1, "gzipData":[B
    const/4 v2, 0x0

    .line 22
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 23
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 25
    .local v4, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v5

    .line 26
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v5

    .line 27
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 28
    const/16 v5, 0x1000

    new-array v5, v5, [B

    const/4 v6, 0x0

    move v7, v6

    .line 30
    .local v5, "buf":[B
    .local v7, "num":I
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v8

    move v7, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 31
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 34
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 35
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v1, v6

    .line 42
    .end local v5    # "buf":[B
    .end local v7    # "num":I
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v5

    .line 44
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    goto :goto_2

    .line 51
    :catchall_1
    move-exception v5

    .line 52
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 63
    :goto_3
    goto :goto_4

    .line 60
    :catchall_2
    move-exception v5

    .line 61
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 66
    :goto_4
    return-object v1

    .line 40
    :catchall_3
    move-exception v5

    goto :goto_5

    .line 36
    :catch_0
    move-exception v5

    .line 37
    .local v5, "ex":Ljava/io/IOException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "toGzip ex:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    nop

    .end local v1    # "gzipData":[B
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local p0    # "content":[B
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 40
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v1    # "gzipData":[B
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local p0    # "content":[B
    :goto_5
    if-eqz v2, :cond_1

    .line 42
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 45
    goto :goto_6

    .line 43
    :catchall_4
    move-exception v6

    .line 44
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_6
    if-eqz v3, :cond_2

    .line 50
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 54
    goto :goto_7

    .line 51
    :catchall_5
    move-exception v6

    .line 52
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_7
    if-eqz v4, :cond_3

    .line 59
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 63
    goto :goto_8

    .line 60
    :catchall_6
    move-exception v6

    .line 61
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_8
    throw v5
.end method

.method public static unGzip([B)[B
    .locals 11
    .param p0, "data"    # [B

    const-string v0, "GzipUtils"

    const/4 v1, 0x0

    .line 72
    .local v1, "unGzipData":[B
    const/4 v2, 0x0

    .line 73
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 74
    .local v3, "gis":Ljava/util/zip/GZIPInputStream;
    const/4 v4, 0x0

    .line 76
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v5

    .line 77
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    .line 78
    const/16 v5, 0x1000

    new-array v6, v5, [B

    .local v6, "buf":[B
    const/4 v7, 0x0

    move v8, v7

    .line 80
    .local v8, "num":I
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v9

    .line 81
    :goto_0
    invoke-virtual {v3, v6, v7, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 82
    invoke-virtual {v4, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v1, v5

    .line 85
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 92
    .end local v6    # "buf":[B
    .end local v8    # "num":I
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v5

    .line 94
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    goto :goto_2

    .line 101
    :catchall_1
    move-exception v5

    .line 102
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 111
    :goto_3
    goto :goto_4

    .line 109
    :catchall_2
    move-exception v5

    .line 110
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 115
    :goto_4
    return-object v1

    .line 90
    :catchall_3
    move-exception v5

    goto :goto_5

    .line 86
    :catch_0
    move-exception v5

    .line 87
    .local v5, "ex":Ljava/io/IOException;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unGzip ex:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    nop

    .end local v1    # "unGzipData":[B
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "gis":Ljava/util/zip/GZIPInputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "data":[B
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 90
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v1    # "unGzipData":[B
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "data":[B
    :goto_5
    if-eqz v4, :cond_1

    .line 92
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 95
    goto :goto_6

    .line 93
    :catchall_4
    move-exception v6

    .line 94
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_6
    if-eqz v3, :cond_2

    .line 100
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 103
    goto :goto_7

    .line 101
    :catchall_5
    move-exception v6

    .line 102
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_7
    if-eqz v2, :cond_3

    .line 108
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 111
    goto :goto_8

    .line 109
    :catchall_6
    move-exception v6

    .line 110
    .restart local v6    # "e":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_8
    throw v5
.end method
