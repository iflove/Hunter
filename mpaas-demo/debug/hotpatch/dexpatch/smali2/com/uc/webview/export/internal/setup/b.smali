.class public Lcom/uc/webview/export/internal/setup/b;
.super Lcom/uc/webview/export/internal/setup/l;
.source "U4Source"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/l;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .line 41
    move-object/from16 v1, p0

    const/16 v0, 0x126

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 43
    const-string v0, "ucmZipDir"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    const-string v2, "ucmZipFile"

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    const-string v3, "bo_dec_root_dir"

    invoke-virtual {v1, v3}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    const-string v4, "DecompressSetupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "zipDirPath : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " zipFilePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " decRootDirPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v4

    .line 50
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v5

    .line 51
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc2

    const-string v3, "Option [%s] or  [%s] expected."

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "ucmZipDir"

    aput-object v5, v4, v8

    const-string v5, "ucmZipFile"

    aput-object v5, v4, v7

    .line 53
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    :goto_0
    const-string v4, "CONTEXT"

    invoke-virtual {v1, v4}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/content/Context;

    .line 59
    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v11, v2

    goto :goto_1

    .line 60
    :cond_3
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v11, v2

    .line 61
    :goto_1
    if-eqz v11, :cond_13

    .line 65
    nop

    .line 67
    const-class v2, Lcom/uc/webview/export/internal/setup/b;

    monitor-enter v2

    .line 68
    :try_start_0
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "decompresses2"

    .line 69
    invoke-static {v9, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 70
    :goto_2
    nop

    .line 71
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 72
    nop

    .line 73
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 76
    nop

    .line 77
    const-string v5, ""

    .line 78
    const-string v15, "0"

    .line 79
    const-string v16, "0"

    .line 80
    const-string v14, ""

    .line 81
    const-string v13, "0"

    .line 82
    const-string v12, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 85
    const/4 v4, 0x3

    :try_start_1
    new-instance v18, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct/range {v18 .. v18}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 86
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->serverZipTag:Ljava/lang/String;

    const-string v10, "o_zio_file_type"

    invoke-virtual {v1, v10}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 87
    const-string v0, "bo_del_aft_extract"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v19, v13

    :try_start_2
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v13

    .line 88
    nop

    .line 1214
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/b;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "scst_flag"

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v0
    :try_end_2
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_7

    .line 1215
    :try_start_3
    const-string v0, "ucmZipFile"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1216
    const-string v6, "sc_ta_fp"

    invoke-static {v6}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1217
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 1218
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    goto :goto_3

    .line 1221
    :cond_5
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    .line 1219
    :cond_6
    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 128
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v4, v15

    move-object/from16 v0, v16

    move-object/from16 v13, v19

    goto/16 :goto_10

    .line 1226
    :cond_7
    const/4 v0, 0x0

    .line 88
    :goto_4
    if-eqz v0, :cond_8

    sget v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Sdcard_Share_Core:I
    :try_end_3
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :cond_8
    :try_start_4
    sget v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Other:I

    :goto_5
    move v6, v0

    .line 89
    const-string v0, "DecompressSetupTask"

    const-string v7, "forceUsing7z : %b, deleteAfterExtract : %b, orign : %d"

    new-array v8, v4, [Ljava/lang/Object;

    .line 90
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v22, 0x0

    aput-object v23, v8, v22

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v21, 0x1

    aput-object v23, v8, v21

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x2

    aput-object v23, v8, v20

    .line 89
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_4
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 95
    nop

    .line 97
    :try_start_5
    const-string v0, "bo_dec_cl"

    .line 98
    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/extension/UCCore$Callable;

    .line 99
    if-eqz v0, :cond_a

    .line 100
    nop

    .line 2205
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2206
    const-string v8, "decDirPath"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string v4, "zipFilePath"

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    const-string v4, "zipFileType"

    if-eqz v10, :cond_9

    const-string v8, "7z"

    goto :goto_6

    :cond_9
    const-string v8, ""

    :goto_6
    invoke-virtual {v7, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v4, "deleteAfterExtract"

    invoke-virtual {v7, v4, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2210
    nop

    .line 100
    invoke-interface {v0, v7}, Lcom/uc/webview/export/extension/UCCore$Callable;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    move v4, v0

    const/4 v0, 0x1

    goto :goto_7

    .line 99
    :cond_a
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 106
    :goto_7
    goto :goto_8

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_6
    const-string v4, "DecompressSetupTask"

    const-string v7, "decCallback"

    invoke-static {v4, v7, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 107
    :goto_8
    if-nez v0, :cond_b

    .line 108
    const/4 v0, 0x0

    const/4 v7, 0x4

    move-object v8, v12

    move-object v12, v3

    move-object/from16 v7, v19

    move/from16 v19, v13

    move-object v13, v0

    move-object/from16 v24, v14

    move/from16 v14, v19

    move/from16 v19, v4

    move-object v4, v15

    move v15, v6

    :try_start_7
    invoke-static/range {v9 .. v15}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;ZI)Z

    move-result v0
    :try_end_7
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v19, v0

    goto :goto_9

    .line 128
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v13, v7

    move-object v12, v8

    move-object/from16 v0, v16

    move-object/from16 v14, v24

    goto/16 :goto_17

    .line 107
    :cond_b
    move-object v8, v12

    move-object/from16 v24, v14

    move-object/from16 v7, v19

    move/from16 v19, v4

    move-object v4, v15

    .line 110
    :goto_9
    const/16 v0, 0x15

    :try_start_8
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_8
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 111
    const/16 v0, 0x13

    if-eqz v19, :cond_c

    :try_start_9
    const-string v6, "1"
    :try_end_9
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_a

    :cond_c
    :try_start_a
    const-string v6, "0"

    :goto_a
    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V
    :try_end_a
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 113
    if-eqz v19, :cond_d

    .line 114
    :try_start_b
    const-string v5, "0"

    .line 115
    invoke-virtual/range {v18 .. v18}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 116
    invoke-virtual/range {v18 .. v18}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15
    :try_end_b
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v0, v16

    goto :goto_b

    .line 118
    :cond_d
    :try_start_c
    const-string v5, "1"
    :try_end_c
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v15, v4

    move-object/from16 v0, v16

    .line 129
    :goto_b
    :try_start_d
    new-instance v4, Landroid/util/Pair;

    const-string v6, "sdk_7z"

    new-instance v9, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v9}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string v10, "cnt"

    const-string v11, "1"

    .line 131
    invoke-virtual {v9, v10, v11}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v9

    const-string v10, "code"

    .line 132
    invoke-virtual {v9, v10, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v9

    const-string v10, "cost"

    .line 133
    invoke-virtual {v9, v10, v15}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v9

    const-string v10, "cost_cpu"

    .line 134
    invoke-virtual {v9, v10, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v9

    const-string v10, "data"

    .line 135
    move-object/from16 v11, v24

    invoke-virtual {v9, v10, v11}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v9

    const-string v10, "cpu_cnt"

    .line 136
    invoke-virtual {v9, v10, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string v9, "cpu_freq"

    .line 137
    invoke-virtual {v7, v9, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string v8, "link_so_code"

    const-string v9, "-1"

    .line 138
    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string v8, "free_disk_space"

    const-string v9, "0.0"

    .line 139
    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v1, v4}, Lcom/uc/webview/export/internal/setup/b;->callbackStat(Landroid/util/Pair;)V

    .line 141
    const-string v4, "DecompressSetupTask"

    const-string v6, "need : %b, code : %s, CostsMilis : %s, Cpu: %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 142
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v5, 0x2

    aput-object v15, v7, v5

    const/4 v5, 0x3

    aput-object v0, v7, v5

    .line 141
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 143
    goto :goto_c

    :catchall_2
    move-exception v0

    .line 144
    nop

    .line 145
    :goto_c
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 147
    const/4 v0, 0x0

    if-nez v19, :cond_e

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v2, "bo_continue_odex"

    .line 148
    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 149
    :cond_e
    const-string v2, "chkMultiCore"

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/b;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/b;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/uc/webview/export/internal/setup/b;->getParent()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    instance-of v4, v4, Lcom/uc/webview/export/business/setup/o;

    if-nez v4, :cond_f

    .line 152
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v4

    const-string v5, "gk_dec_exist"

    const/4 v6, 0x1

    xor-int/lit8 v6, v19, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 155
    :cond_f
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v4, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v4}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    goto :goto_d

    :cond_10
    new-instance v4, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v4}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    .line 156
    :goto_d
    const/16 v5, 0x127

    invoke-static {v5}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 157
    nop

    .line 158
    invoke-virtual {v4, v1}, Lcom/uc/webview/export/internal/setup/av;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/b;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/b;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    invoke-virtual {v4, v5}, Lcom/uc/webview/export/internal/setup/l;->setCallbacks(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "dexFilePath"

    .line 161
    invoke-virtual {v4, v5, v0}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "soFilePath"

    .line 162
    invoke-virtual {v4, v5, v0}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "resFilePath"

    .line 163
    invoke-virtual {v4, v5, v0}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "ucmCfgFile"

    .line 164
    invoke-virtual {v4, v5, v0}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "start"

    .line 165
    invoke-virtual {v4, v5, v0}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    const-string v5, "ucmKrlDir"

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/l;

    const-string v4, "stop"

    new-instance v5, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    invoke-direct {v5, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 168
    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/l;

    const-string v4, "bo_enable_load_class"

    .line 169
    invoke-static {}, Lcom/uc/webview/export/internal/setup/b;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/k;->a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/l;

    const-string v4, "switch"

    new-instance v5, Lcom/uc/webview/export/internal/setup/d;

    invoke-direct {v5, v1}, Lcom/uc/webview/export/internal/setup/d;-><init>(Lcom/uc/webview/export/internal/setup/b;)V

    .line 170
    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/l;

    const-string v4, "setup"

    .line 181
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v2, v0

    goto :goto_e

    :cond_11
    new-instance v2, Lcom/uc/webview/export/internal/setup/c;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/setup/c;-><init>(Lcom/uc/webview/export/internal/setup/b;)V

    .line 180
    :goto_e
    invoke-virtual {v3, v4, v2}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/internal/setup/l;

    .line 194
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 198
    :cond_12
    iput-object v0, v1, Lcom/uc/webview/export/internal/setup/b;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    return-void

    .line 128
    :catchall_3
    move-exception v0

    move-object/from16 v11, v24

    goto/16 :goto_15

    .line 120
    :catch_1
    move-exception v0

    move-object/from16 v11, v24

    goto :goto_12

    .line 128
    :catchall_4
    move-exception v0

    move-object v8, v12

    move-object v11, v14

    move-object v4, v15

    move-object/from16 v7, v19

    move-object v3, v0

    move-object v13, v7

    goto :goto_f

    .line 120
    :catch_2
    move-exception v0

    move-object v8, v12

    move-object v11, v14

    move-object v4, v15

    move-object/from16 v7, v19

    goto :goto_11

    .line 128
    :catchall_5
    move-exception v0

    move-object v8, v12

    move-object v7, v13

    move-object v11, v14

    move-object v4, v15

    move-object v3, v0

    :goto_f
    move-object/from16 v0, v16

    :goto_10
    const/16 v17, 0x0

    const/16 v19, 0x0

    goto :goto_18

    .line 120
    :catch_3
    move-exception v0

    move-object v8, v12

    move-object v7, v13

    move-object v11, v14

    move-object v4, v15

    :goto_11
    const/16 v19, 0x0

    .line 121
    :goto_12
    :try_start_f
    const-string v5, "2"

    .line 122
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 123
    :try_start_10
    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v9

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    long-to-float v3, v9

    .line 124
    :try_start_11
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->a()Ljava/lang/String;

    move-result-object v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 125
    :try_start_12
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->b()Ljava/lang/String;

    move-result-object v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 126
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 128
    :catchall_6
    move-exception v0

    move/from16 v17, v3

    goto :goto_14

    :catchall_7
    move-exception v0

    move/from16 v17, v3

    goto :goto_13

    :catchall_8
    move-exception v0

    move/from16 v17, v3

    move-object v13, v7

    :goto_13
    move-object v12, v8

    :goto_14
    move-object v3, v0

    move-object/from16 v0, v16

    goto :goto_18

    :catchall_9
    move-exception v0

    move-object v3, v0

    move-object v13, v7

    move-object v12, v8

    goto :goto_16

    :catchall_a
    move-exception v0

    :goto_15
    move-object v3, v0

    move-object v13, v7

    move-object v12, v8

    move-object v14, v11

    :goto_16
    move-object/from16 v0, v16

    :goto_17
    const/16 v17, 0x0

    .line 129
    :goto_18
    :try_start_14
    new-instance v6, Landroid/util/Pair;

    const-string v7, "sdk_7z"

    new-instance v8, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v8}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string v9, "cnt"

    const-string v10, "1"

    .line 131
    invoke-virtual {v8, v9, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "code"

    .line 132
    invoke-virtual {v8, v9, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "cost"

    .line 133
    invoke-virtual {v8, v9, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "cost_cpu"

    .line 134
    invoke-virtual {v8, v9, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "data"

    .line 135
    invoke-virtual {v8, v9, v14}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "cpu_cnt"

    .line 136
    invoke-virtual {v8, v9, v13}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "cpu_freq"

    .line 137
    invoke-virtual {v8, v9, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "link_so_code"

    const-string v10, "-1"

    .line 138
    invoke-virtual {v8, v9, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    const-string v9, "free_disk_space"

    .line 139
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/internal/setup/b;->callbackStat(Landroid/util/Pair;)V

    .line 141
    const-string v6, "DecompressSetupTask"

    const-string v7, "need : %b, code : %s, CostsMilis : %s, Cpu: %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 142
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v5, 0x2

    aput-object v4, v8, v5

    const/4 v4, 0x3

    aput-object v0, v8, v4

    .line 141
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_19

    .line 143
    :catchall_b
    move-exception v0

    :goto_19
    :try_start_15
    throw v3

    .line 145
    :catchall_c
    move-exception v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    throw v0

    .line 62
    :cond_13
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbc3

    const-string v4, "No kernel file found in dir [%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 63
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2
.end method
