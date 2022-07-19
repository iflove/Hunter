.class public Lcom/alipay/mpaas/bundle/d/c;
.super Ljava/lang/Object;
.source "ZipHandler.java"

# interfaces
.implements Lcom/alipay/mpaas/bundle/d/b;


# instance fields
.field private a:Lcom/alipay/mpaas/bundle/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 304
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    .locals 12
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "tarPath"    # Ljava/io/File;

    const-string v0, "ZipHandler"

    .line 216
    new-instance v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    invoke-direct {v1}, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;-><init>()V

    .line 218
    .local v1, "zipFileRecord":Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 219
    .local v2, "_zipFile":Ljava/util/zip/ZipFile;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    .line 221
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->getComment()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v4

    move-object v4, v3

    .line 223
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "java.lang.NoSuchMethodError: java.util.zip.ZipFile.getComment()."

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->c:Ljava/lang/String;

    .line 227
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    .line 228
    .local v4, "enumeration":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 229
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 231
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    move-object v3, v8

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v5, "entryName":Ljava/lang/String;
    move-object v5, v8

    invoke-static {v8}, Lcom/alipay/mpaas/bundle/d/c;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 237
    new-instance v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;

    invoke-direct {v8}, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;-><init>()V

    .line 239
    .local v8, "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    const-string v10, "Failed to mkdir: "

    const-string v11, "ExtractEntry: "

    if-eqz v9, :cond_2

    .line 240
    sget-object v6, Lcom/alipay/mpaas/bundle/record/EntryType;->a:Lcom/alipay/mpaas/bundle/record/EntryType;

    iput-object v6, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    .line 241
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v6, "dir":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 244
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 245
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    .end local v6    # "dir":Ljava/io/File;
    :cond_1
    :goto_2
    goto :goto_4

    .line 249
    :cond_2
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    .local v6, "file":Ljava/io/File;
    move-object v6, v9

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 251
    .local v7, "dir":Ljava/io/File;
    move-object v7, v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 252
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    .line 253
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v9, v10}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {v6}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->n:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v6}, Lcom/alipay/mpaas/bundle/d/c;->a(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 263
    sget-object v9, Lcom/alipay/mpaas/bundle/record/EntryType;->c:Lcom/alipay/mpaas/bundle/record/EntryType;

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    goto :goto_4

    .line 264
    :cond_5
    iget-object v9, p0, Lcom/alipay/mpaas/bundle/d/c;->a:Lcom/alipay/mpaas/bundle/d/a;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Lcom/alipay/mpaas/bundle/d/a;->a()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 265
    sget-object v9, Lcom/alipay/mpaas/bundle/record/EntryType;->d:Lcom/alipay/mpaas/bundle/record/EntryType;

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    goto :goto_4

    .line 267
    :cond_6
    sget-object v9, Lcom/alipay/mpaas/bundle/record/EntryType;->b:Lcom/alipay/mpaas/bundle/record/EntryType;

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    .line 270
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "dir":Ljava/io/File;
    :goto_4
    iput-object v5, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    .line 271
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->q:Ljava/lang/Long;

    .line 280
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->t:Ljava/lang/Long;

    .line 281
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->u:Ljava/lang/Long;

    .line 282
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->v:Ljava/lang/Long;

    .line 283
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    .line 286
    :try_start_1
    const-class v9, Ljava/util/zip/ZipEntry;

    const-string v10, "flag"

    invoke-static {v9, v3, v10}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->x:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    goto :goto_5

    .line 287
    :catchall_1
    move-exception v9

    .line 291
    :goto_5
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v9

    .line 292
    .local v6, "extra":[B
    move-object v6, v9

    if-eqz v9, :cond_7

    .line 293
    invoke-static {v6}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->y:Lokio/ByteString;

    .line 295
    :cond_7
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->z:Ljava/lang/String;

    .line 297
    iget-object v9, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryName":Ljava/lang/String;
    .end local v6    # "extra":[B
    .end local v8    # "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    goto/16 :goto_1

    .line 234
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "entryName":Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pathSecurityCheck fail: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryName":Ljava/lang/String;
    :cond_9
    return-object v1
.end method

.method private static b(Ljava/io/File;Lcom/alipay/mpaas/bundle/record/ZipFileRecord;Ljava/io/File;)V
    .locals 16
    .param p0, "srcPath"    # Ljava/io/File;
    .param p1, "zipFileRecord"    # Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    .param p2, "zipFile"    # Ljava/io/File;

    .line 108
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v0

    .line 110
    .local v2, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/16 v4, 0x8

    const-string v5, "PutNextEntry: "

    const-string v6, "ZipHandler"

    const/4 v0, 0x0

    if-eqz v1, :cond_c

    iget-object v7, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    if-eqz v7, :cond_c

    iget-object v7, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v12, p0

    goto/16 :goto_3

    .line 134
    :cond_0
    iget-object v7, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->e:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 135
    iget-object v7, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->d:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 136
    iget-object v7, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->d:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 139
    :cond_1
    iget-object v7, v1, Lcom/alipay/mpaas/bundle/record/ZipFileRecord;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;

    .line 140
    .local v9, "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    new-instance v10, Ljava/io/File;

    iget-object v11, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    move-object/from16 v12, p0

    invoke-direct {v10, v12, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v10, "file":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v11, Ljava/util/zip/ZipEntry;

    iget-object v13, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->o:Ljava/lang/String;

    invoke-direct {v11, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v13, v11

    .end local v0    # "zipEntry":Ljava/util/zip/ZipEntry;
    .local v13, "zipEntry":Ljava/util/zip/ZipEntry;
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->q:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 153
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    .line 156
    :cond_2
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 158
    sget-object v0, Lcom/alipay/mpaas/bundle/record/EntryType;->d:Lcom/alipay/mpaas/bundle/record/EntryType;

    iget-object v11, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->m:Lcom/alipay/mpaas/bundle/record/EntryType;

    if-ne v0, v11, :cond_3

    .line 159
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 160
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 161
    invoke-static {v10}, Lcom/alipay/mpaas/bundle/c/a;->a(Ljava/io/File;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 162
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_1

    .line 165
    :cond_3
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->t:Ljava/lang/Long;

    if-nez v0, :cond_4

    .line 166
    invoke-static {v10}, Lcom/alipay/mpaas/bundle/c/a;->a(Ljava/io/File;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->t:Ljava/lang/Long;

    .line 168
    :cond_4
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->t:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 170
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->u:Ljava/lang/Long;

    if-nez v0, :cond_5

    .line 171
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->u:Ljava/lang/Long;

    .line 173
    :cond_5
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->u:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 174
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 175
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->v:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 179
    :cond_6
    :goto_1
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 181
    :try_start_0
    const-class v0, Ljava/util/zip/ZipEntry;

    const-string v11, "flag"

    iget-object v14, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->x:Ljava/lang/Integer;

    invoke-static {v0, v13, v11, v14}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    goto :goto_2

    .line 182
    :catchall_0
    move-exception v0

    .line 186
    :cond_7
    :goto_2
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->y:Lokio/ByteString;

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->y:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 189
    :cond_8
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->z:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, v9, Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;->z:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 193
    :cond_9
    invoke-virtual {v2, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 194
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 195
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    .local v8, "fis":Ljava/io/FileInputStream;
    move-object v8, v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->copyStreamWithoutClosing(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 197
    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 200
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :cond_a
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 202
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 203
    .end local v9    # "zipEntryRecord":Lcom/alipay/mpaas/bundle/record/ZipEntryRecord;
    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v0, v13

    goto/16 :goto_0

    .line 139
    :cond_b
    move-object/from16 v12, p0

    goto/16 :goto_5

    .line 110
    :cond_c
    move-object/from16 v12, p0

    .line 111
    :goto_3
    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 113
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v7

    .line 115
    .local v7, "files":[Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "rootDir":Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x0

    move-object v10, v0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v9, :cond_d

    aget-object v13, v7, v11

    .line 117
    .local v13, "file":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v14, Ljava/util/zip/ZipEntry;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    const-string v4, ""

    invoke-virtual {v15, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v0    # "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v0, v14

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 121
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 124
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 126
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    .local v10, "fis":Ljava/io/FileInputStream;
    move-object v10, v4

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->copyStreamWithoutClosing(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    invoke-static {v10}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 129
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 131
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 116
    .end local v0    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "file":Ljava/io/File;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p2

    const/16 v4, 0x8

    goto :goto_4

    .line 133
    .end local v7    # "files":[Ljava/io/File;
    .end local v8    # "rootDir":Ljava/lang/String;
    :cond_d
    nop

    .line 205
    :goto_5
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 206
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    .locals 3
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "tarPath"    # Ljava/io/File;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unzip : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZipHandler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete dir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/alipay/mpaas/bundle/d/c;->b(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;

    move-result-object v0

    return-object v0

    .line 94
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to mkdir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/io/File;Lcom/alipay/mpaas/bundle/record/ZipFileRecord;Ljava/io/File;)V
    .locals 3
    .param p1, "srcPath"    # Ljava/io/File;
    .param p2, "zipEntryRecords"    # Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    .param p3, "zipFile"    # Ljava/io/File;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zip : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZipHandler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mpaas/bundle/d/c;->b(Ljava/io/File;Lcom/alipay/mpaas/bundle/record/ZipFileRecord;Ljava/io/File;)V

    .line 82
    return-void
.end method

.method public final a(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 65
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v0, 0x1

    .line 69
    .local v0, "bRet":Z
    goto :goto_0

    .line 67
    .end local v0    # "bRet":Z
    :catch_0
    move-exception v0

    .line 68
    const/4 v0, 0x0

    .line 70
    .restart local v0    # "bRet":Z
    :goto_0
    return v0
.end method
