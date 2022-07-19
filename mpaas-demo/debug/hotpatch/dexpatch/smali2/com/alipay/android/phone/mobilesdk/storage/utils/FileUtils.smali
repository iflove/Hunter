.class public Lcom/alipay/android/phone/mobilesdk/storage/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsCanUseSdCard()Z
    .locals 3

    .line 23
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "FileUtils"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "file"    # Ljava/io/File;

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 154
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v2

    .line 155
    const/16 v2, 0x2000

    new-array v1, v2, [B

    move v2, v3

    .line 157
    .local v1, "buffer":[B
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v2, v4

    if-lez v4, :cond_1

    .line 158
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 160
    .end local v1    # "buffer":[B
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v2    # "len":I
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 166
    return-void

    .line 161
    :catch_0
    move-exception v2

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 166
    :cond_2
    throw v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 162
    :cond_3
    return-void
.end method

.method public static deleteFileByPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 69
    .local v1, "file":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 74
    :cond_1
    return-void
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 2

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "sdDir":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/FileUtils;->IsCanUseSdCard()Z

    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    return-object v0
.end method

.method public static getTraceFile()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 99
    .local v0, "cla":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 101
    .local v1, "value":Ljava/lang/Object;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 103
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 104
    .local v3, "claArrayTypes":[Ljava/lang/Class;
    const-string v4, "get"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 105
    .local v4, "meth":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "dalvik.vm.stack-trace-file"

    aput-object v6, v2, v5

    .line 106
    .local v2, "arglist":[Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 109
    .end local v2    # "arglist":[Ljava/lang/Object;
    .end local v3    # "claArrayTypes":[Ljava/lang/Class;
    .end local v4    # "meth":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "FileUtils"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 113
    :cond_0
    const-string v2, "/data/anr/traces.txt"

    return-object v2
.end method

.method public static isSDcardAvailableSpace(J)Z
    .locals 11
    .param p0, "space"    # J

    .line 44
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/FileUtils;->IsCanUseSdCard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    return v1

    .line 48
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "sdcard":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 51
    .local v4, "statFs":Landroid/os/StatFs;
    move-object v4, v3

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v5, v3

    .line 52
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v7, v3

    const-wide/16 v9, 0x4

    sub-long/2addr v7, v9

    mul-long v5, v5, v7

    .line 53
    .local v5, "availableSpare":J
    cmp-long v3, p0, v5

    if-gez v3, :cond_1

    .line 54
    const/4 v1, 0x1

    return v1

    .line 56
    :cond_1
    return v1

    .line 58
    .end local v0    # "sdcard":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "statFs":Landroid/os/StatFs;
    .end local v5    # "availableSpare":J
    :catchall_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "FileUtils"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public static moveFile(Ljava/io/File;Lcom/alipay/android/phone/mobilesdk/storage/file/BaseFile;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Lcom/alipay/android/phone/mobilesdk/storage/file/BaseFile;

    .line 127
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "FileUtils"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    return v0

    .line 129
    :cond_1
    :goto_0
    return v0
.end method

.method public static readFile2String(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    const/4 v0, 0x0

    .line 79
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v1

    .line 81
    .local v3, "in":Ljava/io/FileInputStream;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 82
    new-array v2, v2, [B

    .line 83
    .local v2, "buffer":[B
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 84
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 85
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 89
    .end local v2    # "buffer":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    nop

    .line 90
    return-object v0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "FileUtils"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-object v1
.end method
