.class public Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;
.super Ljava/lang/Object;
.source "StorageProcessor.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b:Ljava/text/SimpleDateFormat;

    .line 45
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 46
    .local v0, "gmtZone":Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 47
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 144
    .local v0, "dir":Ljava/io/File;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 149
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 152
    :cond_1
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)J
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 292
    .local v0, "dir":Ljava/io/File;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 293
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 297
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "targetPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v2, "childBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;I)J

    move-result-wide v3

    .line 304
    .local v3, "size":J
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v5, " dir size:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 309
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v5, "\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 312
    return-wide v3

    .line 314
    .end local v1    # "targetPath":Ljava/lang/String;
    .end local v2    # "childBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "size":J
    :cond_1
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;I)J
    .locals 17
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "depth"    # I

    .line 319
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-wide/16 v5, 0x0

    .line 321
    .local v5, "size":J
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "file":Ljava/io/File;
    const-string v7, "/alipay/com.eg.android.AlipayGphone/applog"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    const-string v7, "applogic"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 324
    return-wide v8

    .line 327
    :cond_0
    const-string v7, "/com.antfortune.wealth"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "/com.taobao.mobile.dipei"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "/com.mybank.android.phone"

    .line 328
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "/com.alipay.m.portal"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    .line 332
    :cond_1
    const-string v7, "/storage/sdcard1/Android/data"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 333
    return-wide v8

    .line 335
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 336
    .local v7, "fileList":[Ljava/io/File;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_8

    .line 337
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "\n"

    const-string v11, " "

    const-string v12, "  "

    if-eqz v9, :cond_4

    .line 338
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v9, "childBuilder":Ljava/lang/StringBuilder;
    aget-object v13, v7, v8

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v4, 0x1

    invoke-direct {v1, v13, v9, v14}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;I)J

    move-result-wide v13

    .line 340
    .local v13, "tempSize":J
    const/4 v15, 0x1

    .local v15, "d":I
    :goto_1
    if-gt v15, v4, :cond_3

    .line 341
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 343
    .end local v15    # "d":I
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v15, v7, v8

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v12, " dir size:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v11, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    aget-object v12, v7, v8

    move-object v15, v7

    move/from16 v16, v8

    .end local v7    # "fileList":[Ljava/io/File;
    .end local v8    # "i":I
    .local v15, "fileList":[Ljava/io/File;
    .local v16, "i":I
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 348
    iget-object v7, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b:Ljava/text/SimpleDateFormat;

    iget-object v8, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 351
    add-long/2addr v5, v13

    .line 352
    .end local v9    # "childBuilder":Ljava/lang/StringBuilder;
    .end local v13    # "tempSize":J
    goto/16 :goto_4

    .end local v15    # "fileList":[Ljava/io/File;
    .end local v16    # "i":I
    .restart local v7    # "fileList":[Ljava/io/File;
    .restart local v8    # "i":I
    :cond_4
    move-object v15, v7

    move/from16 v16, v8

    .end local v7    # "fileList":[Ljava/io/File;
    .end local v8    # "i":I
    .restart local v15    # "fileList":[Ljava/io/File;
    .restart local v16    # "i":I
    aget-object v7, v15, v16

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 353
    aget-object v7, v15, v16

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 354
    .local v7, "tempSize":J
    const/4 v9, 0x1

    .local v9, "d":I
    :goto_2
    if-gt v9, v4, :cond_5

    .line 355
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 357
    .end local v9    # "d":I
    :cond_5
    aget-object v9, v15, v16

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v9, " file size:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v9, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    aget-object v11, v15, v16

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/util/Date;->setTime(J)V

    .line 362
    iget-object v9, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b:Ljava/text/SimpleDateFormat;

    iget-object v11, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    add-long/2addr v5, v7

    .line 365
    .end local v7    # "tempSize":J
    goto :goto_4

    .line 366
    :cond_6
    aget-object v7, v15, v16

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 367
    .restart local v7    # "tempSize":J
    const/4 v9, 0x1

    .restart local v9    # "d":I
    :goto_3
    if-gt v9, v4, :cond_7

    .line 368
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 370
    .end local v9    # "d":I
    :cond_7
    aget-object v9, v15, v16

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v9, " ghostFile size:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v9, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    aget-object v11, v15, v16

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/util/Date;->setTime(J)V

    .line 375
    iget-object v9, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b:Ljava/text/SimpleDateFormat;

    iget-object v11, v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c:Ljava/util/Date;

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    add-long/2addr v5, v7

    .line 336
    .end local v7    # "tempSize":J
    :goto_4
    add-int/lit8 v8, v16, 0x1

    move-object v7, v15

    .end local v16    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .end local v15    # "fileList":[Ljava/io/File;
    .local v7, "fileList":[Ljava/io/File;
    :cond_8
    move-object v15, v7

    move/from16 v16, v8

    .line 382
    .end local v0    # "file":Ljava/io/File;
    .end local v7    # "fileList":[Ljava/io/File;
    .end local v8    # "i":I
    goto :goto_6

    .line 329
    .restart local v0    # "file":Ljava/io/File;
    :cond_9
    :goto_5
    return-wide v8

    .line 380
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    sget-object v8, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v9, "getFolderPathAndSize error"

    invoke-interface {v7, v8, v9, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-wide v5
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;IIZ)J
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "depth"    # I
    .param p4, "maxDepth"    # I
    .param p5, "checkEndFine"    # Z

    .line 484
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-wide/16 v5, 0x0

    .line 486
    .local v5, "size":J
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "file":Ljava/io/File;
    const-string v7, "/alipay/com.eg.android.AlipayGphone/applog"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    const-string v7, "applogic"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 489
    return-wide v8

    .line 492
    :cond_0
    const-string v7, "/com.antfortune.wealth"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "/com.mybank.android.phone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "/com.taobao.mobile.dipei"

    .line 493
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "/com.alipay.m.portal"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v13, p0

    move-object/from16 v18, v0

    goto/16 :goto_8

    .line 496
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 497
    .local v7, "fileList":[Ljava/io/File;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_d

    .line 498
    if-eqz p5, :cond_2

    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 499
    .local v9, "endHereFine":Z
    :goto_1
    aget-object v10, v7, v8

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v15, "\n"

    const-string v14, " "

    if-eqz v10, :cond_7

    .line 500
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v10

    .line 501
    .local v13, "childBuilder":Ljava/lang/StringBuilder;
    aget-object v10, v7, v8

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v16, v3, 0x1

    if-eqz v9, :cond_3

    move/from16 v17, v3

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    :goto_2
    move-object/from16 v10, p0

    move-object v12, v13

    move-object/from16 v18, v0

    move-object v0, v13

    .end local v13    # "childBuilder":Ljava/lang/StringBuilder;
    .local v0, "childBuilder":Ljava/lang/StringBuilder;
    .local v18, "file":Ljava/io/File;
    move/from16 v13, v16

    move-object v1, v14

    move/from16 v14, v17

    move/from16 v16, v9

    move-object v9, v15

    .end local v9    # "endHereFine":Z
    .local v16, "endHereFine":Z
    move/from16 v15, p5

    invoke-direct/range {v10 .. v15}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;IIZ)J

    move-result-wide v10

    .line 502
    .local v10, "tempSize":J
    if-gt v3, v4, :cond_6

    .line 503
    const/4 v12, 0x1

    .local v12, "d":I
    :goto_3
    if-gt v12, v3, :cond_4

    .line 504
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 506
    .end local v12    # "d":I
    :cond_4
    const-string v12, "/"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    aget-object v12, v7, v8

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v13, p0

    :try_start_2
    iget-object v14, v13, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->d:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 508
    const-string/jumbo v12, "wallet"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_5
    aget-object v12, v7, v8

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v12, "dir"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 502
    :cond_6
    move-object/from16 v13, p0

    .line 518
    :goto_4
    add-long/2addr v5, v10

    .line 519
    .end local v0    # "childBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "tempSize":J
    goto/16 :goto_7

    .end local v16    # "endHereFine":Z
    .end local v18    # "file":Ljava/io/File;
    .local v0, "file":Ljava/io/File;
    .restart local v9    # "endHereFine":Z
    :cond_7
    move-object/from16 v13, p0

    move-object/from16 v18, v0

    move/from16 v16, v9

    move-object v1, v14

    move-object v9, v15

    .end local v0    # "file":Ljava/io/File;
    .end local v9    # "endHereFine":Z
    .restart local v16    # "endHereFine":Z
    .restart local v18    # "file":Ljava/io/File;
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 520
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 521
    .restart local v10    # "tempSize":J
    if-gt v3, v4, :cond_9

    .line 522
    const/4 v0, 0x1

    .local v0, "d":I
    :goto_5
    if-gt v0, v3, :cond_8

    .line 523
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 525
    .end local v0    # "d":I
    :cond_8
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v0, "file"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_9
    add-long/2addr v5, v10

    .line 533
    .end local v10    # "tempSize":J
    goto :goto_7

    .line 534
    :cond_a
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 535
    .restart local v10    # "tempSize":J
    if-gt v3, v4, :cond_c

    .line 536
    const/4 v0, 0x1

    .restart local v0    # "d":I
    :goto_6
    if-gt v0, v3, :cond_b

    .line 537
    const-string v12, "  "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 539
    .end local v0    # "d":I
    :cond_b
    aget-object v0, v7, v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v0, "ghost"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 546
    :cond_c
    add-long/2addr v5, v10

    .line 497
    .end local v10    # "tempSize":J
    .end local v16    # "endHereFine":Z
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v18

    goto/16 :goto_0

    .line 549
    .end local v7    # "fileList":[Ljava/io/File;
    .end local v8    # "i":I
    .end local v18    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_9

    .line 497
    .local v0, "file":Ljava/io/File;
    .restart local v7    # "fileList":[Ljava/io/File;
    .restart local v8    # "i":I
    :cond_d
    move-object/from16 v13, p0

    move-object/from16 v18, v0

    .line 551
    .end local v0    # "file":Ljava/io/File;
    .end local v7    # "fileList":[Ljava/io/File;
    .end local v8    # "i":I
    goto :goto_a

    .line 493
    .restart local v0    # "file":Ljava/io/File;
    :cond_e
    move-object/from16 v13, p0

    move-object/from16 v18, v0

    .end local v0    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_8

    .line 492
    .end local v18    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :cond_f
    move-object/from16 v13, p0

    move-object/from16 v18, v0

    .line 494
    .end local v0    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    :goto_8
    return-wide v8

    .line 549
    .end local v18    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object/from16 v13, p0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v7, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v8, "getFolderOverview error"

    invoke-interface {v1, v7, v8, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-wide v5
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)J
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "checkEndFine"    # Z

    const/4 v0, 0x0

    .line 456
    .local v0, "dir":Ljava/io/File;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 457
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 461
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "targetPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    .line 464
    .local v8, "childBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, v1

    move-object v4, v8

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;IIZ)J

    move-result-wide v2

    .line 469
    .local v2, "size":J
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v5, "dir"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 474
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 477
    return-wide v2

    .line 479
    .end local v1    # "targetPath":Ljava/lang/String;
    .end local v2    # "size":J
    .end local v8    # "childBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private a([Ljava/io/File;)J
    .locals 7
    .param p1, "paths"    # [Ljava/io/File;

    .line 135
    const-wide/16 v0, 0x0

    .line 136
    .local v0, "result":J
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 137
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 136
    .end local v4    # "path":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-wide v0
.end method

.method private a([Ljava/io/File;Ljava/lang/StringBuilder;)J
    .locals 7
    .param p1, "paths"    # [Ljava/io/File;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 283
    const-wide/16 v0, 0x0

    .line 284
    .local v0, "result":J
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 285
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 284
    .end local v4    # "path":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-wide v0
.end method

.method private b(Ljava/lang/String;)J
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .line 157
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "size":J
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 160
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 161
    array-length v5, v2

    const/4 v6, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v2, v7

    .line 162
    .local v3, "aFileList":Ljava/io/File;
    move-object v3, v8

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v6, "filePath":Ljava/lang/String;
    move-object v6, v8

    const-string v9, "/alipay/com.eg.android.AlipayGphone/applog"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "applogic"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 169
    :cond_0
    const-string v8, "/com.antfortune.wealth"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "/com.taobao.mobile.dipei"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "/com.mybank.android.phone"

    .line 170
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "/com.alipay.m.portal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 174
    const-string v8, "/storage/sdcard1/Android/data"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 178
    .end local v6    # "filePath":Ljava/lang/String;
    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v8

    .line 161
    .end local v3    # "aFileList":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 184
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    goto :goto_2

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v5, "getFolderSize error"

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-wide v0
.end method

.method private b([Ljava/io/File;Ljava/lang/StringBuilder;)J
    .locals 7
    .param p1, "paths"    # [Ljava/io/File;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 447
    const-wide/16 v0, 0x0

    .line 448
    .local v0, "result":J
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 449
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, v6}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 448
    .end local v4    # "path":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-wide v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 556
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 557
    return v1

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "databases"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "files"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shared_prefs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 569
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 566
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "lib"

    const-string v0, ""

    .line 52
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0xb

    if-ge v4, v6, :cond_0

    .line 53
    return-object v5

    .line 55
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 56
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-wide/16 v6, -0x1

    .line 57
    .local v6, "lastStorageUsageTime":J
    const-string v8, "LAST_STORAGE_USAGE_TIME"

    const-wide/16 v9, -0x1

    if-eqz v4, :cond_1

    .line 58
    invoke-interface {v4, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 60
    :cond_1
    cmp-long v11, v6, v9

    if-eqz v11, :cond_2

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_2

    .line 63
    return-object v5

    .line 66
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v11, "getCurrentStorageUsage"

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object v9, v0

    .line 69
    .local v9, "packageName":Ljava/lang/String;
    move-object v10, v0

    .line 70
    .local v10, "apkInstallPath":Ljava/lang/String;
    move-object v11, v0

    .line 72
    .local v11, "innerDir":Ljava/lang/String;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v10, v0

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 77
    goto :goto_0

    .line 128
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "apkInstallPath":Ljava/lang/String;
    .end local v11    # "innerDir":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-wide/from16 v17, v6

    goto/16 :goto_5

    .line 75
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "apkInstallPath":Ljava/lang/String;
    .restart local v11    # "innerDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    sget-object v14, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v15, "getCurrentStorageUsage init dir error"

    invoke-interface {v13, v14, v15, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;

    invoke-direct {v0, v9}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "mStats":Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v5

    .line 82
    .local v14, "apkInstallFile":Ljava/io/File;
    move-object v14, v13

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 83
    .local v13, "dataAppFile":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "oat"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "arm"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "base.odex"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v15

    .line 84
    .local v5, "odexFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide/from16 v17, v6

    .end local v6    # "lastStorageUsageTime":J
    .local v17, "lastStorageUsageTime":J
    :try_start_2
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v12

    .line 85
    .local v6, "libDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v21

    add-long v19, v19, v21

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v21

    move-object v7, v5

    move-object v12, v6

    .end local v5    # "odexFile":Ljava/io/File;
    .end local v6    # "libDir":Ljava/io/File;
    .local v7, "odexFile":Ljava/io/File;
    .local v12, "libDir":Ljava/io/File;
    add-long v5, v19, v21

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->c:J

    .line 86
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b:J

    .line 88
    invoke-direct {v1, v11}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    .end local v7    # "odexFile":Ljava/io/File;
    .local v19, "odexFile":Ljava/io/File;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v20

    sub-long v5, v5, v20

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->d:J

    .line 91
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 92
    const/4 v3, 0x0

    goto :goto_2

    .line 94
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "status":Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "mounted_ro"

    .line 96
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    nop

    .line 99
    .end local v3    # "status":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_9

    .line 100
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_6

    .line 101
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;

    invoke-direct {v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;-><init>()V

    .line 102
    .local v3, "userEnv":Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
    iget-object v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    .line 103
    iget-object v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->f:J

    .line 104
    iget-object v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->g:J

    .line 105
    .end local v3    # "userEnv":Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
    goto :goto_3

    .line 106
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 107
    .local v3, "externalFilesDir":Ljava/io/File;
    move-object v3, v6

    if-eqz v6, :cond_7

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->e:J

    .line 113
    .end local v3    # "externalFilesDir":Ljava/io/File;
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 114
    .local v3, "externalStorageDir":Ljava/io/File;
    move-object v3, v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 115
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "alipay"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v5, "alipayDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "/com.eg.android.AlipayGphone"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v6, "alipayGPhoneDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v15

    .line 118
    .local v15, "alipayGphoneSize":J
    new-instance v7, Ljava/io/File;

    move-object/from16 v20, v3

    .end local v3    # "externalStorageDir":Ljava/io/File;
    .local v20, "externalStorageDir":Ljava/io/File;
    const-string/jumbo v3, "multimedia"

    invoke-direct {v7, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    .line 119
    .local v3, "multimediaDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;)J

    move-result-wide v21

    .line 120
    .local v21, "multimediaSize":J
    move-object v7, v5

    move-object/from16 v23, v6

    .end local v5    # "alipayDir":Ljava/io/File;
    .end local v6    # "alipayGPhoneDir":Ljava/io/File;
    .local v7, "alipayDir":Ljava/io/File;
    .local v23, "alipayGPhoneDir":Ljava/io/File;
    add-long v5, v15, v21

    iput-wide v5, v0, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->h:J

    goto :goto_4

    .line 114
    .end local v7    # "alipayDir":Ljava/io/File;
    .end local v15    # "alipayGphoneSize":J
    .end local v20    # "externalStorageDir":Ljava/io/File;
    .end local v21    # "multimediaSize":J
    .end local v23    # "alipayGPhoneDir":Ljava/io/File;
    .local v3, "externalStorageDir":Ljava/io/File;
    :cond_8
    move-object/from16 v20, v3

    .line 124
    .end local v3    # "externalStorageDir":Ljava/io/File;
    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    .line 125
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v8, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    :cond_a
    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 128
    .end local v0    # "mStats":Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "apkInstallPath":Ljava/lang/String;
    .end local v11    # "innerDir":Ljava/lang/String;
    .end local v12    # "libDir":Ljava/io/File;
    .end local v13    # "dataAppFile":Ljava/io/File;
    .end local v14    # "apkInstallFile":Ljava/io/File;
    .end local v19    # "odexFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v17    # "lastStorageUsageTime":J
    .local v6, "lastStorageUsageTime":J
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v6

    .line 129
    .end local v6    # "lastStorageUsageTime":J
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "lastStorageUsageTime":J
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v5, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v6, "getCurrentStorageUsage error "

    invoke-interface {v3, v5, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    const/4 v3, 0x0

    return-object v3
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, ""

    const-string v1, "\n"

    .line 195
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "storage not support for sdk level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that under 11."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    const/4 v2, 0x0

    move-object v3, v0

    .line 200
    .local v3, "packageName":Ljava/lang/String;
    nop

    .line 202
    .local v0, "innerDir":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 206
    move-object v4, v2

    goto :goto_0

    .line 204
    :catch_0
    move-exception v4

    .line 205
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v7, "getFolderTree init dir error"

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v4, v5

    const-string v6, "inner storage data\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)J

    .line 215
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 216
    move-object v5, v2

    const/4 v8, 0x1

    goto :goto_2

    .line 218
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v8, "mounted"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "mounted_ro"

    .line 220
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v8, 0x1

    .line 223
    .end local v5    # "status":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_6

    .line 224
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v9, 0x11

    const-string v10, "external storage alipay dir\n"

    const-string v11, "external storage data\n"

    if-lt v8, v9, :cond_4

    .line 225
    :try_start_2
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;-><init>()V

    .line 226
    .local v2, "userEnv":Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;Ljava/lang/StringBuilder;)J

    .line 228
    const-string v5, "external storage media\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;Ljava/lang/StringBuilder;)J

    .line 230
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v5, "external storage obb\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->c(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;Ljava/lang/StringBuilder;)J

    .line 234
    nop

    .end local v2    # "userEnv":Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
    goto :goto_3

    .line 235
    :cond_4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 236
    .local v5, "externalFilesDir":Ljava/io/File;
    move-object v5, v2

    if-eqz v2, :cond_5

    .line 237
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)J

    .line 241
    .end local v5    # "externalFilesDir":Ljava/io/File;
    :cond_5
    move-object v2, v5

    :goto_3
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "alipay"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v2, "externalAlipayDir":Ljava/io/File;
    move-object v2, v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 243
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-array v5, v7, [Ljava/io/File;

    aput-object v2, v5, v6

    invoke-direct {p0, v5, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a([Ljava/io/File;Ljava/lang/StringBuilder;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 249
    .end local v2    # "externalAlipayDir":Ljava/io/File;
    :cond_6
    :try_start_3
    const-string v2, "anr trace data\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v2, "/data/anr"

    invoke-direct {p0, v2, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    goto :goto_4

    .line 251
    :catchall_0
    move-exception v2

    .line 252
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v8, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v9, "getFolderTree anr dir error"

    invoke-interface {v5, v8, v9, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v2, "inner total size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {v6}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a(Z)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v2, "external total size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {v6}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v2, "isExternalStorageEmulated: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v2, "isExternalStorageRemovable: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "inner available size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->a(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v2, "external available size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "apk install location\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/PackageStats;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v1

    .line 277
    .end local v0    # "innerDir":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    move-object v0, v3

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "get storage tree failed"

    return-object v1
.end method

.method public getOverview(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, ""

    .line 394
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "storage not support for sdk level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that under 11."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 398
    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    .line 399
    .local v2, "packageName":Ljava/lang/String;
    nop

    .line 401
    .local v0, "innerDir":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 405
    goto :goto_0

    .line 403
    :catch_0
    move-exception v3

    .line 404
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a:Ljava/lang/String;

    const-string v6, "getOverview init dir error"

    invoke-interface {v4, v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)J

    .line 413
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 414
    move-object v5, v1

    const/4 v7, 0x1

    goto :goto_2

    .line 416
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "status":Ljava/lang/String;
    const-string/jumbo v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "mounted_ro"

    .line 418
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v7, 0x1

    .line 421
    .end local v5    # "status":Ljava/lang/String;
    :goto_2
    if-eqz v7, :cond_6

    .line 422
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_4

    .line 423
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;-><init>()V

    .line 424
    .local v1, "userEnv":Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;->a(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->b([Ljava/io/File;Ljava/lang/StringBuilder;)J

    .line 425
    nop

    .end local v1    # "userEnv":Lcom/alipay/android/phone/mobilesdk/apm/storage/UserEnvironment;
    goto :goto_3

    .line 426
    :cond_4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 427
    .local v5, "externalFilesDir":Ljava/io/File;
    move-object v5, v1

    if-eqz v1, :cond_5

    .line 428
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)J

    .line 433
    .end local v5    # "externalFilesDir":Ljava/io/File;
    :cond_5
    move-object v1, v5

    :goto_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 434
    .local v1, "externalStorageDir":Ljava/io/File;
    move-object v1, v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 435
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v7, "alipay"

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    .local v4, "alipayDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "multimedia"

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->d:Ljava/lang/String;

    .line 437
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3, v6}, Lcom/alipay/android/phone/mobilesdk/apm/storage/StorageProcessor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)J

    .line 440
    .end local v1    # "externalStorageDir":Ljava/io/File;
    .end local v4    # "alipayDir":Ljava/io/File;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 441
    .end local v0    # "innerDir":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "get storage tree failed"

    return-object v1
.end method
