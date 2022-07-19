.class public Lcom/alipay/mobile/common/transport/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .param p0, "destFile"    # Ljava/io/File;

    .line 306
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_0
    return-void

    .line 309
    :catchall_0
    move-exception v0

    .line 312
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 4
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I

    .line 63
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 64
    .local v0, "width":I
    const/4 v1, 0x1

    .line 66
    .local v1, "inSampleSize":I
    if-le v0, p1, :cond_0

    .line 67
    int-to-float v2, v0

    int-to-float v3, p1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 68
    move v1, v2

    .line 70
    :cond_0
    return v1
.end method

.method public static checkDataAvailableSpace(Ljava/io/File;J)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contentLength"    # J

    .line 390
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->isInDataDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isDataDirAvailableSpace(J)Z

    move-result v0

    return v0

    .line 393
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static checkDataOrSdcardAvailableSpace(Ljava/io/File;J)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contentLength"    # J

    .line 379
    if-nez p0, :cond_0

    .line 380
    const-string v0, "FileUtils"

    const-string v1, "checkFileAvailableSpace. nima! file is null, Are you kidding\uff1f"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->isInDataDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isDataDirAvailableSpace(J)Z

    move-result v0

    return v0

    .line 386
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isSDcardAvailableSpace(J)Z

    move-result v0

    return v0
.end method

.method public static checkFileAvailableSpace(Ljava/io/File;J)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contentLength"    # J

    .line 402
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->checkFileDirWRPermissions(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return v0

    .line 407
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 408
    .local v1, "parentFile":Ljava/io/File;
    move-object v1, v0

    if-nez v0, :cond_2

    .line 409
    move-object v1, p0

    .line 412
    :cond_2
    invoke-static {p1, p2, v1}, Lcom/alipay/mobile/common/transport/utils/SDcardUtils;->isAppAvailableSpace(JLjava/io/File;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 413
    .end local v1    # "parentFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "FileUtils"

    const-string v2, "checkFileAvailableSpace fail."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x1

    return v0
.end method

.method public static checkFileDirWRPermissions(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 351
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 352
    const-string v1, "FileUtils"

    const-string v2, "checkFileDirWritePermissions. nima! file is null, Are you kidding\uff1f"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return v0

    .line 351
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 357
    .local v2, "dirFile":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 358
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    move-object v1, p0

    .end local v2    # "dirFile":Ljava/io/File;
    .local v1, "dirFile":Ljava/io/File;
    goto :goto_0

    .line 361
    .end local v1    # "dirFile":Ljava/io/File;
    .restart local v2    # "dirFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .end local v2    # "dirFile":Ljava/io/File;
    .restart local v1    # "dirFile":Ljava/io/File;
    goto :goto_0

    .line 364
    .end local v1    # "dirFile":Ljava/io/File;
    .restart local v2    # "dirFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 365
    .local v1, "parentFile":Ljava/io/File;
    move-object v1, v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 366
    return v0

    .line 368
    :cond_3
    move-object v2, v1

    .line 371
    .end local v2    # "dirFile":Ljava/io/File;
    .local v1, "dirFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_4

    .line 372
    return v0

    .line 375
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 135
    const-string v0, "[copyFile] close input exception = "

    const-string v1, "FileUtils"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    const-string v0, "[copyFile] srcFile not exists"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v2

    .line 140
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v3, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3, p1}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z

    move-result v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 166
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v4

    .line 168
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 147
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_1
    :try_start_4
    const-string v4, "[copyFile] Copy finished, but length mismatch."

    invoke-static {v1, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 154
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 159
    :cond_3
    goto :goto_1

    .line 157
    :catchall_1
    move-exception v4

    .line 158
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[copyFile] delete dest file exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 166
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 169
    goto :goto_2

    .line 167
    :catchall_2
    move-exception v4

    .line 168
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 163
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_2
    return v2

    .line 165
    :catchall_3
    move-exception v4

    .line 166
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 169
    goto :goto_3

    .line 167
    :catchall_4
    move-exception v5

    .line 168
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_3
    nop

    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "destFile":Ljava/io/File;
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 171
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    return v2
.end method

.method public static copyFileEnhanced(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "FileUtils"

    if-nez v0, :cond_0

    .line 111
    const-string v0, "[copyFileEnhanced] srcFile not exists"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1
    const-string v0, "[copyFileEnhanced] Use copyFile fail, Continue to use streamCopyFile retry."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 126
    :cond_2
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->streamCopyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z
    .locals 13
    .param p0, "inputStream"    # Ljava/io/FileInputStream;
    .param p1, "destFile"    # Ljava/io/File;

    const-string v0, "[copyToFile] close input exception = "

    const-string v1, "[copyToFile] close output exception = "

    const-string/jumbo v2, "outputStream.close exception. "

    const-string v3, "FileUtils"

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    .line 188
    .local v5, "parentFile":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 193
    .end local v5    # "parentFile":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 195
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 196
    move-object v4, v5

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 197
    .local v5, "outputChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v12, v6

    .line 199
    .local v12, "inputChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v7, 0x0

    :try_start_1
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v6, v12

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 202
    if-eqz v5, :cond_2

    .line 204
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    goto :goto_1

    .line 205
    :catchall_0
    move-exception v6

    .line 206
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 210
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 212
    :try_start_4
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 215
    :goto_2
    goto :goto_3

    .line 213
    :catchall_1
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 225
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 228
    goto :goto_4

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 202
    :catchall_2
    move-exception v6

    if-eqz v5, :cond_4

    .line 204
    :try_start_7
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 207
    goto :goto_5

    .line 205
    :catchall_3
    move-exception v7

    .line 206
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 210
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_5
    if-eqz v12, :cond_5

    .line 212
    :try_start_9
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 215
    goto :goto_6

    .line 213
    :catchall_4
    move-exception v1

    .line 214
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_6
    nop

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 223
    .end local v5    # "outputChannel":Ljava/nio/channels/FileChannel;
    .end local v12    # "inputChannel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catchall_5
    move-exception v0

    goto :goto_9

    .line 220
    :catch_1
    move-exception v0

    .line 221
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v1, "copy file error!"

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_6

    .line 225
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 228
    :goto_7
    goto :goto_8

    .line 226
    :catch_2
    move-exception v0

    .line 227
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 231
    :cond_6
    :goto_8
    const/4 v0, 0x0

    return v0

    .line 223
    :goto_9
    if-eqz v4, :cond_7

    .line 225
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 228
    goto :goto_a

    .line 226
    :catch_3
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_a
    throw v0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 244
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .local v1, "out":Ljava/io/OutputStream;
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 248
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "bytesRead":I
    if-ltz v3, :cond_1

    .line 249
    invoke-virtual {v1, v2, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    .end local v2    # "buffer":[B
    .end local v4    # "bytesRead":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 253
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 254
    nop

    .line 255
    const/4 v0, 0x1

    return v0

    .line 252
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 253
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "FileUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    return v0
.end method

.method public static delFiles(Ljava/io/File;)V
    .locals 4
    .param p0, "filepath"    # Ljava/io/File;

    .line 15
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 17
    .local v1, "files":[Ljava/io/File;
    move-object v1, v0

    if-eqz v0, :cond_0

    array-length v0, v1

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 19
    :cond_0
    if-eqz v1, :cond_2

    .line 20
    array-length v0, v1

    .line 21
    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 22
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->delFiles(Ljava/io/File;)V

    .line 25
    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":I
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "j":I
    :cond_2
    return-void

    .line 29
    :cond_3
    if-eqz p0, :cond_4

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 33
    :cond_4
    return-void
.end method

.method public static deleteFileNotDir(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 421
    if-nez p0, :cond_0

    .line 422
    return-void

    .line 425
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    return-void

    .line 428
    :catchall_0
    move-exception v0

    .line 429
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFileNotDir:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileUtils"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static getFileOption(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .param p0, "imageFile"    # Ljava/io/File;

    .line 74
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 76
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    move-object v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    return-object v0

    .line 80
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method public static getImageBitmap(ILjava/io/File;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "reqWidth"    # I
    .param p1, "bitmap"    # Ljava/io/File;

    const/4 v0, 0x0

    .line 99
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->getFileOption(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 100
    move-object v0, v1

    invoke-static {v1, p0}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    .line 102
    .local v1, "sampleSize":I
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static isInDataDir(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 397
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final readFile(Ljava/io/File;)[B
    .locals 12
    .param p0, "file"    # Ljava/io/File;

    const-string/jumbo v0, "randomAccessFile.close() exception. "

    const-string v1, "channel.close() exception. "

    const-string v2, "FileUtils"

    .line 321
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v3

    .line 322
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    .local v4, "channel":Ljava/nio/channels/FileChannel;
    const/16 v6, 0x400

    :try_start_1
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 325
    .local v6, "byteBuff":Ljava/nio/ByteBuffer;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v7, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    move v9, v8

    .line 326
    .local v9, "i":I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v10

    move v9, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 327
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 328
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v7, v10, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 329
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 331
    .end local v9    # "i":I
    :cond_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    goto :goto_1

    .line 335
    :catch_0
    move-exception v9

    .line 336
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 342
    goto :goto_2

    .line 340
    :catch_1
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v8

    .line 333
    .end local v6    # "byteBuff":Ljava/nio/ByteBuffer;
    .end local v7    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v6

    .line 334
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 337
    goto :goto_3

    .line 335
    :catch_2
    move-exception v7

    .line 336
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 339
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 342
    goto :goto_4

    .line 340
    :catch_3
    move-exception v1

    .line 341
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    nop

    .end local p0    # "file":Ljava/io/File;
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 344
    .end local v4    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "readFile exception"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v3
.end method

.method public static saveBitmap2File(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;

    .line 36
    const-string v0, "FileUtils"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 41
    .local v1, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 42
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    return-void

    .line 55
    :catch_1
    move-exception v2

    .line 56
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    return-void

    .line 46
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 43
    :catch_2
    move-exception v2

    .line 44
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 49
    :catch_3
    move-exception v2

    .line 50
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 51
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    nop

    .line 53
    :goto_2
    if-eqz v1, :cond_2

    .line 54
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 57
    :cond_2
    return-void

    .line 47
    :goto_3
    if-eqz v1, :cond_3

    .line 48
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 49
    :catch_4
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 51
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    nop

    .line 53
    :goto_5
    if-eqz v1, :cond_4

    .line 54
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 55
    :catch_5
    move-exception v3

    .line 56
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 57
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    nop

    :goto_7
    throw v2
.end method

.method public static declared-synchronized saveByte2File(Ljava/io/File;[B)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    const-class v0, Lcom/alipay/mobile/common/transport/utils/FileUtils;

    monitor-enter v0

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "isSuccess":Z
    const/4 v2, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 447
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v3, :cond_1

    .line 448
    monitor-exit v0

    return v2

    .line 451
    :cond_1
    const/4 v2, 0x0

    .line 452
    .local v2, "fout":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 454
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 455
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 456
    move-object v3, v4

    invoke-virtual {v4, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 457
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    const/4 v1, 0x1

    .line 464
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 467
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 471
    :cond_2
    :goto_0
    goto :goto_1

    .line 469
    :catchall_0
    move-exception v4

    .line 472
    goto :goto_1

    .line 459
    :catchall_1
    move-exception v4

    .line 460
    .local v4, "ex":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saveByte2File:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 463
    .end local v4    # "ex":Ljava/lang/Throwable;
    if-eqz v3, :cond_3

    .line 464
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 466
    :cond_3
    if-eqz v2, :cond_2

    .line 467
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 473
    :goto_1
    monitor-exit v0

    return v1

    .line 462
    :catchall_2
    move-exception v4

    .line 463
    if-eqz v3, :cond_4

    .line 464
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    .line 469
    :catchall_3
    move-exception v5

    goto :goto_3

    .line 466
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 467
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 471
    :cond_5
    nop

    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 441
    .end local v1    # "isSuccess":Z
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "data":[B
    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    .line 444
    .restart local v1    # "isSuccess":Z
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "data":[B
    :cond_6
    :goto_4
    monitor-exit v0

    return v2
.end method

.method public static streamCopyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 265
    const-string v0, "FileUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    const-string v2, "[streamCopyFile] srcFile not exists"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return v1

    .line 270
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 273
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 274
    .local v2, "out":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .local v3, "inputStream":Ljava/io/InputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 278
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bytesRead":I
    if-ltz v5, :cond_2

    .line 279
    invoke-virtual {v2, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    .end local v4    # "buffer":[B
    .end local v6    # "bytesRead":I
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 283
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 284
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 285
    nop

    .line 288
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 292
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "srcFile length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", destFile length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return v1

    .line 296
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 282
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 283
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 284
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "destFile":Ljava/io/File;
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/io/IOException;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->a(Ljava/io/File;)V

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[streamCopyFile] Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    return v1
.end method

.method public static widthRetio(ILjava/io/File;)F
    .locals 5
    .param p0, "reqWidth"    # I
    .param p1, "bitmap"    # Ljava/io/File;

    const/4 v0, 0x0

    .line 85
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/FileUtils;->getFileOption(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    .local v1, "ratio":F
    if-eqz v0, :cond_0

    .line 88
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 89
    .local v2, "width":I
    if-le p0, v2, :cond_0

    .line 90
    int-to-float v3, p0

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 91
    move v1, v3

    .line 94
    .end local v2    # "width":I
    :cond_0
    return v1
.end method
