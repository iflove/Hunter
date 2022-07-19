.class final Lcom/uc/webview/export/internal/setup/bp;
.super Landroid/os/Handler;
.source "U4Source"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

.field private b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;Landroid/os/Looper;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method

.method private static a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 3

    .line 272
    if-nez p0, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 275
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mPercent:I

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 279
    return-void

    .line 276
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 8

    .line 283
    nop

    .line 286
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    new-instance v1, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    :cond_0
    move-object v1, v0

    .line 289
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v1, v0

    .line 293
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    .line 294
    instance-of v3, v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-eqz v3, :cond_2

    .line 295
    check-cast v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 296
    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 298
    :try_start_2
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 301
    goto :goto_2

    .line 300
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    :goto_2
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/bo;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 309
    :try_start_4
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    move-object p1, v0

    .line 312
    :cond_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 315
    if-eqz p1, :cond_5

    .line 316
    :try_start_5
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 1261
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/bo;

    move-result-object v3

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1262
    :try_start_6
    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1263
    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    .line 1264
    const-string v4, "pause"

    invoke-virtual {v2, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 1265
    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/bo;

    move-result-object v4

    .line 2072
    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/internal/setup/bo;->a(J)Landroid/util/Pair;

    .line 1266
    const-string v4, "resume"

    invoke-virtual {v2, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 1268
    :cond_4
    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception p1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p1

    .line 320
    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v2, :cond_6

    .line 321
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 323
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/bp;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 332
    :cond_6
    goto :goto_5

    .line 312
    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 325
    :catchall_4
    move-exception p1

    .line 326
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    instance-of v3, p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v3, :cond_7

    check-cast p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    goto :goto_4

    :cond_7
    new-instance v3, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v3, p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v3

    :goto_4
    invoke-virtual {v2, p1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 328
    :try_start_a
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 329
    :try_start_b
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 330
    monitor-exit p1

    goto :goto_5

    :catchall_5
    move-exception v2

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 331
    :catchall_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    :goto_5
    nop

    .line 338
    :try_start_d
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 339
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_6

    .line 338
    :cond_8
    move-object p1, v0

    .line 341
    :goto_6
    goto :goto_7

    :catchall_7
    move-exception p1

    move-object p1, v0

    .line 344
    :goto_7
    nop

    .line 350
    :goto_8
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 351
    :try_start_e
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    .line 352
    :goto_9
    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v5}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    move-result v5

    .line 354
    if-nez v3, :cond_a

    if-eqz v5, :cond_b

    .line 355
    :cond_a
    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v6}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 358
    :cond_b
    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v6}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 359
    if-eqz v6, :cond_d

    .line 361
    :try_start_f
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 362
    if-eqz v6, :cond_c

    .line 363
    :try_start_10
    monitor-exit v2

    goto :goto_d

    .line 368
    :cond_c
    move v4, v3

    move-object v0, v6

    goto :goto_a

    .line 364
    :catchall_8
    move-exception v3

    .line 366
    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v7, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v7, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 367
    goto :goto_a

    .line 359
    :cond_d
    move v4, v3

    .line 371
    :goto_a
    if-eqz v5, :cond_e

    .line 372
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string v4, "stop"

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    goto :goto_c

    .line 374
    :cond_e
    if-eqz v4, :cond_f

    .line 375
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    goto :goto_b

    .line 377
    :cond_f
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string v4, "success"

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 379
    :goto_b
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string v4, "gone"

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 382
    :goto_c
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string v4, "die"

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v3

    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 385
    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/bp;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 388
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v3, :cond_13

    .line 389
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object v6, v0

    .line 394
    :goto_d
    if-eqz v6, :cond_10

    .line 395
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->m(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 397
    :cond_10
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->n(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 401
    :goto_e
    :try_start_11
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 402
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->o(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/Vector;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    if-nez p1, :cond_11

    const-string p1, "null"

    goto :goto_f

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_f
    new-instance v3, Landroid/util/Pair;

    .line 403
    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string v0, "cost"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 406
    :cond_12
    return-void

    :catchall_9
    move-exception p1

    .line 408
    return-void

    .line 391
    :cond_13
    :try_start_12
    monitor-exit v2

    goto/16 :goto_8

    :catchall_a
    move-exception p1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    throw p1
.end method
