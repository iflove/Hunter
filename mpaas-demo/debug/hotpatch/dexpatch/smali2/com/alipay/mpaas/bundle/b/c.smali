.class public final Lcom/alipay/mpaas/bundle/b/c;
.super Ljava/lang/Object;
.source "ZipPatch.java"


# instance fields
.field private final a:Lcom/alipay/mpaas/bundle/d/b;

.field private final b:Lcom/alipay/mpaas/bundle/d/a;

.field private final c:Lcom/alipay/mpaas/bundle/b/b;


# direct methods
.method public constructor <init>(Lcom/alipay/mpaas/bundle/d/b;Lcom/alipay/mpaas/bundle/d/a;Lcom/alipay/mpaas/bundle/b/b;)V
    .locals 0
    .param p1, "zipHandler"    # Lcom/alipay/mpaas/bundle/d/b;
    .param p2, "sevenZHandler"    # Lcom/alipay/mpaas/bundle/d/a;
    .param p3, "bsPatch"    # Lcom/alipay/mpaas/bundle/b/b;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alipay/mpaas/bundle/b/c;->a:Lcom/alipay/mpaas/bundle/d/b;

    .line 64
    iput-object p2, p0, Lcom/alipay/mpaas/bundle/b/c;->b:Lcom/alipay/mpaas/bundle/d/a;

    .line 65
    iput-object p3, p0, Lcom/alipay/mpaas/bundle/b/c;->c:Lcom/alipay/mpaas/bundle/b/b;

    .line 66
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mpaas/bundle/d/b;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/mpaas/bundle/b/c;->a:Lcom/alipay/mpaas/bundle/d/b;

    return-object v0
.end method

.method public final a(Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 23
    .param p1, "record"    # Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    .param p2, "oldFile"    # Ljava/io/File;
    .param p3, "newFile"    # Ljava/io/File;
    .param p4, "patchFile"    # Ljava/io/File;
    .param p5, "patchFileMD5"    # Ljava/lang/String;

    .line 107
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v11, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->n:Ljava/lang/String;

    .line 109
    .local v11, "newFileMD5":Ljava/lang/String;
    iget-object v0, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    sget-object v1, Lcom/alipay/mpaas/bundle/record/EntryType;->a:Lcom/alipay/mpaas/bundle/record/EntryType;

    const-string v2, "Failed to mkdirs: "

    const/4 v12, 0x1

    const-string v13, "ZipPatch"

    if-ne v0, v1, :cond_2

    .line 110
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkdirs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    :goto_0
    return v12

    .line 120
    :cond_2
    const/4 v14, 0x0

    .line 121
    .local v14, "bRet":Z
    const/4 v15, 0x0

    .line 123
    .local v15, "isLegalOperate":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enter patch. entryType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", opType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\noldFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\npatchFile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    sget-object v1, Lcom/alipay/mpaas/bundle/record/EntryType;->b:Lcom/alipay/mpaas/bundle/record/EntryType;

    const-string v3, "removeFile: "

    const-string v4, "copyFile(add): "

    const-string v5, " => "

    if-ne v0, v1, :cond_c

    .line 128
    sget-object v0, Lcom/alipay/mpaas/bundle/b/c$1;->a:[I

    iget-object v1, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-virtual {v1}, Lcom/alipay/mpaas/bundle/record/OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v12, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    move-object/from16 v2, p5

    goto/16 :goto_1

    .line 151
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    const/4 v15, 0x1

    .line 153
    invoke-static/range {p2 .. p3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v14

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "copyFile(no-change): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p5

    goto/16 :goto_1

    .line 151
    :cond_4
    move-object/from16 v2, p5

    goto/16 :goto_1

    .line 144
    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 145
    const/4 v14, 0x1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v15, 0x1

    move-object/from16 v2, p5

    goto/16 :goto_1

    .line 144
    :cond_6
    move-object/from16 v2, p5

    goto/16 :goto_1

    .line 137
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 138
    invoke-static {v10, v9}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v14

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because old file not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v15, 0x1

    move-object/from16 v2, p5

    goto :goto_1

    .line 137
    :cond_8
    move-object/from16 v2, p5

    goto :goto_1

    .line 130
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    iget-object v0, v6, Lcom/alipay/mpaas/bundle/b/c;->c:Lcom/alipay/mpaas/bundle/b/b;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mpaas/bundle/b/b;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bspatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], bRet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v15, 0x1

    goto :goto_1

    .line 130
    :cond_a
    move-object/from16 v2, p5

    .line 159
    :goto_1
    if-eqz v15, :cond_b

    .line 165
    return v14

    .line 160
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isLegalOperate! FILE OP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not legal operate! \npatchFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",  exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\noldFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isLegalOperate: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_c
    iget-object v0, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    sget-object v1, Lcom/alipay/mpaas/bundle/record/EntryType;->c:Lcom/alipay/mpaas/bundle/record/EntryType;

    const/4 v12, 0x0

    if-eq v0, v1, :cond_e

    iget-object v0, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    sget-object v1, Lcom/alipay/mpaas/bundle/record/EntryType;->d:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-ne v0, v1, :cond_d

    goto :goto_2

    .line 274
    :cond_d
    return v12

    .line 169
    :cond_e
    :goto_2
    sget-object v0, Lcom/alipay/mpaas/bundle/b/c$1;->a:[I

    iget-object v1, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-virtual {v1}, Lcom/alipay/mpaas/bundle/record/OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const-string v1, " because no patch file!"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f

    move-object/from16 v19, v11

    goto/16 :goto_b

    .line 185
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    const/4 v15, 0x1

    .line 187
    invoke-static/range {p2 .. p3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v14

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copyFile(no-change-zip): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v11

    goto/16 :goto_b

    .line 185
    :cond_10
    move-object/from16 v19, v11

    goto/16 :goto_b

    .line 171
    :cond_11
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 172
    const/4 v15, 0x1

    .line 173
    const/4 v14, 0x1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v11

    goto/16 :goto_b

    .line 171
    :cond_12
    move-object/from16 v19, v11

    goto/16 :goto_b

    .line 178
    :cond_13
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 179
    const/4 v15, 0x1

    .line 180
    invoke-static {v10, v9}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v14

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v11

    goto/16 :goto_b

    .line 178
    :cond_14
    move-object/from16 v19, v11

    goto/16 :goto_b

    .line 192
    :cond_15
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 193
    const/4 v15, 0x1

    .line 195
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 196
    .local v4, "name":Ljava/lang/String;
    move-object v4, v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_16
    move-object v0, v4

    .line 197
    .end local v4    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 198
    .local v1, "oldDir":Ljava/io/File;
    sget-object v4, Lcom/alipay/mpaas/bundle/record/EntryType;->c:Lcom/alipay/mpaas/bundle/record/EntryType;

    iget-object v3, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-ne v4, v3, :cond_17

    .line 199
    iget-object v3, v6, Lcom/alipay/mpaas/bundle/b/c;->a:Lcom/alipay/mpaas/bundle/d/b;

    invoke-interface {v3, v8, v1}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    goto :goto_4

    .line 201
    :cond_17
    iget-object v3, v6, Lcom/alipay/mpaas/bundle/b/c;->b:Lcom/alipay/mpaas/bundle/d/a;

    invoke-interface {v3, v8, v1}, Lcom/alipay/mpaas/bundle/d/a;->a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    .line 205
    :goto_4
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 206
    move-object v0, v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_18
    move-object v3, v0

    :goto_5
    move-object v0, v3

    .line 207
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 208
    .local v4, "patchDir":Ljava/io/File;
    sget-object v3, Lcom/alipay/mpaas/bundle/record/EntryType;->c:Lcom/alipay/mpaas/bundle/record/EntryType;

    iget-object v12, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-ne v3, v12, :cond_19

    .line 209
    iget-object v3, v6, Lcom/alipay/mpaas/bundle/b/c;->a:Lcom/alipay/mpaas/bundle/d/b;

    invoke-interface {v3, v10, v4}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    goto :goto_6

    .line 211
    :cond_19
    iget-object v3, v6, Lcom/alipay/mpaas/bundle/b/c;->a:Lcom/alipay/mpaas/bundle/d/b;

    invoke-interface {v3, v10, v4}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    .line 214
    :goto_6
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    move-object/from16 v17, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    const-string v0, "entry_records.pb"

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    move-object v12, v0

    .line 215
    .local v12, "fis":Ljava/io/FileInputStream;
    move-object v12, v3

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 216
    .local v0, "bytes":[B
    new-instance v3, Lcom/squareup/wire/Wire;

    move-object/from16 v19, v11

    const/4 v8, 0x0

    .end local v11    # "newFileMD5":Ljava/lang/String;
    .local v19, "newFileMD5":Ljava/lang/String;
    new-array v11, v8, [Ljava/lang/Class;

    invoke-direct {v3, v11}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    const-class v8, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    invoke-virtual {v3, v0, v8}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    .line 217
    .local v8, "zipFileRecord":Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\'zipFileRecord => "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 222
    move-object v11, v3

    .end local v17    # "name":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v11, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_1a
    const/4 v13, 0x0

    move-object v3, v11

    :goto_7
    move-object v11, v3

    .line 223
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 224
    .local v5, "newDir":Ljava/io/File;
    move-object v5, v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 225
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 227
    :cond_1b
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 231
    const/4 v2, 0x1

    .line 233
    .end local v14    # "bRet":Z
    .local v2, "bRet":Z
    iget-object v3, v8, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move/from16 v16, v2

    .end local v2    # "bRet":Z
    .local v16, "bRet":Z
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;

    .line 234
    .local v2, "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    new-instance v3, Ljava/io/File;

    iget-object v13, v2, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    invoke-direct {v3, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    .local v3, "_newFile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    move-object/from16 v17, v0

    .end local v0    # "bytes":[B
    .local v17, "bytes":[B
    iget-object v0, v2, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    invoke-direct {v13, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v20, v4

    .end local v4    # "patchDir":Ljava/io/File;
    .local v20, "patchDir":Ljava/io/File;
    move-object v4, v13

    .line 236
    .local v4, "_patchFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v13, v2, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v2

    .end local v2    # "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    .local v13, "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    move-object v2, v0

    .line 238
    .local v2, "_oldFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 239
    .local v0, "_patchFileMD5":Ljava/lang/String;
    move-object/from16 v21, v0

    .end local v0    # "_patchFileMD5":Ljava/lang/String;
    .local v21, "_patchFileMD5":Ljava/lang/String;
    iget-object v0, v13, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    move-object/from16 v22, v1

    .end local v1    # "oldDir":Ljava/io/File;
    .local v22, "oldDir":Ljava/io/File;
    sget-object v1, Lcom/alipay/mpaas/bundle/record/EntryType;->b:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-ne v0, v1, :cond_1c

    .line 240
    invoke-static {v4}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 242
    :cond_1c
    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    const/16 v18, 0x1

    move-object v1, v13

    move-object v10, v5

    .end local v5    # "newDir":Ljava/io/File;
    .local v10, "newDir":Ljava/io/File;
    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mpaas/bundle/b/c;->a(Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    goto :goto_9

    .end local v10    # "newDir":Ljava/io/File;
    .restart local v5    # "newDir":Ljava/io/File;
    :cond_1d
    move-object v10, v5

    const/16 v18, 0x1

    .end local v5    # "newDir":Ljava/io/File;
    .restart local v10    # "newDir":Ljava/io/File;
    :cond_1e
    const/4 v1, 0x0

    :goto_9
    move/from16 v16, v1

    .line 243
    .end local v2    # "_oldFile":Ljava/io/File;
    .end local v3    # "_newFile":Ljava/io/File;
    .end local v4    # "_patchFile":Ljava/io/File;
    .end local v13    # "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    .end local v21    # "_patchFileMD5":Ljava/lang/String;
    move-object v5, v10

    move-object/from16 v0, v17

    move-object/from16 v4, v20

    move-object/from16 v1, v22

    const/4 v13, 0x0

    move-object/from16 v10, p4

    goto :goto_8

    .line 245
    .end local v10    # "newDir":Ljava/io/File;
    .end local v17    # "bytes":[B
    .end local v20    # "patchDir":Ljava/io/File;
    .end local v22    # "oldDir":Ljava/io/File;
    .local v0, "bytes":[B
    .restart local v1    # "oldDir":Ljava/io/File;
    .local v4, "patchDir":Ljava/io/File;
    .restart local v5    # "newDir":Ljava/io/File;
    :cond_1f
    move-object/from16 v17, v0

    move-object/from16 v22, v1

    move-object/from16 v20, v4

    move-object v10, v5

    .end local v0    # "bytes":[B
    .end local v1    # "oldDir":Ljava/io/File;
    .end local v4    # "patchDir":Ljava/io/File;
    .end local v5    # "newDir":Ljava/io/File;
    .restart local v10    # "newDir":Ljava/io/File;
    .restart local v17    # "bytes":[B
    .restart local v20    # "patchDir":Ljava/io/File;
    .restart local v22    # "oldDir":Ljava/io/File;
    if-eqz v16, :cond_22

    .line 246
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 247
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 250
    :cond_20
    sget-object v0, Lcom/alipay/mpaas/bundle/record/EntryType;->c:Lcom/alipay/mpaas/bundle/record/EntryType;

    iget-object v1, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-ne v0, v1, :cond_21

    .line 251
    iget-object v0, v6, Lcom/alipay/mpaas/bundle/b/c;->a:Lcom/alipay/mpaas/bundle/d/b;

    invoke-interface {v0, v10, v8, v9}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Lcom/alipay/mpaas/bundle/record/ZipFileRecord;Ljava/io/File;)V

    goto :goto_a

    .line 253
    :cond_21
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->e:Ljava/lang/Integer;

    .line 254
    iget-object v0, v6, Lcom/alipay/mpaas/bundle/b/c;->a:Lcom/alipay/mpaas/bundle/d/b;

    invoke-interface {v0, v10, v8, v9}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Lcom/alipay/mpaas/bundle/record/ZipFileRecord;Ljava/io/File;)V

    .line 259
    :cond_22
    :goto_a
    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 260
    invoke-static {v10}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 261
    invoke-static/range {v20 .. v20}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move/from16 v14, v16

    goto :goto_b

    .line 228
    .end local v10    # "newDir":Ljava/io/File;
    .end local v16    # "bRet":Z
    .end local v17    # "bytes":[B
    .end local v20    # "patchDir":Ljava/io/File;
    .end local v22    # "oldDir":Ljava/io/File;
    .restart local v0    # "bytes":[B
    .restart local v1    # "oldDir":Ljava/io/File;
    .restart local v4    # "patchDir":Ljava/io/File;
    .restart local v5    # "newDir":Ljava/io/File;
    .restart local v14    # "bRet":Z
    :cond_23
    move-object/from16 v17, v0

    move-object/from16 v22, v1

    move-object v10, v5

    .end local v0    # "bytes":[B
    .end local v1    # "oldDir":Ljava/io/File;
    .end local v5    # "newDir":Ljava/io/File;
    .restart local v10    # "newDir":Ljava/io/File;
    .restart local v17    # "bytes":[B
    .restart local v22    # "oldDir":Ljava/io/File;
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    .end local v4    # "patchDir":Ljava/io/File;
    .end local v8    # "zipFileRecord":Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    .end local v10    # "newDir":Ljava/io/File;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v17    # "bytes":[B
    .end local v19    # "newFileMD5":Ljava/lang/String;
    .end local v22    # "oldDir":Ljava/io/File;
    .local v11, "newFileMD5":Ljava/lang/String;
    :cond_24
    move-object/from16 v19, v11

    .line 267
    .end local v11    # "newFileMD5":Ljava/lang/String;
    .restart local v19    # "newFileMD5":Ljava/lang/String;
    :goto_b
    if-eqz v15, :cond_25

    .line 271
    return v14

    .line 268
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZIP OP:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->A:Lcom/alipay/mpaas/bundle/record/OpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not legal operate! patchFile exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " oldFile exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
