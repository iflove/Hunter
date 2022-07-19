.class public final Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;
.super Ljava/lang/Object;
.source "ONRMonitor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static a:J

.field private static b:J

.field private static c:Z

.field private static f:Z

.field private static g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static h:I


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a:J

    .line 35
    sput-wide v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->b:J

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->c:Z

    .line 42
    sput-boolean v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->f:Z

    .line 43
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    sput v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->d:Landroid/app/Activity;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->e:Z

    .line 81
    return-void
.end method

.method private static a()Landroid/app/Activity;
    .locals 13

    .line 371
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 372
    .local v2, "activityThreadClass":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 373
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 374
    .local v1, "activityThread":Ljava/lang/Object;
    const-string v3, "mActivities"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v4, v0

    .line 375
    .local v4, "activitiesField":Ljava/lang/reflect/Field;
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 376
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v6, v0

    .line 377
    .local v6, "activities":Ljava/util/Map;
    move-object v6, v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, v0

    move-object v8, v7

    move-object v9, v8

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 378
    .local v10, "iToken":Ljava/lang/Object;
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 379
    .local v7, "activityRecord":Ljava/lang/Object;
    move-object v7, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 380
    .local v8, "activityRecordClass":Ljava/lang/Class;
    move-object v8, v11

    const-string/jumbo v12, "paused"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 381
    .local v9, "pausedField":Ljava/lang/reflect/Field;
    move-object v9, v11

    invoke-virtual {v11, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 382
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 383
    const-string v3, "activity"

    invoke-virtual {v8, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v11, v0

    .line 384
    .local v11, "activityField":Ljava/lang/reflect/Field;
    move-object v11, v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 385
    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 387
    .end local v7    # "activityRecord":Ljava/lang/Object;
    .end local v8    # "activityRecordClass":Ljava/lang/Class;
    .end local v9    # "pausedField":Ljava/lang/reflect/Field;
    .end local v10    # "iToken":Ljava/lang/Object;
    .end local v11    # "activityField":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 390
    .end local v1    # "activityThread":Ljava/lang/Object;
    .end local v2    # "activityThreadClass":Ljava/lang/Class;
    .end local v4    # "activitiesField":Ljava/lang/reflect/Field;
    .end local v6    # "activities":Ljava/util/Map;
    :cond_1
    goto :goto_1

    .line 388
    :catchall_0
    move-exception v1

    .line 389
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "ONRMonitor"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 22
    .param p0, "activity"    # Landroid/app/Activity;

    const-string v1, "ONRMonitor"

    .line 213
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->c:Z

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 218
    .local v3, "start":J
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 219
    .local v5, "params":Ljava/util/Map;
    const/4 v6, 0x0

    .line 221
    .local v6, "topActivity":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a()Landroid/app/Activity;

    move-result-object v0

    move-object v8, v7

    .line 222
    .local v8, "runningActivity":Landroid/app/Activity;
    move-object v8, v0

    if-nez v0, :cond_0

    .line 223
    move-object/from16 v8, p0

    .line 225
    :cond_0
    if-eqz v8, :cond_1

    .line 226
    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 227
    const-string v0, "currentPage"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v6}, Lcom/alipay/mobile/framework/app/monitor/NebulaUtil;->isNebulaActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {v8}, Lcom/alipay/mobile/framework/app/monitor/NebulaUtil;->getCurrentUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v7

    .line 230
    .local v9, "currentUrl":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string v0, "currentUrl"

    invoke-interface {v5, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v8    # "runningActivity":Landroid/app/Activity;
    .end local v9    # "currentUrl":Ljava/lang/String;
    :cond_1
    move-object v0, v8

    move-object v8, v6

    move-object v6, v0

    .local v0, "viewHierarchy":Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v0    # "viewHierarchy":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 236
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v6

    move-object v6, v0

    .line 250
    .end local v0    # "tr":Ljava/lang/Throwable;
    .local v6, "viewHierarchy":Ljava/lang/String;
    .local v8, "topActivity":Ljava/lang/String;
    :goto_0
    const-string v9, "3"

    .line 253
    .local v9, "errorCode":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 254
    .local v10, "startBmp":J
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    move-object v12, v7

    .local v12, "view":Landroid/view/View;
    move-object v13, v7

    .line 256
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    move-object v12, v0

    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v14, 0x0

    if-nez v0, :cond_2

    .line 257
    :try_start_2
    invoke-virtual {v12, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 258
    invoke-virtual {v12}, Landroid/view/View;->buildDrawingCache()V

    .line 259
    invoke-virtual {v12}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v7

    .line 260
    .local v2, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-virtual {v0, v15, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v12, v14}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    .end local v2    # "temp":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 309
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "startBmp":J
    .end local v12    # "view":Landroid/view/View;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    move-object v2, v8

    goto/16 :goto_7

    .line 263
    .restart local v10    # "startBmp":J
    .restart local v12    # "view":Landroid/view/View;
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_3
    invoke-virtual {v12}, Landroid/view/View;->destroyDrawingCache()V

    .line 264
    invoke-virtual {v12}, Landroid/view/View;->buildDrawingCache()V

    .line 265
    invoke-virtual {v12}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v7

    .line 266
    .restart local v2    # "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-virtual {v0, v15, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/view/View;->destroyDrawingCache()V

    .line 271
    .end local v2    # "temp":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 272
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 273
    .local v13, "width":I
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 274
    .local v14, "colors":Ljava/util/HashMap;
    const/16 v15, 0x1e0

    if-lt v2, v15, :cond_4

    const/16 v15, 0x140

    if-lt v13, v15, :cond_4

    .line 275
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    :try_start_4
    div-int/lit8 v7, v13, 0x4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ge v15, v7, :cond_3

    .line 276
    mul-int/lit8 v7, v15, 0x4

    move-object/from16 v16, v6

    .end local v6    # "viewHierarchy":Ljava/lang/String;
    .local v16, "viewHierarchy":Ljava/lang/String;
    :try_start_5
    div-int/lit8 v6, v2, 0x4

    invoke-virtual {v0, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Ljava/util/Map;I)V

    .line 277
    mul-int/lit8 v6, v15, 0x4

    mul-int/lit8 v7, v2, 0x3

    div-int/lit8 v7, v7, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Ljava/util/Map;I)V

    .line 278
    mul-int/lit8 v6, v15, 0x4

    div-int/lit8 v7, v2, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Ljava/util/Map;I)V

    .line 279
    mul-int/lit8 v6, v15, 0x4

    mul-int/lit8 v7, v2, 0x5

    div-int/lit8 v7, v7, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Ljava/util/Map;I)V

    .line 280
    mul-int/lit8 v6, v15, 0x4

    mul-int/lit8 v7, v2, 0x3

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Ljava/util/Map;I)V

    .line 281
    mul-int/lit8 v6, v15, 0x4

    div-int/lit8 v7, v2, 0x4

    mul-int/lit8 v17, v15, 0x4

    mul-int v17, v17, v2

    mul-int/lit8 v18, v13, 0x2

    div-int v17, v17, v18

    add-int v7, v7, v17

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Ljava/util/Map;I)V

    .line 282
    mul-int/lit8 v6, v15, 0x4

    div-int/lit8 v7, v2, 0x4

    mul-int/lit8 v17, v15, 0x4

    mul-int v17, v17, v2

    mul-int/lit8 v18, v13, 0x2

    div-int v17, v17, v18

    add-int v7, v7, v17

    sub-int v7, v2, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v14, v6}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Ljava/util/Map;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 275
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v16

    const/4 v7, 0x0

    goto :goto_2

    .line 309
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v10    # "startBmp":J
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "width":I
    .end local v14    # "colors":Ljava/util/HashMap;
    .end local v15    # "i":I
    :catchall_2
    move-exception v0

    move-object v2, v8

    goto/16 :goto_7

    .line 275
    .end local v16    # "viewHierarchy":Ljava/lang/String;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v6    # "viewHierarchy":Ljava/lang/String;
    .restart local v10    # "startBmp":J
    .restart local v12    # "view":Landroid/view/View;
    .restart local v13    # "width":I
    .restart local v14    # "colors":Ljava/util/HashMap;
    .restart local v15    # "i":I
    :cond_3
    move-object/from16 v16, v6

    .end local v6    # "viewHierarchy":Ljava/lang/String;
    .restart local v16    # "viewHierarchy":Ljava/lang/String;
    goto :goto_3

    .line 309
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v10    # "startBmp":J
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "width":I
    .end local v14    # "colors":Ljava/util/HashMap;
    .end local v15    # "i":I
    .end local v16    # "viewHierarchy":Ljava/lang/String;
    .restart local v6    # "viewHierarchy":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v6

    move-object v2, v8

    .end local v6    # "viewHierarchy":Ljava/lang/String;
    .restart local v16    # "viewHierarchy":Ljava/lang/String;
    goto/16 :goto_7

    .line 274
    .end local v16    # "viewHierarchy":Ljava/lang/String;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v6    # "viewHierarchy":Ljava/lang/String;
    .restart local v10    # "startBmp":J
    .restart local v12    # "view":Landroid/view/View;
    .restart local v13    # "width":I
    .restart local v14    # "colors":Ljava/util/HashMap;
    :cond_4
    move-object/from16 v16, v6

    .line 286
    .end local v6    # "viewHierarchy":Ljava/lang/String;
    .restart local v16    # "viewHierarchy":Ljava/lang/String;
    :goto_3
    const/4 v6, 0x0

    .line 287
    .local v6, "totalPixels":I
    :try_start_6
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v15, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v17, :cond_5

    :try_start_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 288
    .local v15, "pixel":Ljava/util/Map$Entry;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int v6, v6, v17

    .line 289
    .end local v15    # "pixel":Ljava/util/Map$Entry;
    goto :goto_4

    .line 290
    :cond_5
    :try_start_8
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 291
    .restart local v15    # "pixel":Ljava/util/Map$Entry;
    move-object/from16 v15, v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move/from16 v18, v2

    .end local v2    # "height":I
    .local v18, "height":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v17, v12

    move/from16 v19, v13

    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "width":I
    .local v17, "view":Landroid/view/View;
    .local v19, "width":I
    int-to-double v12, v2

    move-object/from16 v20, v7

    move-object v2, v8

    .end local v8    # "topActivity":Ljava/lang/String;
    .local v2, "topActivity":Ljava/lang/String;
    int-to-double v7, v6

    div-double/2addr v12, v7

    const-wide v7, 0x3fee666666666666L    # 0.95

    cmpl-double v21, v12, v7

    if-lez v21, :cond_8

    .line 292
    :try_start_9
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 293
    .local v7, "r":I
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 294
    .local v8, "g":I
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 295
    .local v12, "b":I
    const/16 v13, 0xe1

    if-lt v7, v13, :cond_6

    if-lt v8, v13, :cond_6

    if-lt v12, v13, :cond_6

    .line 296
    const-string v13, "1"

    move-object v9, v13

    goto :goto_6

    .line 297
    :cond_6
    const/16 v13, 0x32

    if-gt v7, v13, :cond_7

    if-gt v8, v13, :cond_7

    if-gt v12, v13, :cond_7

    .line 298
    const-string v13, "0"

    move-object v9, v13

    goto :goto_6

    .line 300
    :cond_7
    const-string v13, "2"

    move-object v9, v13

    .line 302
    goto :goto_6

    .line 304
    .end local v7    # "r":I
    .end local v8    # "g":I
    .end local v12    # "b":I
    .end local v15    # "pixel":Ljava/util/Map$Entry;
    :cond_8
    move-object v8, v2

    move-object/from16 v12, v17

    move/from16 v2, v18

    move/from16 v13, v19

    move-object/from16 v7, v20

    goto :goto_5

    .line 290
    .end local v17    # "view":Landroid/view/View;
    .end local v18    # "height":I
    .end local v19    # "width":I
    .local v2, "height":I
    .local v8, "topActivity":Ljava/lang/String;
    .local v12, "view":Landroid/view/View;
    .restart local v13    # "width":I
    :cond_9
    move/from16 v18, v2

    move-object v2, v8

    move-object/from16 v17, v12

    move/from16 v19, v13

    .line 306
    .end local v8    # "topActivity":Ljava/lang/String;
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "width":I
    .local v2, "topActivity":Ljava/lang/String;
    .restart local v17    # "view":Landroid/view/View;
    .restart local v18    # "height":I
    .restart local v19    # "width":I
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 307
    .local v7, "endBmp":J
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "bitmap: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    mul-int v13, v13, v15

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " colors:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " errorCode:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " costs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v14

    .end local v14    # "colors":Ljava/util/HashMap;
    .local v15, "colors":Ljava/util/HashMap;
    sub-long v13, v7, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 311
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "totalPixels":I
    .end local v7    # "endBmp":J
    .end local v10    # "startBmp":J
    .end local v15    # "colors":Ljava/util/HashMap;
    .end local v17    # "view":Landroid/view/View;
    .end local v18    # "height":I
    .end local v19    # "width":I
    goto :goto_8

    .line 309
    :catchall_4
    move-exception v0

    goto :goto_7

    .end local v2    # "topActivity":Ljava/lang/String;
    .restart local v8    # "topActivity":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v2, v8

    .end local v8    # "topActivity":Ljava/lang/String;
    .restart local v2    # "topActivity":Ljava/lang/String;
    goto :goto_7

    .end local v2    # "topActivity":Ljava/lang/String;
    .end local v16    # "viewHierarchy":Ljava/lang/String;
    .local v6, "viewHierarchy":Ljava/lang/String;
    .restart local v8    # "topActivity":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v16, v6

    move-object v2, v8

    .line 310
    .end local v6    # "viewHierarchy":Ljava/lang/String;
    .end local v8    # "topActivity":Ljava/lang/String;
    .local v0, "tr":Ljava/lang/Throwable;
    .restart local v2    # "topActivity":Ljava/lang/String;
    .restart local v16    # "viewHierarchy":Ljava/lang/String;
    :goto_7
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_8
    const-string v0, "BIZ_APM"

    const-string v6, "APM_ONR"

    invoke-static {v0, v6, v9, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 316
    .local v6, "stop":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "report cost:"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v6, v3

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " topActivity:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " viewHierarchy:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private static a(Ljava/util/Map;I)V
    .locals 4
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 321
    .local v0, "oldCount":Ljava/lang/Integer;
    const/4 v1, 0x1

    .line 322
    .local v1, "newCount":I
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 325
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void
.end method

.method public static onDisplayChangeAction()V
    .locals 2

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->b:J

    .line 169
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->h:I

    .line 170
    sput-boolean v0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->c:Z

    .line 171
    return-void
.end method

.method public static onUserInteraction(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onInteraction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ONRMonitor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "noResponse":Z
    sget-object v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_2

    .line 178
    sget-wide v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->b:J

    sget-wide v3, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a:J

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a:J

    .line 180
    sput v5, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->h:I

    goto :goto_1

    .line 182
    :cond_1
    sget v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->h:I

    add-int/2addr v1, v5

    .line 183
    sput v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->h:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 184
    const/4 v0, 0x1

    .line 190
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->f:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    sget-boolean v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->c:Z

    if-eqz v1, :cond_3

    goto :goto_2

    .line 194
    :cond_3
    invoke-static {p0}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a(Landroid/app/Activity;)V

    .line 195
    return-void

    .line 191
    :cond_4
    :goto_2
    return-void
.end method

.method public static setEnable(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 47
    sput-boolean p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->f:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setEnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    .line 153
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->onDisplayChangeAction()V

    .line 154
    return-void
.end method

.method public final onPreDraw()Z
    .locals 1

    .line 163
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->onDisplayChangeAction()V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 158
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->onDisplayChangeAction()V

    .line 159
    return-void
.end method

.method public final register()V
    .locals 3

    .line 84
    const-string v0, "ONRMonitor"

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->d:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    sget-boolean v2, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->f:Z

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->unregister()V

    .line 89
    return-void

    .line 91
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->e:Z

    if-eqz v2, :cond_2

    .line 92
    return-void

    .line 95
    :cond_2
    const/4 v2, 0x0

    .line 97
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    .line 99
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :goto_0
    if-nez v2, :cond_3

    .line 102
    return-void

    .line 104
    :cond_3
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 105
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 106
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->e:Z

    .line 108
    sget-object v2, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    .line 109
    if-ne v2, v1, :cond_4

    .line 111
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->a:J

    .line 112
    sput-wide v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->b:J

    .line 115
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ONRMonitor registered for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public final unregister()V
    .locals 4

    .line 121
    const-string v0, "ONRMonitor"

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->d:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->e:Z

    if-nez v2, :cond_1

    .line 125
    return-void

    .line 127
    :cond_1
    const/4 v2, 0x0

    .line 129
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .line 132
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v1

    .line 131
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    if-nez v2, :cond_2

    .line 134
    return-void

    .line 136
    :cond_2
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 137
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v1, v3, :cond_3

    .line 139
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->e:Z

    .line 144
    sget-object v1, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ONRMonitor unregistered for: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/monitor/ONRMonitor;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
