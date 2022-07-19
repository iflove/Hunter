.class public Lcom/alipay/mobile/common/logging/util/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;)Ljava/lang/String;
    .locals 4
    .param p0, "baseOnDir"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "handler"    # Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;

    .line 119
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    return-object v0

    .line 123
    :cond_0
    if-nez p0, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 127
    :cond_1
    const/4 v1, 0x0

    .line 128
    .local v1, "absFileName":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 130
    :try_start_0
    invoke-interface {p2, p1}, Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;->handleFileNameInZip(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 133
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v2

    .line 135
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 141
    move-object p1, v2

    if-eqz v2, :cond_4

    .line 144
    invoke-virtual {p1, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v0, "targetName":Ljava/lang/String;
    move-object v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .end local v0    # "targetName":Ljava/lang/String;
    goto :goto_1

    .line 153
    :cond_4
    return-object v1
.end method

.method public static unCompressGzip(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;

    .line 157
    if-nez p0, :cond_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 163
    .local v1, "ungzip":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 164
    const/16 v2, 0x100

    new-array v2, v2, [B

    .line 166
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-ltz v3, :cond_1

    .line 167
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    .line 174
    .end local v2    # "buffer":[B
    .end local v4    # "n":I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v2

    .line 180
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    :goto_2
    goto :goto_4

    .line 181
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 169
    :catchall_2
    move-exception v2

    .line 174
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 176
    goto :goto_3

    .line 175
    :catchall_3
    move-exception v2

    .line 178
    :goto_3
    if-eqz v1, :cond_2

    .line 180
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 186
    :cond_2
    :goto_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;)V
    .locals 17
    .param p0, "willZipList"    # Ljava/util/List;
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "baseOnDir"    # Ljava/io/File;
    .param p3, "handler"    # Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;",
            ")V"
        }
    .end annotation

    .line 31
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v1, :cond_9

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 34
    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 38
    .local v4, "tarFile":Ljava/io/File;
    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 42
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v5, v3

    .line 43
    .local v5, "tarDir":Ljava/io/File;
    move-object v5, v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v5    # "tarDir":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 50
    :goto_0
    const/4 v5, 0x0

    .line 51
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v6, 0x0

    .line 53
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 54
    const/16 v0, 0x2000

    new-array v0, v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object v7, v0

    .line 56
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

    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 58
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

    .line 62
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    :try_start_3
    invoke-static {v11, v12, v13}, Lcom/alipay/mobile/common/logging/util/ZipUtil;->a(Ljava/io/File;Ljava/io/File;Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 63
    .local v14, "zeName":Ljava/lang/String;
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 64
    .local v6, "ze":Ljava/util/zip/ZipEntry;
    move-object v6, v0

    move-object/from16 v16, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .local v16, "is":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 65
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 66
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 68
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

    .line 70
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

    .line 71
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v0, v10

    goto :goto_2

    .line 74
    :cond_1
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 77
    goto :goto_3

    .line 75
    :catchall_1
    move-exception v0

    .line 80
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 83
    goto :goto_4

    .line 81
    :catchall_2
    move-exception v0

    .line 85
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 88
    goto :goto_5

    .line 86
    :catchall_3
    move-exception v0

    .line 56
    .end local v6    # "ze":Ljava/util/zip/ZipEntry;
    .end local v10    # "readLen":I
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "zeName":Ljava/lang/String;
    :goto_5
    move-object/from16 v16, v8

    goto :goto_6

    .line 90
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

    .line 58
    .restart local v3    # "i":I
    .restart local v7    # "buf":[B
    .restart local v12    # "file":Ljava/io/File;
    :cond_2
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v16, v9

    const/4 v9, 0x0

    .line 56
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

    .line 94
    .end local v3    # "i":I
    .end local v7    # "buf":[B
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    if-eqz v16, :cond_4

    .line 96
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 99
    goto :goto_7

    .line 97
    :catchall_7
    move-exception v0

    .line 103
    :cond_4
    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 106
    return-void

    .line 104
    :catchall_8
    move-exception v0

    .line 106
    return-void

    .line 90
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

    .line 91
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
    .end local p3    # "handler":Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 94
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v4    # "tarFile":Ljava/io/File;
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local p0    # "willZipList":Ljava/util/List;
    .restart local p1    # "zipFilePath":Ljava/lang/String;
    .restart local p2    # "baseOnDir":Ljava/io/File;
    .restart local p3    # "handler":Lcom/alipay/mobile/common/logging/util/ZipUtil$ZipFileHandler;
    :catchall_b
    move-exception v0

    move-object v3, v0

    if-eqz v6, :cond_5

    .line 96
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 99
    goto :goto_a

    .line 97
    :catchall_c
    move-exception v0

    .line 101
    :cond_5
    :goto_a
    if-eqz v5, :cond_6

    .line 103
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 106
    goto :goto_b

    .line 104
    :catchall_d
    move-exception v0

    .line 106
    :cond_6
    :goto_b
    throw v3

    .line 39
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

    .line 34
    .end local v4    # "tarFile":Ljava/io/File;
    :cond_8
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    .line 35
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v3, "zipFilePath is none"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_9
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    .line 32
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v3, "willZipList is empty"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
