.class final Lcom/uc/webview/export/internal/uc/wa/e;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/uc/wa/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;)V

    .line 1279
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1280
    :try_start_1
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "UC_WA_STAT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1281
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->d()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1282
    sget-boolean v2, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v2, :cond_0

    .line 1283
    const-string v2, "SDKWaStat"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "==handlUpload==last upload time:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_0
    sget v2, Lcom/uc/webview/export/internal/uc/wa/a;->c:I

    if-lez v2, :cond_1

    sget v2, Lcom/uc/webview/export/internal/uc/wa/a;->c:I

    goto :goto_0

    :cond_1
    const v2, 0x2932e00

    .line 1287
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1288
    cmp-long v9, v5, v3

    if-eqz v9, :cond_6

    .line 1289
    sub-long v3, v7, v5

    int-to-long v10, v2

    cmp-long v2, v3, v10

    if-gez v2, :cond_6

    .line 1290
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1291
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1292
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1293
    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1294
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1295
    const/16 v3, 0xc

    if-ltz v4, :cond_2

    if-ge v4, v3, :cond_2

    if-ge v2, v3, :cond_3

    :cond_2
    if-lt v4, v3, :cond_4

    if-ltz v2, :cond_4

    if-ge v2, v3, :cond_4

    .line 1297
    :cond_3
    sget-boolean v2, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v2, :cond_6

    .line 1298
    const-string v2, "SDKWaStat"

    const-string v3, "\u8de80\u70b9\u621612\u70b9"

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1301
    :cond_4
    sget-boolean v1, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v1, :cond_5

    .line 1302
    const-string v1, "SDKWaStat"

    const-string v2, "\u65f6\u95f4\u95f4\u9694\u5c0f\u4e8e12\u5c0f\u65f6,\u4e0d\u4e0a\u4f20"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_5
    monitor-exit v0

    return-void

    .line 1308
    :cond_6
    :goto_1
    nop

    .line 1310
    const/4 v2, 0x0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1311
    const/4 v3, 0x0

    if-eqz v9, :cond_10

    .line 1312
    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v4, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 1313
    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    .line 1315
    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.taobao.taobao"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1316
    :cond_7
    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;[Ljava/lang/String;)[B

    move-result-object v4

    .line 1317
    if-nez v4, :cond_8

    .line 1318
    monitor-exit v0

    return-void

    .line 1321
    :cond_8
    sget-object v6, Lcom/uc/webview/export/internal/SDKFactory;->n:Landroid/webkit/ValueCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_9

    .line 1323
    :try_start_2
    sget-object v6, Lcom/uc/webview/export/internal/SDKFactory;->n:Landroid/webkit/ValueCallback;

    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v6, v10}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1326
    goto :goto_2

    .line 1324
    :catch_0
    move-exception v6

    .line 1325
    :try_start_3
    const-string v10, "SDKWaStat"

    const-string v11, "byte \u8f6c String\u5f02\u5e38!"

    invoke-static {v10, v11, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1329
    :cond_9
    :goto_2
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/f;->a()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1330
    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/wa/f;->b([B)[B

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1333
    :cond_a
    nop

    .line 1336
    :try_start_4
    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/wa/f;->a([B)[B

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1337
    nop

    .line 1338
    :try_start_5
    sget-boolean v6, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v6, :cond_b

    .line 1339
    const-string v6, "SDKWaStat"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getUploadData encrypt:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1343
    :cond_b
    const/4 v10, 0x1

    goto :goto_4

    .line 1341
    :catchall_0
    move-exception v6

    const/4 v10, 0x1

    goto :goto_3

    :catchall_1
    move-exception v6

    const/4 v10, 0x0

    .line 1342
    :goto_3
    :try_start_6
    const-string v11, "SDKWaStat"

    const-string v12, "data encrypt error:"

    invoke-static {v11, v12, v6}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1346
    :goto_4
    invoke-static {v1, v10}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1347
    sget-boolean v6, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v6, :cond_c

    .line 1348
    const-string v6, "SDKWaStat"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "request url:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_c
    const/4 v6, 0x3

    .line 1354
    :goto_5
    add-int/lit8 v10, v6, -0x1

    if-lez v6, :cond_e

    .line 1355
    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;[B)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1356
    const/4 v1, 0x1

    goto :goto_6

    .line 1355
    :cond_d
    move v6, v10

    goto :goto_5

    .line 1361
    :cond_e
    const/4 v1, 0x0

    :goto_6
    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_11

    .line 1363
    :try_start_7
    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1364
    if-eqz v4, :cond_f

    .line 1365
    const-string v6, "SDKWaStat"

    invoke-static {v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    sget-object v6, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;

    invoke-interface {v6, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1367
    goto :goto_7

    .line 1364
    :cond_f
    move v5, v1

    .line 1371
    :goto_7
    move v1, v5

    goto :goto_8

    .line 1369
    :catch_1
    move-exception v4

    .line 1370
    :try_start_8
    const-string v5, "SDKWaStat"

    const-string v6, "\u7b2c\u4e09\u65b9\u4e0a\u4f20\u6570\u636e\u51fa\u9519!"

    invoke-static {v5, v6, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1311
    :cond_10
    const/4 v1, 0x0

    .line 1375
    :cond_11
    :goto_8
    if-eqz v1, :cond_12

    .line 1377
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/wa/a;->d(Lcom/uc/webview/export/internal/uc/wa/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1379
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    aget-object v4, v2, v3

    invoke-static {v1, v7, v8, v4}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    .line 1382
    :cond_12
    if-nez v9, :cond_13

    .line 1383
    const-string v1, "SDKWaStat"

    const-string v4, "\u9996\u6b21\u4e0d\u4e0a\u4f20\u6570\u636e"

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    aget-object v2, v2, v3

    invoke-static {v1, v7, v8, v2}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    .line 1386
    :cond_13
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1387
    :catchall_3
    move-exception v0

    .line 1388
    const-string v1, "SDKWaStat"

    const-string v2, "handlUpload"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1390
    return-void
.end method
