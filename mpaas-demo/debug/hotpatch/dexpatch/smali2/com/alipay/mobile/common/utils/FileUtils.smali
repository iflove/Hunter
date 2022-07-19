.class public Lcom/alipay/mobile/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I

    .line 76
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 77
    .local v0, "width":I
    const/4 v1, 0x1

    .line 79
    .local v1, "inSampleSize":I
    if-le v0, p1, :cond_0

    .line 80
    int-to-float v2, v0

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 81
    move v1, v2

    .line 83
    :cond_0
    return v1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    const/4 v0, 0x0

    .line 125
    .local v0, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/utils/FileUtils;->copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 129
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 130
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .end local v0    # "result":Z
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "result":Z
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "FileUtils"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const/4 v0, 0x0

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method public static copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z
    .locals 10
    .param p0, "inputStream"    # Ljava/io/FileInputStream;
    .param p1, "destFile"    # Ljava/io/File;

    const-string/jumbo v0, "outputStream.close exception. "

    const-string v1, "FileUtils"

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 147
    .local v3, "parentFile":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 152
    .end local v3    # "parentFile":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 154
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    move-object v2, v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 156
    .local v9, "outputChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    .local v4, "inputChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v5, 0x0

    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 161
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    nop

    .line 169
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 172
    goto :goto_1

    .line 170
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 160
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 161
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    .end local v4    # "inputChannel":Ljava/nio/channels/FileChannel;
    .end local v9    # "outputChannel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 164
    :catch_1
    move-exception v3

    .line 165
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "copy file error!"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 169
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 172
    :goto_2
    goto :goto_3

    .line 170
    :catch_2
    move-exception v3

    .line 171
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 175
    :cond_2
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 167
    :goto_4
    if-eqz v2, :cond_3

    .line 169
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 172
    goto :goto_5

    .line 170
    :catch_3
    move-exception v4

    .line 171
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    throw v3
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .line 184
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 187
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v1, "out":Ljava/io/OutputStream;
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 191
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "bytesRead":I
    if-ltz v3, :cond_1

    .line 192
    invoke-virtual {v1, v2, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    .end local v2    # "buffer":[B
    .end local v4    # "bytesRead":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 196
    nop

    .line 197
    const/4 v0, 0x1

    return v0

    .line 195
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "FileUtils"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    return v0
.end method

.method public static delFiles(Ljava/io/File;)V
    .locals 4
    .param p0, "filepath"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    .local v1, "files":[Ljava/io/File;
    move-object v1, v0

    if-eqz v0, :cond_0

    array-length v0, v1

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 29
    :cond_0
    if-eqz v1, :cond_2

    .line 30
    array-length v0, v1

    .line 31
    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 32
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/FileUtils;->delFiles(Ljava/io/File;)V

    .line 35
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "i":I
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "j":I
    :cond_2
    return-void

    .line 39
    :cond_3
    if-eqz p0, :cond_4

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 43
    :cond_4
    return-void
.end method

.method public static getFileOption(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "imageFile"    # Ljava/io/File;

    .line 87
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    move-object v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 91
    return-object v0

    .line 93
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method public static getImageBitmap(ILjava/io/File;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "reqWidth"    # I
    .param p1, "bitmap"    # Ljava/io/File;

    const/4 v0, 0x0

    .line 112
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/FileUtils;->getFileOption(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 113
    move-object v0, v1

    invoke-static {v1, p0}, Lcom/alipay/mobile/common/utils/FileUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    .line 115
    .local v1, "sampleSize":I
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 116
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static md5sum(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 205
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/MD5Util;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final readFile(Ljava/io/File;)[B
    .locals 12
    .param p0, "file"    # Ljava/io/File;

    const-string/jumbo v0, "randomAccessFile.close() exception. "

    const-string v1, "channel.close() exception. "

    const-string v2, "FileUtils"

    .line 217
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v3

    .line 218
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    const/16 v6, 0x400

    :try_start_1
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 221
    .local v6, "byteBuff":Ljava/nio/ByteBuffer;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v7, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    move v9, v8

    .line 222
    .local v9, "i":I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v10

    move v9, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 223
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 224
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v7, v10, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 225
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 227
    .end local v9    # "i":I
    :cond_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    goto :goto_1

    .line 231
    :catch_0
    move-exception v9

    .line 232
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    goto :goto_2

    .line 236
    :catch_1
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v8

    .line 229
    .end local v6    # "byteBuff":Ljava/nio/ByteBuffer;
    .end local v7    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v6

    .line 230
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 233
    goto :goto_3

    .line 231
    :catch_2
    move-exception v7

    .line 232
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 235
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 238
    goto :goto_4

    .line 236
    :catch_3
    move-exception v1

    .line 237
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    nop

    .end local p0    # "file":Ljava/io/File;
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 240
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "readFile exception"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v3
.end method

.method public static saveBitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;

    .line 46
    const-string v0, "FileUtils"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 53
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    return-void

    .line 68
    :catch_1
    move-exception v2

    .line 69
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    return-void

    .line 57
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 54
    :catch_2
    move-exception v2

    .line 55
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 61
    :catch_3
    move-exception v2

    .line 62
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 63
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    nop

    .line 65
    :goto_2
    if-eqz v1, :cond_2

    .line 66
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 70
    :cond_2
    return-void

    .line 58
    :goto_3
    if-eqz v1, :cond_3

    .line 59
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 61
    :catch_4
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 63
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    nop

    .line 65
    :goto_5
    if-eqz v1, :cond_4

    .line 66
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 68
    :catch_5
    move-exception v3

    .line 69
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 70
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    nop

    :goto_7
    throw v2
.end method

.method public static widthRetio(ILjava/io/File;)F
    .locals 5
    .param p0, "reqWidth"    # I
    .param p1, "bitmap"    # Ljava/io/File;

    const/4 v0, 0x0

    .line 98
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/FileUtils;->getFileOption(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    .line 100
    .local v1, "ratio":F
    if-eqz v0, :cond_0

    .line 101
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 102
    .local v2, "width":I
    if-le p0, v2, :cond_0

    .line 103
    int-to-float v3, p0

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 104
    move v1, v3

    .line 107
    .end local v2    # "width":I
    :cond_0
    return v1
.end method
