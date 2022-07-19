.class public Lcom/alipay/mobile/common/patch/dir/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static childCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .line 170
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    return v1

    .line 173
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 175
    .local v2, "children":[Ljava/io/File;
    move-object v2, v0

    if-eqz v0, :cond_2

    array-length v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    array-length v0, v2

    return v0

    .line 176
    :cond_2
    :goto_0
    return v1
.end method

.method public static childOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "childPath"    # Ljava/lang/String;
    .param p1, "parentPath"    # Ljava/lang/String;

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_1
    return v1

    .line 159
    :cond_2
    :goto_0
    return v1
.end method

.method public static cleanPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return-object p0

    .line 186
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 191
    :goto_0
    return-object p0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 237
    return v2

    .line 241
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    .line 246
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    if-nez p2, :cond_3

    .line 248
    return v1

    .line 250
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/lang/String;)Z

    .line 253
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 254
    return v1

    .line 253
    :cond_5
    const/4 v0, 0x0

    move-object v3, v0

    .local v3, "out":Ljava/io/FileOutputStream;
    move-object v4, v0

    .line 262
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 263
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v3, v5

    .line 266
    nop

    .line 269
    const/16 v5, 0x4000

    :try_start_1
    new-array v0, v5, [B

    .line 272
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    .line 273
    invoke-virtual {v3, v0, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 275
    .end local v0    # "buffer":[B
    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .end local v6    # "len":I
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 281
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    .line 285
    nop

    .line 286
    :goto_1
    return v2

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 281
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 284
    goto :goto_2

    .line 282
    :catch_1
    move-exception v1

    .line 284
    :goto_2
    throw v0

    .line 276
    :catch_2
    move-exception v2

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 281
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 284
    goto :goto_3

    .line 282
    :catch_3
    move-exception v2

    .line 277
    :goto_3
    return v1

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 265
    .restart local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    return v1

    .line 232
    :cond_8
    :goto_5
    return v1
.end method

.method public static create(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 29
    return v1

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 40
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 42
    :catch_0
    move-exception v0

    .line 45
    return v1
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 110
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 118
    :cond_1
    const/4 v0, 0x1

    .line 119
    .local v0, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 120
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 121
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    or-int/2addr v2, v0

    .line 125
    return v2
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static exists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static fileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 300
    if-nez p0, :cond_0

    .line 301
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 307
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 308
    return-object v1

    .line 311
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x0

    .line 312
    .local v2, "index":I
    move v2, v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 366
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 370
    .local v1, "index":I
    move v1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    .line 371
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 373
    :cond_1
    return-object p0
.end method

.method public static getFileStem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 381
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 382
    .local v2, "index":I
    move v2, v0

    if-lez v0, :cond_1

    .line 383
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getLastModified(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "absPath"    # Ljava/lang/String;

    .line 461
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 467
    .local v0, "lastModified":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 468
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 469
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 319
    if-nez p0, :cond_0

    .line 320
    const-string v0, "*/*"

    return-object v0

    .line 322
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 327
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "*/*"

    if-eqz v0, :cond_0

    .line 328
    return-object v1

    .line 330
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 332
    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 333
    .local v3, "type":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    return-object v1

    .line 336
    :cond_1
    return-object v3
.end method

.method public static getParent(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getParent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "absPath"    # Ljava/lang/String;

    .line 390
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 391
    return-object v1

    .line 394
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 395
    .local v2, "file":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    const/4 v3, 0x0

    move v4, v3

    .line 396
    .local v4, "length":I
    move v4, v0

    const/16 v5, 0x5000

    if-le v0, v5, :cond_1

    .line 397
    return-object v1

    .line 400
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v1

    .line 403
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v6

    .line 405
    const/16 v6, 0x400

    new-array v7, v6, [B

    move v8, v3

    .line 407
    .local v7, "buffer":[B
    .local v8, "len":I
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {v5, v7, v3, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    move v8, v10

    if-eq v9, v10, :cond_2

    .line 408
    invoke-virtual {v0, v7, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 411
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 412
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 413
    .end local v7    # "buffer":[B
    .end local v8    # "len":I
    :catch_0
    move-exception v3

    .line 416
    return-object v1
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 351
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 341
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 342
    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFolder(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 356
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 357
    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    if-nez p1, :cond_0

    .line 56
    const/4 v1, 0x0

    return v1

    .line 59
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 66
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    return v1

    .line 82
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    if-nez p2, :cond_2

    .line 84
    return v1

    .line 86
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/lang/String;)Z

    .line 91
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "srcFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "dstFile":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 94
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v2    # "dstFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 97
    return v1

    .line 75
    :cond_4
    :goto_0
    return v1
.end method

.method public static final read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 440
    if-nez p0, :cond_0

    .line 441
    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 445
    new-array v1, v1, [B

    .line 448
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 449
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 450
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 451
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :cond_1
    goto :goto_1

    .line 453
    :catch_0
    move-exception p0

    .line 456
    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 457
    return-object p0
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 423
    .local v1, "ips":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 424
    move-object v1, v2

    invoke-static {v2}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 430
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 433
    :goto_0
    goto :goto_3

    .line 431
    :catch_0
    move-exception v2

    goto :goto_0

    .line 425
    :catch_1
    move-exception v2

    goto :goto_2

    .line 428
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 430
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 433
    goto :goto_1

    .line 431
    :catch_2
    move-exception v3

    .line 433
    :cond_0
    :goto_1
    throw v2

    .line 428
    :goto_2
    if-eqz v1, :cond_1

    .line 430
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 436
    :cond_1
    :goto_3
    return-object v0
.end method

.method public static size(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 203
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    return-wide v1

    .line 207
    :cond_0
    const-wide/16 v3, 0x0

    .line 208
    .local v3, "length":J
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 210
    return-wide v0

    .line 213
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v5, 0x0

    .line 214
    .local v5, "files":[Ljava/io/File;
    move-object v5, v0

    if-eqz v0, :cond_4

    array-length v0, v5

    if-nez v0, :cond_2

    goto :goto_1

    .line 218
    :cond_2
    array-length v0, v5

    .line 219
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 220
    aget-object v2, v5, v1

    .line 221
    .local v2, "child":Ljava/io/File;
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 219
    .end local v2    # "child":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "index":I
    :cond_3
    return-wide v3

    .line 215
    .end local v0    # "size":I
    :cond_4
    :goto_1
    return-wide v1
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .line 195
    if-nez p0, :cond_0

    .line 196
    const-wide/16 v0, 0x0

    return-wide v0

    .line 198
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
