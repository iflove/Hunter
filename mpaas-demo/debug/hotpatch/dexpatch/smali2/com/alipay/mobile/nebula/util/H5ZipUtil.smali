.class public Lcom/alipay/mobile/nebula/util/H5ZipUtil;
.super Ljava/lang/Object;
.source "H5ZipUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ZipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static securityCheckEnabled()Z
    .locals 4

    .line 244
    const/4 v0, 0x1

    .line 245
    .local v0, "needSecurityCheck":Z
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 247
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "h5_amrUnzipSecCheck"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "NO"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 250
    :cond_0
    return v0
.end method

.method public static unZip(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 11
    .param p0, "isUnZip"    # Ljava/io/InputStream;
    .param p1, "destPath"    # Ljava/lang/String;

    const-string v0, "H5ZipUtil"

    .line 87
    const/4 v1, 0x1

    .line 88
    .local v1, "unZipState":Z
    const/4 v2, 0x0

    .local v2, "zipIn":Ljava/util/zip/ZipInputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v5, v3

    .line 92
    .local v5, "file":Ljava/io/File;
    const/16 v6, 0x800

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v6

    .line 94
    .local v6, "buf":[B
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v7

    .line 95
    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    move-object v4, v7

    if-eqz v7, :cond_4

    .line 96
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "entryName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->securityCheckEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->pathSecurityCheck(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 98
    const-string/jumbo v8, "zipEntry is illegal"

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    goto :goto_0

    .line 101
    :cond_0
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 102
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 103
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 107
    .local v3, "parent":Ljava/io/File;
    move-object v3, v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :cond_2
    const/4 v8, 0x0

    .line 112
    .local v8, "fileOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v9

    .line 113
    :goto_1
    invoke-virtual {v2, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "readedBytes":I
    if-lez v9, :cond_3

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    :cond_3
    :try_start_2
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    goto :goto_0

    .line 117
    .end local v10    # "readedBytes":I
    :catchall_0
    move-exception v9

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v1    # "unZipState":Z
    .end local v2    # "zipIn":Ljava/util/zip/ZipInputStream;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "buf":[B
    .end local p0    # "isUnZip":Ljava/io/InputStream;
    .end local p1    # "destPath":Ljava/lang/String;
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .end local v3    # "parent":Ljava/io/File;
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "unZipState":Z
    .restart local v2    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "buf":[B
    .restart local p0    # "isUnZip":Ljava/io/InputStream;
    .restart local p1    # "destPath":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    const/4 v1, 0x0

    .line 125
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 126
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    nop

    .line 128
    return v1

    .line 125
    :goto_2
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 126
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static unZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "unZipFileName"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 222
    const-string v0, "exception"

    const-string v1, "H5ZipUtil"

    const/4 v2, 0x0

    .line 224
    .local v2, "unZipState":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 226
    .local v3, "startTime":J
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->isNIOEnabled()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "ms, dest - "

    if-eqz v5, :cond_0

    .line 227
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    move v2, v5

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "NIO unzip: time - "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->unZip(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v5

    move v2, v5

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Stream unzip: time - "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "startTime":J
    goto :goto_0

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 236
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 240
    :goto_1
    return v2
.end method

.method public static unZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 24
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "destPath"    # Ljava/lang/String;

    move-object/from16 v1, p0

    const-string v2, "H5ZipUtil"

    .line 132
    const/4 v3, 0x1

    .local v3, "unZipState":Z
    const/4 v0, 0x0

    move-object v4, v0

    .line 134
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v5, 0x0

    .local v5, "zipStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    move v7, v6

    .local v7, "readedBytes":I
    move-object v8, v0

    .line 137
    .local v8, "file":Ljava/io/File;
    const/16 v9, 0x2000

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v9

    .line 139
    .local v9, "buffer":[B
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 140
    .local v10, "entries":Ljava/util/Enumeration;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 141
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/zip/ZipEntry;

    .line 142
    move-object v4, v11

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "entryName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ZipUtil;->securityCheckEnabled()Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v12, :cond_0

    :try_start_2
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->pathSecurityCheck(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 144
    const-string/jumbo v12, "zipEntry is illegal"

    invoke-static {v2, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 145
    goto :goto_0

    .line 148
    :cond_0
    :try_start_3
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object/from16 v14, p1

    :try_start_4
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v12

    .line 149
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v12, :cond_1

    .line 150
    :try_start_5
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    goto :goto_0

    .line 203
    .end local v10    # "entries":Ljava/util/Enumeration;
    .end local v11    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_b

    .line 153
    .restart local v10    # "entries":Ljava/util/Enumeration;
    .restart local v11    # "entryName":Ljava/lang/String;
    :cond_1
    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 154
    .local v0, "parent":Ljava/io/File;
    move-object v13, v12

    .end local v0    # "parent":Ljava/io/File;
    .local v13, "parent":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v0, :cond_2

    .line 155
    :try_start_7
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 159
    :cond_2
    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    const-wide/32 v17, 0x10000

    cmp-long v0, v15, v17

    if-ltz v0, :cond_6

    .line 160
    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v15

    const-wide/32 v17, 0x500000

    cmp-long v0, v15, v17

    if-lez v0, :cond_3

    goto/16 :goto_4

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "unzip "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 177
    const/4 v12, 0x0

    .line 178
    .local v12, "mappedBuffer":Ljava/nio/MappedByteBuffer;
    const/4 v15, 0x0

    .line 179
    .local v15, "fileOut":Ljava/io/RandomAccessFile;
    const/16 v16, 0x0

    .line 181
    .local v16, "fileChannel":Ljava/nio/channels/FileChannel;
    :try_start_a
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    invoke-direct {v0, v8, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    move-object v15, v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    .line 183
    move-object/from16 v16, v18

    sget-object v19, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v20, 0x0

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    move-object v12, v0

    .line 184
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 185
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-lez v0, :cond_4

    if-eqz v12, :cond_4

    if-eqz v5, :cond_4

    .line 186
    :goto_1
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v7, v0

    if-lez v0, :cond_5

    .line 187
    const/4 v6, 0x0

    invoke-virtual {v12, v9, v6, v7}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 190
    :cond_4
    const-string v0, " invalid ZipEntry size or mapped buffer!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 195
    :cond_5
    :try_start_b
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 196
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 198
    :goto_2
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_3

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_c
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 195
    .end local v0    # "e":Ljava/lang/Throwable;
    :try_start_d
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 196
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 199
    :goto_3
    move-object v0, v13

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 195
    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->freeMappedBuffer(Ljava/nio/MappedByteBuffer;)V

    .line 196
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 198
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v3    # "unZipState":Z
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v5    # "zipStream":Ljava/io/InputStream;
    .end local v7    # "readedBytes":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "buffer":[B
    .end local p0    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p1    # "destPath":Ljava/lang/String;
    throw v6
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 161
    .end local v12    # "mappedBuffer":Ljava/nio/MappedByteBuffer;
    .end local v15    # "fileOut":Ljava/io/RandomAccessFile;
    .end local v16    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v3    # "unZipState":Z
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "zipStream":Ljava/io/InputStream;
    .restart local v7    # "readedBytes":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "buffer":[B
    .restart local p0    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p1    # "destPath":Ljava/lang/String;
    :cond_6
    :goto_4
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "file size: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object v12, v5

    .end local v5    # "zipStream":Ljava/io/InputStream;
    .local v12, "zipStream":Ljava/io/InputStream;
    :try_start_f
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 163
    const/4 v5, 0x0

    .line 165
    .local v5, "fileOut":Ljava/io/FileOutputStream;
    :try_start_10
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v0

    .line 166
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v6, v0

    .line 167
    .end local v12    # "zipStream":Ljava/io/InputStream;
    .local v6, "zipStream":Ljava/io/InputStream;
    :goto_5
    :try_start_11
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v7, v0

    if-lez v0, :cond_7

    .line 168
    const/4 v12, 0x0

    invoke-virtual {v5, v9, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_5

    .line 171
    :cond_7
    const/4 v12, 0x0

    :try_start_12
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 172
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 173
    move-object v5, v6

    move-object v0, v13

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 208
    .end local v5    # "fileOut":Ljava/io/FileOutputStream;
    .end local v10    # "entries":Ljava/util/Enumeration;
    .end local v11    # "entryName":Ljava/lang/String;
    .end local v13    # "parent":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object v5, v6

    move-object v6, v0

    goto/16 :goto_e

    .line 203
    :catch_1
    move-exception v0

    move-object v5, v6

    goto :goto_b

    .line 171
    .restart local v5    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v10    # "entries":Ljava/util/Enumeration;
    .restart local v11    # "entryName":Ljava/lang/String;
    .restart local v13    # "parent":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object v12, v6

    goto :goto_6

    .end local v6    # "zipStream":Ljava/io/InputStream;
    .restart local v12    # "zipStream":Ljava/io/InputStream;
    :catchall_4
    move-exception v0

    :goto_6
    :try_start_13
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 172
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v3    # "unZipState":Z
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "readedBytes":I
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "buffer":[B
    .end local v12    # "zipStream":Ljava/io/InputStream;
    .end local p0    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p1    # "destPath":Ljava/lang/String;
    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 208
    .end local v5    # "fileOut":Ljava/io/FileOutputStream;
    .end local v10    # "entries":Ljava/util/Enumeration;
    .end local v11    # "entryName":Ljava/lang/String;
    .end local v13    # "parent":Ljava/io/File;
    .restart local v3    # "unZipState":Z
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "readedBytes":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "buffer":[B
    .restart local v12    # "zipStream":Ljava/io/InputStream;
    .restart local p0    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p1    # "destPath":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v6, v0

    move-object v5, v12

    goto :goto_e

    .line 203
    :catch_2
    move-exception v0

    move-object v5, v12

    goto :goto_b

    .line 208
    .end local v12    # "zipStream":Ljava/io/InputStream;
    .local v5, "zipStream":Ljava/io/InputStream;
    :catchall_6
    move-exception v0

    goto :goto_9

    .line 203
    :catch_3
    move-exception v0

    goto :goto_a

    .line 140
    .restart local v10    # "entries":Ljava/util/Enumeration;
    :cond_8
    move-object/from16 v14, p1

    move-object v12, v5

    .line 208
    .end local v5    # "zipStream":Ljava/io/InputStream;
    .end local v10    # "entries":Ljava/util/Enumeration;
    .restart local v12    # "zipStream":Ljava/io/InputStream;
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 210
    if-eqz v1, :cond_9

    .line 212
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    .line 215
    :goto_7
    goto :goto_8

    .line 213
    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 214
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 218
    :cond_9
    :goto_8
    move-object v5, v12

    goto :goto_d

    .line 208
    .end local v12    # "zipStream":Ljava/io/InputStream;
    .restart local v5    # "zipStream":Ljava/io/InputStream;
    :catchall_7
    move-exception v0

    move-object/from16 v14, p1

    :goto_9
    move-object v12, v5

    move-object v6, v0

    .end local v5    # "zipStream":Ljava/io/InputStream;
    .restart local v12    # "zipStream":Ljava/io/InputStream;
    goto :goto_e

    .line 203
    .end local v12    # "zipStream":Ljava/io/InputStream;
    .restart local v5    # "zipStream":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object/from16 v14, p1

    :goto_a
    move-object v12, v5

    .end local v5    # "zipStream":Ljava/io/InputStream;
    .restart local v12    # "zipStream":Ljava/io/InputStream;
    goto :goto_b

    .line 208
    .end local v12    # "zipStream":Ljava/io/InputStream;
    .restart local v5    # "zipStream":Ljava/io/InputStream;
    :catchall_8
    move-exception v0

    move-object/from16 v14, p1

    move-object v6, v0

    goto :goto_e

    .line 203
    :catch_6
    move-exception v0

    move-object/from16 v14, p1

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :goto_b
    :try_start_15
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 206
    const/4 v3, 0x0

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 210
    if-eqz v1, :cond_a

    .line 212
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    .line 215
    :goto_c
    goto :goto_d

    .line 213
    :catch_7
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 214
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 218
    :cond_a
    :goto_d
    return v3

    .line 208
    :catchall_9
    move-exception v0

    move-object v6, v0

    :goto_e
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 210
    if-eqz v1, :cond_b

    .line 212
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    .line 215
    goto :goto_f

    .line 213
    :catch_8
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 214
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_f
    throw v6
.end method
