.class public final Lcom/uc/webview/export/internal/setup/e;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask<",
        "Lcom/uc/webview/export/internal/setup/e;",
        "Lcom/uc/webview/export/internal/setup/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/av;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/av;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/e;->a:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    .line 41
    move-object/from16 v1, p0

    const-string v2, "delete odex:"

    const-string v3, "delete dex:"

    const-string v4, "DeleteCoreTask"

    const-string v0, "======deleteSo====="

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "CONTEXT"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/e;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    .line 44
    const-string v6, "libWebCore_UC.so"

    const-string v7, "libV8_UC.so"

    const-string v8, "libandroid_uc_40.so"

    const-string v9, "libandroid_uc_41.so"

    const-string v10, "libandroid_uc_42.so"

    const-string v11, "libandroid_uc_43.so"

    const-string v12, "libandroid_uc_44.so"

    const-string v13, "libandroid_uc_50.so"

    const-string v14, "libskia_neon_uc.so"

    const-string v15, "libwebviewuc.so"

    const-string v16, "libimagehelper.so"

    const-string v17, "libvinit.so"

    const-string v18, "libInitHelper_UC.so"

    const-string v19, "libcrashsdk.so"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v6

    .line 61
    nop

    .line 62
    iget-object v0, v1, Lcom/uc/webview/export/internal/setup/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/uc/webview/export/internal/setup/av;

    .line 64
    nop

    .line 65
    nop

    .line 68
    nop

    .line 70
    instance-of v9, v9, Lcom/uc/webview/export/internal/setup/az;

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    .line 71
    iget-object v9, v1, Lcom/uc/webview/export/internal/setup/e;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v12, "soFilePath"

    invoke-virtual {v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 72
    iget-object v12, v1, Lcom/uc/webview/export/internal/setup/e;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "resFilePath"

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 73
    const/4 v13, 0x1

    goto :goto_1

    .line 70
    :cond_0
    move-object v9, v11

    move-object v12, v9

    const/4 v13, 0x0

    .line 76
    :goto_1
    if-eqz v9, :cond_1

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 77
    move-object v9, v11

    .line 80
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 81
    invoke-static {v12}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    nop

    .line 84
    const-string v14, "flags"

    invoke-static {v5, v14}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    const-string v8, "delcore"

    invoke-static {v14, v8}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 87
    new-instance v14, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    const-string v7, "_2"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_3"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 91
    const-string v2, "Skip delete UC files (over 3 times)."

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    goto/16 :goto_10

    .line 96
    :cond_2
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 97
    invoke-static {v5, v11}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 98
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    .line 102
    iget-object v3, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v11, Ljava/io/File;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 105
    :goto_2
    invoke-static {v5, v0, v11}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    .line 107
    :cond_4
    return-void

    .line 111
    :cond_5
    invoke-static {v9}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "deleteSo:"

    if-nez v11, :cond_c

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 116
    const-wide/16 v20, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v22, v5

    :try_start_1
    const-string v5, "2e67cdbeb4ec133dcc8204d930aa7145"

    invoke-direct {v0, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    new-instance v5, Ljava/io/File;

    const-string v1, "299772b0fd1634653ae3c31f366de3f8"

    invoke-direct {v5, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v23

    cmp-long v1, v23, v20

    if-nez v1, :cond_6

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v23, v0, v20

    if-nez v23, :cond_7

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 124
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v22, v5

    :cond_7
    :goto_3
    nop

    .line 128
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 129
    array-length v1, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_9

    aget-object v11, v0, v5

    .line 130
    move-object/from16 v23, v0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v24

    .line 132
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v25

    .line 133
    move/from16 v26, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v27, v7

    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v7, v0, v20

    if-nez v7, :cond_8

    .line 136
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    :cond_8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v7, v27

    goto :goto_4

    .line 139
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 141
    :cond_9
    move-object/from16 v27, v7

    goto :goto_6

    .line 139
    :catchall_3
    move-exception v0

    move-object/from16 v27, v7

    .line 140
    :goto_5
    const-string v1, "delete flag:"

    invoke-static {v4, v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_6
    nop

    .line 169
    const/4 v1, 0x0

    :goto_7
    const/16 v0, 0xe

    if-ge v1, v0, :cond_b

    aget-object v0, v6, v1

    .line 171
    :try_start_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 175
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 178
    goto :goto_8

    .line 176
    :catchall_4
    move-exception v0

    .line 177
    invoke-static {v4, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 180
    :cond_b
    const/4 v0, 0x1

    goto :goto_9

    .line 111
    :cond_c
    move-object/from16 v22, v5

    move-object/from16 v27, v7

    .line 183
    :goto_9
    if-nez v13, :cond_d

    .line 185
    :try_start_5
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 189
    goto :goto_a

    .line 187
    :catchall_5
    move-exception v0

    .line 188
    invoke-static {v4, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    :goto_a
    :try_start_6
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 195
    goto :goto_b

    .line 193
    :catchall_6
    move-exception v0

    .line 194
    invoke-static {v4, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :goto_b
    :try_start_7
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v5, "dex.dex"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 202
    goto :goto_c

    .line 200
    :catchall_7
    move-exception v0

    .line 201
    invoke-static {v4, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :goto_c
    :try_start_8
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v5, "sdk_shell.dex"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 208
    goto :goto_d

    .line 206
    :catchall_8
    move-exception v0

    .line 207
    invoke-static {v4, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    :goto_d
    const/16 v17, 0x1

    goto :goto_e

    .line 183
    :cond_d
    move/from16 v17, v0

    .line 213
    :goto_e
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteCoreFlagDir:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 215
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    goto :goto_f

    .line 216
    :cond_e
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 217
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    goto :goto_f

    .line 218
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 219
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 223
    :cond_10
    goto :goto_f

    .line 221
    :catchall_9
    move-exception v0

    .line 222
    const-string v1, "deleteCoreFlag:"

    invoke-static {v4, v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    nop

    .line 62
    :goto_f
    move-object/from16 v1, p0

    move/from16 v0, v17

    move-object/from16 v7, v19

    move-object/from16 v5, v22

    goto/16 :goto_0

    .line 225
    :cond_11
    :goto_10
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/e;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 226
    if-eqz v0, :cond_12

    .line 227
    const-string v0, "sdk_stp_dcc"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 229
    :cond_12
    return-void
.end method
