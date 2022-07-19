.class public Lcom/alipay/mobile/common/logging/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "ips":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 320
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v2, 0x0

    .line 321
    .local v2, "ofs":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 324
    .local v3, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 325
    move-object v0, v4

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v1, v4

    .line 326
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 327
    move-object v2, v4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    move-object v3, v4

    .line 329
    const-wide/16 v6, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    move-object v5, v1

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v4, :cond_2

    .line 340
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    goto :goto_0

    .line 341
    :catchall_0
    move-exception v4

    .line 345
    :goto_0
    if-eqz v1, :cond_0

    .line 347
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    goto :goto_1

    .line 348
    :catchall_1
    move-exception v4

    .line 354
    :cond_0
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 357
    goto :goto_2

    .line 355
    :catchall_2
    move-exception v4

    .line 359
    :goto_2
    if-eqz v3, :cond_1

    .line 361
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 364
    return-void

    .line 362
    :catchall_3
    move-exception v4

    .line 364
    return-void

    .line 367
    :cond_1
    return-void

    .line 331
    :cond_2
    :try_start_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "copy file fail"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ips":Ljava/io/FileInputStream;
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "ofs":Ljava/io/FileOutputStream;
    .end local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 334
    .restart local v0    # "ips":Ljava/io/FileInputStream;
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "ofs":Ljava/io/FileOutputStream;
    .restart local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catchall_4
    move-exception v4

    .line 335
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_6
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "ips":Ljava/io/FileInputStream;
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "ofs":Ljava/io/FileOutputStream;
    .end local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 338
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v0    # "ips":Ljava/io/FileInputStream;
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v2    # "ofs":Ljava/io/FileOutputStream;
    .restart local v3    # "outChannel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catchall_5
    move-exception v4

    if-eqz v0, :cond_3

    .line 340
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 343
    goto :goto_3

    .line 341
    :catchall_6
    move-exception v5

    .line 345
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 347
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 350
    goto :goto_4

    .line 348
    :catchall_7
    move-exception v5

    .line 352
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 354
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 357
    goto :goto_5

    .line 355
    :catchall_8
    move-exception v5

    .line 359
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 361
    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 364
    goto :goto_6

    .line 362
    :catchall_9
    move-exception v5

    .line 364
    :cond_6
    :goto_6
    throw v4
.end method

.method public static deleteFileByPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->deleteFileNotDir(Ljava/io/File;)V

    .line 94
    return-void
.end method

.method public static deleteFileNotDir(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 75
    if-nez p0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFileNotDir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogFileUtil"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 10
    .param p0, "dir"    # Ljava/io/File;

    .line 370
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 375
    .local v4, "files":[Ljava/io/File;
    move-object v4, v2

    if-eqz v2, :cond_5

    array-length v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    .line 378
    :cond_1
    const-wide/16 v5, 0x0

    .line 379
    .local v5, "size":J
    array-length v2, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_4

    aget-object v8, v4, v7

    .line 380
    .local v3, "file":Ljava/io/File;
    move-object v3, v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 383
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 384
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v5, v8

    goto :goto_1

    .line 386
    :cond_2
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/FileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v5, v8

    .line 379
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 389
    :cond_4
    return-wide v5

    .line 376
    .end local v5    # "size":J
    :cond_5
    :goto_2
    return-wide v0

    .line 390
    .end local v4    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    .line 391
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LogFileUtil"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    return-wide v0

    .line 371
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_3
    return-wide v0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 4

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/FileUtil;->isCanUseSdCard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 30
    return-object v1

    .line 33
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "LogFileUtil"

    const-string v3, "getSDPath"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    return-object v1
.end method

.method public static getTraceFile()Ljava/lang/String;
    .locals 7

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "value":Ljava/lang/Object;
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, "cla":Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 101
    .local v3, "claArrayTypes":[Ljava/lang/Class;
    const-string v4, "get"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 102
    .local v4, "meth":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "dalvik.vm.stack-trace-file"

    aput-object v6, v2, v5

    .line 103
    .local v2, "arglist":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 106
    .end local v1    # "cla":Ljava/lang/Class;
    .end local v2    # "arglist":[Ljava/lang/Object;
    .end local v3    # "claArrayTypes":[Ljava/lang/Class;
    .end local v4    # "meth":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "LogFileUtil"

    const-string v3, "getTraceFile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 108
    const-string v1, "/data/anr/traces.txt"

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAppAvailableSpace(J)Z
    .locals 10
    .param p0, "space"    # J

    .line 58
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 59
    .local v2, "dirFile":Ljava/io/File;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 60
    return v3

    .line 59
    :cond_0
    move-object v0, v1

    .line 64
    .local v0, "statFs":Landroid/os/StatFs;
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 68
    nop

    .line 69
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x0

    .line 70
    .local v6, "availableCount":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v8, v1

    mul-long v4, v4, v8

    .line 71
    .local v4, "availableSpare":J
    cmp-long v1, p0, v4

    if-gez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3

    .line 65
    .end local v4    # "availableSpare":J
    .end local v6    # "availableCount":J
    :catchall_0
    move-exception v1

    .line 66
    .local v1, "t":Ljava/lang/Throwable;
    const-string v4, "LogFileUtil"

    const-string v5, "isAppAvailableSpace"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return v3
.end method

.method public static isCanUseSdCard()Z
    .locals 3

    .line 21
    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCanUseSdCard: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogFileUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v1, 0x0

    return v1
.end method

.method public static isSDcardAvailableSpace(J)Z
    .locals 10
    .param p0, "space"    # J

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/FileUtil;->getSDPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 42
    .local v2, "dirPath":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 43
    return v3

    .line 42
    :cond_0
    move-object v0, v1

    .line 47
    .local v0, "statFs":Landroid/os/StatFs;
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 51
    nop

    .line 52
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x4

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 53
    .local v6, "availableCount":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v8, v1

    mul-long v4, v4, v8

    .line 54
    .local v4, "availableSpare":J
    cmp-long v1, p0, v4

    if-gez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3

    .line 48
    .end local v4    # "availableSpare":J
    .end local v6    # "availableCount":J
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "t":Ljava/lang/Throwable;
    const-string v4, "LogFileUtil"

    const-string v5, "isSDcardAvailableSpace"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    return v3
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .line 305
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/logging/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 307
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 309
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    return-void

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "move file fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dst":Ljava/io/File;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dst":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFileName"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 118
    :cond_0
    const/4 v1, 0x0

    .line 119
    .local v1, "fi":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v2, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, v0

    .line 122
    .local v4, "resource":Landroid/content/res/Resources;
    move-object v4, v3

    if-nez v3, :cond_1

    .line 123
    return-object v0

    .line 125
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 126
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 127
    const/16 v3, 0x2000

    new-array v3, v3, [B

    const/4 v5, 0x0

    move v6, v5

    .line 129
    .local v3, "arrayOfByte":[B
    .local v6, "m":I
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 130
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .line 131
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    nop

    .end local v7    # "str":Ljava/lang/String;
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    goto :goto_1

    .line 140
    :catchall_0
    move-exception v5

    .line 133
    :goto_1
    return-object v0

    .line 134
    .end local v3    # "arrayOfByte":[B
    .end local v4    # "resource":Landroid/content/res/Resources;
    .end local v6    # "m":I
    :catchall_1
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "LogFileUtil"

    const-string/jumbo v5, "readAssetFile"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 137
    nop

    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 139
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 142
    :goto_2
    goto :goto_3

    .line 140
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 145
    :cond_3
    :goto_3
    return-object v0

    .line 137
    :catchall_3
    move-exception v0

    if-eqz v1, :cond_4

    .line 139
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 142
    goto :goto_4

    .line 140
    :catchall_4
    move-exception v3

    .line 142
    :cond_4
    :goto_4
    throw v0

    .line 116
    .end local v1    # "fi":Ljava/io/InputStream;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/io/File;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 153
    move-object v0, v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    .line 154
    .local v2, "size":I
    new-array v1, v1, [B

    .line 155
    .local v1, "buffer":[B
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 156
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    nop

    .line 163
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v4

    .line 157
    :goto_0
    return-object v3

    .line 158
    .end local v1    # "buffer":[B
    .end local v2    # "size":I
    :catchall_1
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "filePath":Ljava/io/File;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 161
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "filePath":Ljava/io/File;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_0

    .line 163
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 165
    goto :goto_1

    .line 164
    :catchall_3
    move-exception v2

    .line 165
    :cond_0
    :goto_1
    throw v1
.end method

.method public static readFileByteFully(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 223
    const/4 v0, 0x0

    .line 226
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

    .line 229
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    .line 230
    new-array v1, v5, [B

    return-object v1

    .line 233
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 234
    move-object v0, v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 235
    .local v1, "avail":I
    const/4 v2, 0x0

    .line 236
    .local v2, "pos":I
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 239
    .local v3, "data":[B
    :goto_0
    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-virtual {v0, v3, v2, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 240
    .local v4, "amt":I
    move v4, v6

    if-lez v6, :cond_3

    .line 244
    add-int/2addr v2, v4

    .line 245
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 247
    move v1, v6

    array-length v7, v3

    sub-int/2addr v7, v2

    if-le v6, v7, :cond_2

    .line 248
    add-int v6, v2, v1

    new-array v6, v6, [B

    .line 249
    .local v6, "tmp":[B
    invoke-static {v3, v5, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    move-object v3, v6

    .line 252
    .end local v4    # "amt":I
    .end local v6    # "tmp":[B
    :cond_2
    goto :goto_0

    .line 253
    :cond_3
    nop

    .line 261
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    goto :goto_1

    .line 262
    :catchall_0
    move-exception v4

    .line 253
    :goto_1
    return-object v3

    .line 255
    .end local v1    # "avail":I
    .end local v2    # "pos":I
    .end local v3    # "data":[B
    :catchall_1
    move-exception v1

    .line 256
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 259
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    .line 261
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 264
    goto :goto_2

    .line 262
    :catchall_3
    move-exception v2

    .line 264
    :cond_4
    :goto_2
    throw v1

    .line 227
    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static readFileStringFully(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 213
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->readFileByteFully(Ljava/io/File;)[B

    move-result-object v0

    .line 215
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

    .line 217
    :catchall_0
    move-exception v1

    .line 218
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .locals 8
    .param p0, "f"    # Ljava/io/File;

    .line 179
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 184
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 186
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 188
    const/16 v2, 0x400

    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    .line 190
    .local v3, "buffer":[B
    .local v5, "len":I
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    move v5, v7

    if-eq v6, v7, :cond_0

    .line 191
    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 199
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v4

    .line 205
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    goto :goto_2

    .line 207
    :catchall_1
    move-exception v4

    .line 193
    :goto_2
    return-object v2

    .line 195
    .end local v3    # "buffer":[B
    .end local v5    # "len":I
    :catchall_2
    move-exception v2

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local p0    # "f":Ljava/io/File;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 197
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local p0    # "f":Ljava/io/File;
    :catchall_3
    move-exception v2

    .line 198
    if-eqz v1, :cond_1

    .line 199
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    .line 201
    :catchall_4
    move-exception v3

    goto :goto_4

    .line 202
    :cond_1
    :goto_3
    nop

    .line 205
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 208
    goto :goto_5

    .line 207
    :catchall_5
    move-exception v3

    .line 208
    :goto_5
    throw v2

    .line 180
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isAppend"    # Z

    const/4 v0, 0x0

    .line 296
    .local v0, "data":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 299
    nop

    .line 300
    invoke-static {p0, v0, p2}, Lcom/alipay/mobile/common/logging/util/FileUtil;->writeFile(Ljava/io/File;[BZ)V

    .line 301
    return-void

    .line 297
    :catchall_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static writeFile(Ljava/io/File;[BZ)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "isAppend"    # Z

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "stream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 276
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 278
    move-object v0, v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 279
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v1

    .line 288
    return-void

    .line 280
    :catchall_1
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stream":Ljava/io/OutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "data":[B
    .end local p2    # "isAppend":Z
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 283
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "stream":Ljava/io/OutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "data":[B
    .restart local p2    # "isAppend":Z
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    .line 285
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 288
    goto :goto_0

    .line 286
    :catchall_3
    move-exception v2

    .line 288
    :cond_1
    :goto_0
    throw v1
.end method
