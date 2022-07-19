.class public Lcom/alipay/mobile/common/patch/dir/TarUtil;
.super Ljava/lang/Object;
.source "TarUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TarUtil"

.field public static failMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/TarUtil;->failMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p0, "tarPath"    # Ljava/lang/String;
    .param p1, "tarFolder"    # Ljava/lang/String;

    .line 73
    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "TarUtil"

    if-nez v0, :cond_0

    .line 74
    const-string v0, "create tar file failed"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v2

    .line 77
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const-string/jumbo v0, "tar folder not exists!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v2

    .line 82
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->childOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const-string v0, "can\'t create tar file under folder!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v2

    .line 88
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p0

    :try_start_1
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "tarFile":Ljava/io/File;
    new-instance v5, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;

    invoke-direct {v5, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v5, "tos":Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    const/4 v7, 0x0

    .line 91
    .local v7, "fileStack":Ljava/util/Stack;
    move-object v7, v6

    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "rootFolder":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 94
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 95
    .local v8, "current":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v9, "currentFile":Ljava/io/File;
    invoke-static {v8}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 98
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 99
    .local v10, "children":[Ljava/io/File;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_1
    array-length v12, v10

    if-ge v11, v12, :cond_3

    .line 100
    aget-object v12, v10, v11

    .line 101
    .local v12, "child":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    nop

    .end local v12    # "child":Ljava/io/File;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 103
    .end local v10    # "children":[Ljava/io/File;
    .end local v11    # "index":I
    :cond_3
    goto :goto_0

    .line 104
    :cond_4
    const-string v10, ""

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, "entryName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "tar entryName "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v11, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-direct {v11, v9, v10}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v11, "te":Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;
    invoke-virtual {v5, v11}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->putNextEntry(Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;)V

    .line 109
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v12, "fis":Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 112
    .local v13, "origin":Ljava/io/BufferedInputStream;
    const/16 v14, 0x800

    new-array v14, v14, [B

    .line 113
    .local v14, "data":[B
    :goto_2
    invoke-virtual {v13, v14}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    move/from16 v16, v15

    .local v16, "count":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_5

    .line 114
    move/from16 v2, v16

    const/4 v15, 0x0

    .end local v16    # "count":I
    .local v2, "count":I
    invoke-virtual {v5, v14, v15, v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->write([BII)V

    const/4 v2, 0x0

    goto :goto_2

    .line 116
    .end local v2    # "count":I
    .restart local v16    # "count":I
    :cond_5
    move/from16 v2, v16

    const/4 v15, 0x0

    .end local v16    # "count":I
    .restart local v2    # "count":I
    invoke-virtual {v5}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->flush()V

    .line 117
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 119
    .end local v2    # "count":I
    .end local v8    # "current":Ljava/lang/String;
    .end local v9    # "currentFile":Ljava/io/File;
    .end local v10    # "entryName":Ljava/lang/String;
    .end local v11    # "te":Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "origin":Ljava/io/BufferedInputStream;
    .end local v14    # "data":[B
    const/4 v2, 0x0

    goto :goto_0

    .line 120
    :cond_6
    invoke-virtual {v5}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .end local v0    # "tarFile":Ljava/io/File;
    .end local v5    # "tos":Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;
    .end local v6    # "rootFolder":Ljava/lang/String;
    .end local v7    # "fileStack":Ljava/util/Stack;
    goto :goto_4

    .line 121
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "error"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v0, 0x1

    return v0
.end method

.method public static untar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "tarPath"    # Ljava/lang/String;
    .param p1, "untarFolder"    # Ljava/lang/String;

    .line 23
    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "TarUtil"

    if-nez v0, :cond_0

    .line 24
    const-string/jumbo v0, "tar path not exists!"

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/TarUtil;->failMessage:Ljava/lang/String;

    .line 25
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return v2

    .line 29
    :cond_0
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 30
    const-string v0, "failed to create untar folder."

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/TarUtil;->failMessage:Ljava/lang/String;

    .line 31
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v2

    .line 36
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p0

    :try_start_1
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .local v6, "bis":Ljava/io/BufferedInputStream;
    new-instance v7, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;

    invoke-direct {v7, v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    .local v7, "tis":Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;
    :goto_0
    invoke-virtual {v7}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->getNextEntry()Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    move-result-object v8

    move-object v9, v8

    .local v9, "te":Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;
    if-eqz v8, :cond_5

    .line 42
    invoke-virtual {v9}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "entryName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "untar entry "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, "entryPath":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 47
    invoke-static {v10}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;)Z

    goto :goto_0

    .line 49
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_2
    invoke-static {v10, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_3

    .line 50
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "failed to create file "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 54
    :cond_3
    const/16 v11, 0x800

    new-array v11, v11, [B

    .line 56
    .local v11, "buffer":[B
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 57
    .local v12, "fos":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    invoke-virtual {v7, v11}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->read([B)I

    move-result v14

    move v15, v14

    .local v15, "count":I
    const/4 v0, -0x1

    if-eq v14, v0, :cond_4

    .line 59
    invoke-virtual {v13, v11, v2, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    const/4 v0, 0x1

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 62
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    .line 64
    .end local v8    # "entryName":Ljava/lang/String;
    .end local v10    # "entryPath":Ljava/lang/String;
    .end local v11    # "buffer":[B
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v15    # "count":I
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_5
    invoke-virtual {v7}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v7    # "tis":Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;
    .end local v9    # "te":Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;
    nop

    .line 69
    const/4 v0, 0x1

    return v0

    .line 66
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    :goto_2
    const/4 v4, 0x0

    :goto_3
    move-object v0, v4

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method
