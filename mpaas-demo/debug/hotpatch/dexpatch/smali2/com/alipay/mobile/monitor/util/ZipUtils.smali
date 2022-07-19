.class public Lcom/alipay/mobile/monitor/util/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)Ljava/lang/String;
    .locals 4
    .param p0, "baseOnDir"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "handler"    # Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;

    .line 118
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 119
    return-object v0

    .line 122
    :cond_0
    if-nez p0, :cond_1

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 126
    :cond_1
    const/4 v1, 0x0

    .line 127
    .local v1, "absFileName":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 129
    :try_start_0
    invoke-interface {p2, p1}, Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;->handleFileNameInZip(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 132
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v2

    .line 134
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 139
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 140
    move-object p1, v2

    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {p1, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v0, "targetName":Ljava/lang/String;
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .end local v0    # "targetName":Ljava/lang/String;
    goto :goto_1

    .line 152
    :cond_4
    return-object v1
.end method

.method public static gzipDataByBytes([BII)[B
    .locals 5
    .param p0, "sourceData"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    const/4 v0, 0x0

    .line 175
    .local v0, "gzipData":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 176
    .local v1, "byteOutput":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 179
    .local v2, "gzipOutput":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 180
    move-object v2, v3

    invoke-virtual {v3, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 181
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 182
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v0, v3

    .line 190
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v3

    .line 196
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    goto :goto_1

    .line 197
    :catchall_1
    move-exception v3

    .line 200
    nop

    .line 201
    :goto_1
    return-object v0

    .line 184
    :catchall_2
    move-exception v3

    .line 185
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "gzipData":[B
    .end local v1    # "byteOutput":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzipOutput":Ljava/util/zip/GZIPOutputStream;
    .end local p0    # "sourceData":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 188
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "gzipData":[B
    .restart local v1    # "byteOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gzipOutput":Ljava/util/zip/GZIPOutputStream;
    .restart local p0    # "sourceData":[B
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    :catchall_3
    move-exception v3

    if-eqz v2, :cond_0

    .line 190
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 193
    goto :goto_2

    .line 191
    :catchall_4
    move-exception v4

    .line 196
    :cond_0
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 199
    goto :goto_3

    .line 197
    :catchall_5
    move-exception v4

    .line 199
    :goto_3
    throw v3
.end method

.method public static gzipDataByString(Ljava/lang/String;)[B
    .locals 3
    .param p0, "sourceString"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 162
    .local v0, "sourceData":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 165
    nop

    .line 166
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/monitor/util/ZipUtils;->gzipDataByBytes([BII)[B

    move-result-object v1

    return-object v1

    .line 163
    :catchall_0
    move-exception v1

    .line 164
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static ungzipDataToBytes([BII)[B
    .locals 8
    .param p0, "gzipData"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    const/4 v0, 0x0

    .line 223
    .local v0, "sourceData":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 224
    .local v1, "byteOutput":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 225
    .local v3, "byteInput":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 228
    .local v4, "gzipInput":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 229
    new-array v2, v2, [B

    const/4 v5, 0x0

    move v6, v5

    .line 233
    .local v2, "buf":[B
    .local v6, "len":I
    :goto_0
    invoke-virtual {v4, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v7

    .line 234
    move v6, v7

    if-ltz v7, :cond_0

    .line 237
    invoke-virtual {v1, v2, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v0, v5

    .line 247
    .end local v2    # "buf":[B
    .end local v6    # "len":I
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    goto :goto_1

    .line 248
    :catchall_0
    move-exception v2

    .line 253
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    goto :goto_2

    .line 254
    :catchall_1
    move-exception v2

    .line 258
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 261
    goto :goto_3

    .line 259
    :catchall_2
    move-exception v2

    .line 262
    nop

    .line 263
    :goto_3
    return-object v0

    .line 241
    :catchall_3
    move-exception v2

    .line 242
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "sourceData":[B
    .end local v1    # "byteOutput":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "byteInput":Ljava/io/ByteArrayInputStream;
    .end local v4    # "gzipInput":Ljava/util/zip/GZIPInputStream;
    .end local p0    # "gzipData":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 245
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "sourceData":[B
    .restart local v1    # "byteOutput":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteInput":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "gzipInput":Ljava/util/zip/GZIPInputStream;
    .restart local p0    # "gzipData":[B
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    :catchall_4
    move-exception v2

    if-eqz v4, :cond_1

    .line 247
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 250
    goto :goto_4

    .line 248
    :catchall_5
    move-exception v5

    .line 253
    :cond_1
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 256
    goto :goto_5

    .line 254
    :catchall_6
    move-exception v5

    .line 258
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 261
    goto :goto_6

    .line 259
    :catchall_7
    move-exception v5

    .line 261
    :goto_6
    throw v2
.end method

.method public static ungzipDataToString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "gzipData"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 209
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/monitor/util/ZipUtils;->ungzipDataToBytes([BII)[B

    move-result-object v0

    .line 211
    .local v0, "sourceData":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 212
    :catchall_0
    move-exception v1

    .line 213
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)V
    .locals 17
    .param p0, "willZipList"    # Ljava/util/List;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "baseOnDir"    # Ljava/io/File;
    .param p3, "handler"    # Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;",
            ")V"
        }
    .end annotation

    .line 30
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v1, :cond_9

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 37
    .local v4, "tarFile":Ljava/io/File;
    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 41
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v5, v3

    .line 42
    .local v5, "tarDir":Ljava/io/File;
    move-object v5, v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v5    # "tarDir":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 49
    :goto_0
    const/4 v5, 0x0

    .line 50
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v6, 0x0

    .line 52
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 53
    const/16 v0, 0x2000

    new-array v0, v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object v7, v0

    .line 55
    .local v7, "buf":[B
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v9, v6

    const/4 v10, 0x0

    move-object v6, v3

    move v3, v0

    move-object v0, v6

    .end local v0    # "i":I
    .end local v6    # "is":Ljava/io/InputStream;
    .local v3, "i":I
    .local v9, "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_3

    .line 56
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 57
    .local v0, "file":Ljava/io/File;
    move-object v12, v11

    .end local v0    # "file":Ljava/io/File;
    .local v12, "file":Ljava/io/File;
    if-eqz v11, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-eqz v0, :cond_2

    .line 61
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    :try_start_3
    invoke-static {v11, v12, v13}, Lcom/alipay/mobile/monitor/util/ZipUtils;->a(Ljava/io/File;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 62
    .local v14, "zeName":Ljava/lang/String;
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 63
    .local v6, "ze":Ljava/util/zip/ZipEntry;
    move-object v6, v0

    move-object/from16 v16, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .local v16, "is":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 64
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 65
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 67
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v8, v0

    .end local v16    # "is":Ljava/io/InputStream;
    .local v8, "is":Ljava/io/InputStream;
    move v0, v10

    .line 69
    .local v0, "readLen":I
    :goto_2
    :try_start_5
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .end local v0    # "readLen":I
    .local v10, "readLen":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    .line 70
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v0, v10

    goto :goto_2

    .line 73
    :cond_1
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 76
    goto :goto_3

    .line 74
    :catchall_1
    move-exception v0

    .line 79
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 82
    goto :goto_4

    .line 80
    :catchall_2
    move-exception v0

    .line 84
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 87
    goto :goto_5

    .line 85
    :catchall_3
    move-exception v0

    .line 55
    .end local v6    # "ze":Ljava/util/zip/ZipEntry;
    .end local v10    # "readLen":I
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "zeName":Ljava/lang/String;
    :goto_5
    move-object/from16 v16, v8

    goto :goto_6

    .line 89
    .end local v3    # "i":I
    .end local v7    # "buf":[B
    :catchall_4
    move-exception v0

    move-object v6, v8

    goto :goto_9

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_9

    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_6
    move-exception v0

    goto :goto_8

    .line 57
    .restart local v3    # "i":I
    .restart local v7    # "buf":[B
    .restart local v12    # "file":Ljava/io/File;
    :cond_2
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v16, v9

    const/4 v9, 0x0

    .line 55
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v12    # "file":Ljava/io/File;
    .restart local v16    # "is":Ljava/io/InputStream;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object v0, v12

    move-object/from16 v9, v16

    goto/16 :goto_1

    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_3
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v16, v9

    .line 93
    .end local v3    # "i":I
    .end local v7    # "buf":[B
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    if-eqz v16, :cond_4

    .line 95
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 98
    goto :goto_7

    .line 96
    :catchall_7
    move-exception v0

    .line 102
    :cond_4
    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 105
    return-void

    .line 103
    :catchall_8
    move-exception v0

    .line 105
    return-void

    .line 89
    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_9
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    :goto_8
    move-object/from16 v16, v9

    move-object/from16 v6, v16

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    goto :goto_9

    .end local v16    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :catchall_a
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    .line 90
    .local v0, "t":Ljava/lang/Throwable;
    :goto_9
    :try_start_b
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "tarFile":Ljava/io/File;
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local p0    # "willZipList":Ljava/util/List;
    .end local p1    # "zipFilePath":Ljava/lang/String;
    .end local p2    # "baseOnDir":Ljava/io/File;
    .end local p3    # "handler":Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 93
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v4    # "tarFile":Ljava/io/File;
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local p0    # "willZipList":Ljava/util/List;
    .restart local p1    # "zipFilePath":Ljava/lang/String;
    .restart local p2    # "baseOnDir":Ljava/io/File;
    .restart local p3    # "handler":Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;
    :catchall_b
    move-exception v0

    move-object v3, v0

    if-eqz v6, :cond_5

    .line 95
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 98
    goto :goto_a

    .line 96
    :catchall_c
    move-exception v0

    .line 100
    :cond_5
    :goto_a
    if-eqz v5, :cond_6

    .line 102
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 105
    goto :goto_b

    .line 103
    :catchall_d
    move-exception v0

    .line 105
    :cond_6
    :goto_b
    throw v3

    .line 38
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_7
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "zipFilePath is directory: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    .end local v4    # "tarFile":Ljava/io/File;
    :cond_8
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    .line 34
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v3, "zipFilePath is none"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_9
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    .line 31
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v3, "willZipList is empty"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
