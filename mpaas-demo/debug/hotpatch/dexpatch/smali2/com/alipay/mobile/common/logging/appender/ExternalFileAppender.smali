.class public Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
.super Lcom/alipay/mobile/common/logging/appender/FileAppender;
.source "ExternalFileAppender.java"


# static fields
.field protected static final e:I

.field protected static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected g:Ljava/io/File;

.field protected h:J

.field protected i:Ljava/io/File;

.field protected j:Ljava/io/File;

.field protected k:Ljava/io/File;

.field protected l:J

.field protected m:J

.field protected n:J

.field protected o:Ljava/lang/StringBuilder;

.field protected p:I

.field protected q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e:I

    .line 41
    new-instance v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;JJJI)V
    .locals 2
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "fileRollTime"    # J
    .param p5, "expiredTime"    # J
    .param p7, "expiredSize"    # J
    .param p9, "eventBufferLength"    # I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/FileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    .line 83
    iput-wide p3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->l:J

    .line 84
    iput-wide p5, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->m:J

    .line 85
    iput-wide p7, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->n:J

    .line 89
    div-int/lit8 v0, p9, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->p:I

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    .line 91
    return-void
.end method

.method private static a(Ljava/io/File;JJ)V
    .locals 16

    .line 262
    const-string v1, "cleanExpiresFile"

    const-string v2, "Appender"

    if-eqz p0, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 266
    :cond_0
    nop

    .line 268
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    move-object v4, v0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 270
    invoke-static {v2, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v3

    .line 272
    :goto_0
    if-eqz v4, :cond_b

    array-length v0, v4

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 277
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 278
    sub-long v7, v5, p1

    .line 279
    add-long v5, v5, p1

    .line 281
    array-length v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    const-string v12, "cleanExpiresFile: "

    if-ge v11, v9, :cond_5

    aget-object v13, v4, v11

    .line 282
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, "_"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    .line 287
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 288
    cmp-long v0, v14, v7

    if-ltz v0, :cond_2

    cmp-long v0, v14, v5

    if-lez v0, :cond_3

    .line 289
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is too old !"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :cond_3
    goto :goto_2

    .line 292
    :catchall_1
    move-exception v0

    .line 293
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 298
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    cmp-long v0, v4, p3

    if-gez v0, :cond_6

    .line 299
    return-void

    .line 302
    :cond_6
    nop

    .line 304
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 307
    goto :goto_3

    .line 305
    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 306
    invoke-static {v2, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :goto_3
    if-eqz v3, :cond_a

    array-length v0, v3

    const/4 v1, 0x4

    if-ge v0, v1, :cond_7

    goto :goto_6

    .line 311
    :cond_7
    sget-object v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 313
    array-length v0, v3

    div-int/lit8 v1, v0, 0x4

    .line 314
    nop

    :goto_4
    if-ge v10, v1, :cond_9

    .line 315
    aget-object v4, v3, v10

    .line 316
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 320
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is too large !"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 324
    goto :goto_5

    .line 322
    :catchall_3
    move-exception v0

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cleanExpiresFile"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 326
    :cond_9
    return-void

    .line 309
    :cond_a
    :goto_6
    return-void

    .line 273
    :cond_b
    :goto_7
    return-void

    .line 263
    :cond_c
    :goto_8
    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 7
    .param p1, "currentFile"    # Ljava/io/File;

    .line 435
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    return v0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 444
    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    :cond_2
    return v0

    .line 451
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 452
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 453
    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 454
    return v0

    .line 458
    :cond_4
    nop

    .line 460
    return v2

    .line 456
    :catchall_0
    move-exception v1

    .line 457
    return v0

    .line 437
    :cond_5
    :goto_0
    return v0
.end method

.method private f()Z
    .locals 4

    .line 245
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 246
    .local v1, "bytes":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a([BI)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 246
    return v2

    .line 247
    .end local v1    # "bytes":[B
    :catchall_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-boolean v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->q:Z

    if-nez v2, :cond_0

    .line 249
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->q:Z

    .line 250
    const-string v2, "Appender"

    const-string v3, "appendLogEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 252
    return v0

    .line 254
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v1
.end method

.method private g()V
    .locals 12

    const-string v0, "Appender"

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 334
    .local v3, "currentFiles":[Ljava/io/File;
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 336
    .local v6, "curFile":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Ljava/io/File;)Z

    move-result v7

    .line 337
    if-nez v7, :cond_2

    .line 340
    new-instance v7, Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    .local v2, "bakFile":Ljava/io/File;
    move-object v2, v7

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "backupOtherFiles, bakFile should not be directory: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    goto :goto_1

    .line 345
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    .line 349
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "backupOtherFiles: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    invoke-static {v6, v2}, Lcom/alipay/mobile/common/logging/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    goto :goto_1

    .line 352
    :catchall_0
    move-exception v7

    .line 353
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v8, "backupOtherFiles: copyFile"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 334
    .end local v2    # "bakFile":Ljava/io/File;
    .end local v6    # "curFile":Ljava/io/File;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 358
    .end local v3    # "currentFiles":[Ljava/io/File;
    :cond_3
    return-void

    .line 356
    :catchall_1
    move-exception v1

    .line 357
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "backupOtherFiles"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private h()Ljava/io/File;
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i:Ljava/io/File;

    const-string v1, "getCurrentLogsDir"

    const-string v2, "Appender"

    if-nez v0, :cond_0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getStorageFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    .line 476
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    :cond_1
    goto :goto_1

    .line 483
    :catchall_1
    move-exception v0

    .line 484
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i:Ljava/io/File;

    return-object v0
.end method

.method private i()Ljava/io/File;
    .locals 7

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->j:Ljava/io/File;

    const-string v1, "getBackupLogsDir"

    const-string v2, "Appender"

    if-nez v0, :cond_0

    .line 492
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getCommonExternalStorageDir()Ljava/io/File;

    move-result-object v0

    .line 493
    .local v0, "alipayDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 494
    .local v3, "packageDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ic"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->j:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    .end local v0    # "alipayDir":Ljava/io/File;
    .end local v3    # "packageDir":Ljava/io/File;
    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    .line 496
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->j:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 505
    :cond_1
    goto :goto_1

    .line 503
    :catchall_1
    move-exception v0

    .line 504
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->j:Ljava/io/File;

    return-object v0
.end method

.method private j()Ljava/io/File;
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->k:Ljava/io/File;

    if-nez v0, :cond_0

    .line 512
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getCommonExternalStorageDir()Ljava/io/File;

    move-result-object v0

    .line 513
    .local v0, "alipayDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 514
    .local v1, "packageDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->k:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .end local v0    # "alipayDir":Ljava/io/File;
    .end local v1    # "packageDir":Ljava/io/File;
    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    .line 516
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Appender"

    const-string v2, "getBackupLogsDir_1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->k:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 131
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    const-string v0, "Appender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appender flush: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 5
    .param p1, "logEvent"    # Lcom/alipay/mobile/common/logging/api/LogEvent;

    monitor-enter p0

    .line 95
    if-nez p1, :cond_0

    .line 96
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    .local v1, "content":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 100
    monitor-exit p0

    return-void

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->p:I

    if-le v0, v3, :cond_4

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f()Z

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->p:I

    if-le v0, v2, :cond_3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    .local v0, "tmp":Ljava/lang/String;
    :try_start_2
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 112
    .local v2, "bytes":[B
    array-length v3, v2

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a([BI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .end local v2    # "bytes":[B
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-boolean v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->q:Z

    if-nez v3, :cond_2

    .line 115
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->q:Z

    .line 116
    const-string v3, "Appender"

    const-string v4, "appendLogEvent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .end local v0    # "tmp":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
    :cond_2
    monitor-exit p0

    return-void

    .line 121
    :cond_3
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 124
    :cond_4
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    monitor-exit p0

    return-void

    .line 94
    .end local v1    # "content":Ljava/lang/String;
    .end local p1    # "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    return-void
.end method

.method protected final declared-synchronized a(Z)V
    .locals 6
    .param p1, "isBackupOthers"    # Z

    monitor-enter p0

    .line 145
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineForExternalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "Appender"

    const-string v1, "backupCurrentFile: need not backup in offline"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    monitor-exit p0

    return-void

    .line 149
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
    :cond_0
    :try_start_1
    const-string v0, "Appender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backupCurrentFile: need to backup, isBackupOthers="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i()Ljava/io/File;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v0, "backupFile":Ljava/io/File;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .end local v0    # "backupFile":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "Appender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "backupFileCore: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 153
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    const-string v0, "Appender"

    const-string v1, "backupCurrentFile: no target log file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_1
    if-eqz p1, :cond_4

    .line 167
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    :cond_4
    monitor-exit p0

    return-void

    .line 144
    .end local p1    # "isBackupOthers":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final c()Ljava/io/File;
    .locals 12

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->l:J

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->h:J

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 177
    .local v2, "currentLogNameBuf":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->h:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineForExternalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "_dev"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    const-string v0, ".2nd"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "currentLogName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 185
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkAndRollFile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Appender"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->h()Ljava/io/File;

    move-result-object v3

    move-object v5, v1

    .line 189
    .local v5, "currentLogDir":Ljava/io/File;
    move-object v5, v3

    if-nez v3, :cond_2

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "currentLogDir is NULl with "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v1

    .line 196
    :cond_2
    :try_start_0
    iget-wide v6, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->m:J

    iget-wide v8, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->n:J

    invoke-static {v5, v6, v7, v8, v9}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Ljava/io/File;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    goto :goto_0

    .line 197
    :catchall_0
    move-exception v1

    .line 198
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "clean currentLogDir"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->i()Ljava/io/File;

    move-result-object v1

    const-wide/16 v6, 0x3

    iget-wide v8, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->m:J

    mul-long v8, v8, v6

    const-wide/16 v6, 0x4

    iget-wide v10, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->n:J

    mul-long v10, v10, v6

    invoke-static {v1, v8, v9, v10, v11}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Ljava/io/File;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    goto :goto_1

    .line 202
    :catchall_1
    move-exception v1

    .line 203
    .restart local v1    # "t":Ljava/lang/Throwable;
    const-string v3, "clean backupLogsDir"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->j()Ljava/io/File;

    move-result-object v1

    iget-wide v6, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->m:J

    iget-wide v8, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->n:J

    invoke-static {v1, v6, v7, v8, v9}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Ljava/io/File;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 209
    goto :goto_2

    .line 207
    :catchall_2
    move-exception v1

    .line 208
    .restart local v1    # "t":Ljava/lang/Throwable;
    const-string v3, "clean backupLogsDir_1"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineForExternalFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender$2;-><init>(Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Extras"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 225
    .end local v5    # "currentLogDir":Ljava/io/File;
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/io/File;

    return-object v1
.end method

.method protected final d()Ljava/io/File;
    .locals 1

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e()V
    .locals 3

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleExtrasOnGetNewFile, priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Appender"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 466
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 468
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g()V

    .line 469
    return-void
.end method
