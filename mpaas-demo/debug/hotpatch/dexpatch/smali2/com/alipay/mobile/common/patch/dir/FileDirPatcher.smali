.class public Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;
.super Ljava/lang/Object;
.source "FileDirPatcher.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "FileDirPatcher"

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static patchDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newFileFolder"    # Ljava/lang/String;
    .param p2, "oldFileFolder"    # Ljava/lang/String;
    .param p3, "patchFilePath"    # Ljava/lang/String;
    .param p4, "oldFileMD5"    # Ljava/lang/String;
    .param p5, "patchFileMD5"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string/jumbo v0, "tar"

    const-string v4, ".tar"

    .line 25
    const/4 v5, 0x0

    if-eqz v1, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 26
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v10, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    goto/16 :goto_2

    .line 31
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 33
    .local v6, "patchFile":Ljava/io/File;
    move-object/from16 v7, p5

    :try_start_1
    invoke-static {v7, v6}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v8, "verifyPatchMD5 fail"

    invoke-interface {v0, v4, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return v5

    .line 37
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    .line 38
    .local v8, "timeHash":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "oldTar-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, "oldTar":Ljava/lang/String;
    new-instance v10, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;

    invoke-direct {v10, v1, v0, v9}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object v12, v11

    .line 41
    .local v12, "oldTarFile":Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;
    move-object v12, v10

    invoke-virtual {v10}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object v13, v11

    .line 42
    .local v13, "oldTarPath":Ljava/lang/String;
    move-object v13, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string/jumbo v14, "storage error"

    if-eqz v10, :cond_2

    .line 43
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    invoke-interface {v0, v4, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v5

    .line 48
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    sget-object v15, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string v11, "begin dir patch"

    invoke-interface {v10, v15, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    move-object/from16 v10, p2

    :try_start_3
    invoke-static {v10, v13}, Lcom/alipay/mobile/common/patch/dir/Flater;->packFolderToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 50
    if-nez v11, :cond_3

    .line 51
    invoke-static {v13}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v11, "tar oldFileFolder fail!"

    invoke-interface {v0, v4, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return v5

    .line 55
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    sget-object v15, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v5, "tar oldFileFolder success!"

    invoke-interface {v11, v15, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    move-object/from16 v5, p4

    :try_start_4
    invoke-static {v5, v12}, Lcom/alipay/mobile/common/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v11, "verifyOldTarFileMD5 fail"

    invoke-interface {v0, v4, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v4, 0x0

    return v4

    .line 64
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "newTar-"

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "newTar":Ljava/lang/String;
    new-instance v11, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;

    invoke-direct {v11, v1, v0, v4}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v11}, Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    .line 67
    .local v11, "newTarPath":Ljava/lang/String;
    move-object v11, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v15, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    invoke-interface {v0, v15, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v14, 0x0

    return v14

    .line 73
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v14, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "begin patch "

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {v11, v13, v3}, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    invoke-static {v13}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 77
    invoke-static {v11}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v14, "patch tar fail!"

    invoke-interface {v0, v1, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "patch tar success! "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v1, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v11, v2}, Lcom/alipay/mobile/common/patch/dir/Flater;->unpackFileToFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 85
    if-nez v0, :cond_7

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v14, "untar tar fail!"

    invoke-interface {v0, v1, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v14, "untar tar success!"

    invoke-interface {v0, v1, v14}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v13}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 92
    invoke-static {v11}, Lcom/alipay/mobile/common/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 94
    .end local v4    # "newTar":Ljava/lang/String;
    .end local v6    # "patchFile":Ljava/io/File;
    .end local v8    # "timeHash":I
    .end local v9    # "oldTar":Ljava/lang/String;
    .end local v11    # "newTarPath":Ljava/lang/String;
    .end local v12    # "oldTarFile":Lcom/alipay/android/phone/mobilesdk/storage/file/ZExternalFile;
    .end local v13    # "oldTarPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v10, p2

    :goto_0
    move-object/from16 v5, p4

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1

    .line 25
    :cond_8
    move-object/from16 v10, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 27
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v4, "param is empty"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    return v1
.end method

.method public static patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "newFilePath"    # Ljava/lang/String;
    .param p1, "oldFilePath"    # Ljava/lang/String;
    .param p2, "patchFilePath"    # Ljava/lang/String;

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "patchFile":Ljava/io/File;
    invoke-static {p2}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v4, "verifyPatchMD5 fail"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return v1

    .line 116
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string v4, "IsCanUseSdCard false"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v1

    .line 121
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v4, "mOldFilePath is not exists"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return v1

    .line 126
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "oldFile":Ljava/io/File;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/patch/PatchUtils;->isEnoughSpaceDoPatch(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v5, "space is not enough to patch"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v1

    .line 133
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/PatchUtils;->creatFileDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v5, "mNewFilePath can not creat"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v1

    .line 140
    :cond_5
    invoke-static {p1, p0, p2}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-nez v3, :cond_6

    .line 145
    const/4 v1, 0x1

    return v1

    .line 148
    :cond_6
    return v1

    .line 150
    .end local v0    # "patchFile":Ljava/io/File;
    .end local v2    # "oldFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1

    .line 104
    :cond_7
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/patch/dir/FileDirPatcher;->a:Ljava/lang/String;

    const-string/jumbo v3, "param is empty"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v1
.end method
