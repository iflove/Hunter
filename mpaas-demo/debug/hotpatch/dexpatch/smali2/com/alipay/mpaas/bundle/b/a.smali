.class public final Lcom/alipay/mpaas/bundle/b/a;
.super Ljava/lang/Object;
.source "BundlePatch.java"


# instance fields
.field private final a:Lcom/alipay/mpaas/bundle/b/c;


# direct methods
.method public constructor <init>(Lcom/alipay/mpaas/bundle/b/c;)V
    .locals 0
    .param p1, "zipPatch"    # Lcom/alipay/mpaas/bundle/b/c;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/mpaas/bundle/b/a;->a:Lcom/alipay/mpaas/bundle/b/c;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;[Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z
    .locals 29

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v3, v0, Lcom/alipay/mpaas/bundle/b/a;->a:Lcom/alipay/mpaas/bundle/b/c;

    invoke-virtual {v3}, Lcom/alipay/mpaas/bundle/b/c;->a()Lcom/alipay/mpaas/bundle/d/b;

    move-result-object v3

    move-object/from16 v7, p3

    invoke-interface {v3, v7, v5}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    .line 63
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 65
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, v0, Lcom/alipay/mpaas/bundle/b/a;->a:Lcom/alipay/mpaas/bundle/b/c;

    invoke-virtual {v3}, Lcom/alipay/mpaas/bundle/b/c;->a()Lcom/alipay/mpaas/bundle/d/b;

    move-result-object v3

    invoke-interface {v3, v2, v7}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    .line 68
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "entry_records.pb"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 70
    new-instance v9, Lcom/squareup/wire/Wire;

    new-array v10, v6, [Ljava/lang/Class;

    invoke-direct {v9, v10}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    const-class v10, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    invoke-virtual {v9, v8, v10}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v8

    check-cast v8, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'zipFileRecord => "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "ZipPatch"

    invoke-static {v9, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 75
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 81
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 85
    nop

    .line 86
    new-instance v2, Lcom/alipay/mpaas/bundle/a/a;

    new-instance v4, Ljava/io/File;

    const-string v10, "assets/diff_file_map.ini"

    invoke-direct {v4, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/alipay/mpaas/bundle/a/a;-><init>(Ljava/io/File;)V

    .line 89
    nop

    .line 90
    iget-object v4, v8, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;

    .line 91
    iget-object v6, v15, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    .line 92
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 95
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    move-object/from16 v22, v4

    invoke-virtual {v2, v6}, Lcom/alipay/mpaas/bundle/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_4

    .line 100
    move-object/from16 v23, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v24, v10

    const-string v10, "[diff map] map new entry: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to old entry: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_4
    move-object/from16 v23, v2

    move-object/from16 v24, v10

    .line 102
    :goto_1
    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v6

    .line 103
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b

    .line 105
    const-string v10, "lib/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 106
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/16 v25, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v26, v7

    const/4 v7, 0x2

    if-ge v10, v7, :cond_7

    aget-object v7, p2, v10

    .line 108
    move-object/from16 v27, v5

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    .line 111
    move-object/from16 p5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v3

    const-string v3, " exists="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-eqz v7, :cond_6

    .line 113
    invoke-static {v5, v2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copySingleFile(Ljava/io/File;Ljava/io/File;)Z

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copy file :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    goto :goto_4

    .line 107
    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p5

    move-object/from16 v7, v26

    move-object/from16 v5, v27

    move-object/from16 v3, v28

    goto :goto_3

    .line 118
    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v27, v5

    goto :goto_4

    :cond_8
    move-object/from16 v28, v3

    move-object/from16 v27, v5

    move-object/from16 v26, v7

    const/16 v25, 0x1

    const-string v3, "assets/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 119
    if-nez v14, :cond_9

    .line 120
    new-instance v14, Ljava/util/zip/ZipFile;

    invoke-direct {v14, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 122
    :cond_9
    invoke-virtual {v14, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_a

    .line 124
    invoke-virtual {v14, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 125
    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 126
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 127
    goto :goto_4

    .line 128
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist in"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 104
    :cond_b
    move-object/from16 v28, v3

    move-object/from16 v27, v5

    move-object/from16 v26, v7

    const/16 v25, 0x1

    .line 133
    :cond_c
    :goto_4
    nop

    .line 134
    iget-object v3, v15, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    sget-object v4, Lcom/alipay/mpaas/bundle/record/EntryType;->b:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-ne v3, v4, :cond_d

    .line 135
    invoke-static {v12}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_5

    .line 134
    :cond_d
    const/16 v21, 0x0

    .line 138
    :goto_5
    iget-object v3, v0, Lcom/alipay/mpaas/bundle/b/a;->a:Lcom/alipay/mpaas/bundle/b/c;

    move-object/from16 v16, v3

    move-object/from16 v17, v15

    move-object/from16 v18, v2

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-virtual/range {v16 .. v21}, Lcom/alipay/mpaas/bundle/b/c;->a(Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 139
    if-eqz v2, :cond_e

    if-eqz v13, :cond_e

    const/4 v13, 0x1

    goto :goto_6

    :cond_e
    const/4 v13, 0x0

    .line 140
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BundlePatch.ZipPatch.patch("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]) : bTemp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bRet="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object/from16 v4, v22

    move-object/from16 v2, v23

    move-object/from16 v10, v24

    move-object/from16 v7, v26

    move-object/from16 v5, v27

    move-object/from16 v3, v28

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 92
    :cond_f
    move-object/from16 v23, v2

    move-object/from16 v28, v3

    move-object/from16 v22, v4

    move-object/from16 v27, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v10

    const/16 v25, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 143
    :cond_10
    move-object/from16 v28, v3

    move-object/from16 v27, v5

    move-object/from16 v26, v7

    if-eqz v13, :cond_12

    .line 144
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 145
    invoke-static/range {p4 .. p4}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 148
    :cond_11
    iget-object v1, v0, Lcom/alipay/mpaas/bundle/b/a;->a:Lcom/alipay/mpaas/bundle/b/c;

    invoke-virtual {v1}, Lcom/alipay/mpaas/bundle/b/c;->a()Lcom/alipay/mpaas/bundle/d/b;

    move-result-object v1

    move-object/from16 v2, p4

    move-object/from16 v3, v28

    invoke-interface {v1, v3, v8, v2}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;Lcom/alipay/mpaas/bundle/record/ZipFileRecord;Ljava/io/File;)V

    goto :goto_7

    .line 143
    :cond_12
    move-object/from16 v3, v28

    .line 152
    :goto_7
    invoke-static/range {v27 .. v27}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 153
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 154
    invoke-static/range {v26 .. v26}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 156
    return v13

    .line 82
    :cond_13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to mkdirs: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
