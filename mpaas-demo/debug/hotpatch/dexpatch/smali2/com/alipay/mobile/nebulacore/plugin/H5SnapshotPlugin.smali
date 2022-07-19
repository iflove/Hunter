.class public Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5SnapshotPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$EmbedViewSnapshotBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5SnapshotPlugin"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

.field private e:Lcom/alipay/mobile/h5container/api/H5Session;

.field private f:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 1
    .param p1, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;

    .line 105
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b:Ljava/util/Set;

    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->e:Lcom/alipay/mobile/h5container/api/H5Session;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->f:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->g:Ljava/util/List;

    .line 111
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "format"    # Ljava/lang/String;

    .line 501
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 502
    return v1

    .line 506
    :cond_0
    const/4 v0, 0x0

    .line 507
    .local v0, "imgPathPart":Ljava/lang/String;
    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 508
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 509
    .local v4, "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v4, v2

    if-eqz v2, :cond_1

    .line 510
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getSnapshotJsapiSavePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 512
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    const-string v2, "/DCIM/Alipay/"

    move-object v0, v2

    .line 515
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->c:Ljava/lang/String;

    .line 518
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    .line 519
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->c:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 523
    .local v2, "fos":Ljava/io/FileOutputStream;
    const-string v5, "jpg"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 525
    .local v5, "cf":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    .line 526
    .local v6, "success":Z
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 527
    if-nez v6, :cond_4

    .line 528
    const/16 v1, 0xa

    return v1

    .line 530
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->c:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v1, v9

    const-string v8, "image/*"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v1, v8, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .end local v0    # "imgPathPart":Ljava/lang/String;
    .end local v4    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    .end local v5    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v6    # "success":Z
    nop

    .line 537
    return v9

    .line 533
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5SnapshotPlugin"

    const-string v2, "saveImage exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    const/4 v1, 0x3

    return v1
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 462
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 463
    .local v1, "view":Landroid/view/View;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 464
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    return-object v0

    .line 467
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5SnapshotPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v2, "captureWebViewException"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->e:Lcom/alipay/mobile/h5container/api/H5Session;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 17

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    const-string v8, "errorMessage"

    const-string v9, "error"

    const-string v10, "success"

    const/4 v11, 0x0

    .line 251
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 250
    if-nez v7, :cond_0

    .line 251
    invoke-virtual {v3, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "2"

    invoke-virtual {v3, v9, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    nop

    .line 254
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_getpicfailed:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v3, v8, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-interface {v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 256
    return-void

    .line 259
    :cond_0
    if-gez p4, :cond_1

    .line 260
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    goto :goto_0

    .line 259
    :cond_1
    move/from16 v13, p4

    .line 263
    :goto_0
    if-gez p5, :cond_2

    .line 264
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    goto :goto_1

    .line 263
    :cond_2
    move/from16 v14, p5

    .line 267
    :goto_1
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-ne v14, v15, :cond_3

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-eq v13, v15, :cond_4

    .line 268
    :cond_3
    invoke-static {v7, v13, v14}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 271
    :cond_4
    const-string v13, "jpg"

    if-eqz v7, :cond_5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v14, 0x64

    if-eq v6, v14, :cond_5

    .line 272
    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->imageQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 275
    :cond_5
    const/4 v6, 0x1

    if-eqz p6, :cond_c

    .line 276
    invoke-direct {v0, v7, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v14

    .line 277
    if-nez v14, :cond_7

    .line 278
    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_6

    .line 279
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/alipay/mobile/nebula/R$string;->h5_save_image_to:I

    move-object/from16 v16, v8

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->c:Ljava/lang/String;

    aput-object v6, v8, v11

    invoke-virtual {v14, v15, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-static {v2, v6, v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 282
    goto :goto_3

    .line 278
    :cond_6
    move-object/from16 v16, v8

    goto :goto_3

    .line 284
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_save_image_failed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    if-eqz v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_b

    .line 287
    const/4 v5, 0x1

    if-ne v14, v5, :cond_8

    .line 288
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_snap_sd_error:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 290
    :cond_8
    const/16 v5, 0xa

    if-eq v14, v5, :cond_9

    const/4 v5, 0x3

    if-ne v14, v5, :cond_a

    .line 291
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_snap_error:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    :cond_a
    :goto_2
    invoke-static {v2, v4, v11}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 296
    :cond_b
    invoke-virtual {v3, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v2, "errorMsg"

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 300
    return-void

    .line 275
    :cond_c
    move-object/from16 v16, v8

    .line 305
    :goto_3
    const-string v2, "fileURL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 306
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 307
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getImageTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 310
    nop

    .line 311
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_4

    :cond_d
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 313
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->writeImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 315
    invoke-virtual {v3, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    nop

    .line 318
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_savepicfailed:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    move-object/from16 v4, v16

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 320
    :cond_e
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :goto_5
    invoke-interface {v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 324
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 325
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 327
    :cond_f
    return-void

    :cond_10
    const-string v2, "dataURL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 328
    nop

    .line 329
    const-string v2, "URGENT"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$2;

    invoke-direct {v3, v0, v7, v5, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 342
    return-void

    .line 343
    :cond_11
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 344
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 345
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 348
    :cond_12
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 25
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 211
    move-object/from16 v15, p0

    const/4 v0, 0x0

    .line 212
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object/from16 v16, v0

    goto :goto_0

    .line 212
    :cond_0
    move-object/from16 v16, v0

    .line 215
    .end local v0    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v16, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :goto_0
    if-nez v16, :cond_1

    .line 216
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    .line 219
    .local v0, "activity":Landroid/app/Activity;
    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 220
    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v14, v0

    goto :goto_1

    .line 219
    :cond_2
    move-object v14, v0

    .line 223
    .end local v0    # "activity":Landroid/app/Activity;
    .local v14, "activity":Landroid/app/Activity;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 224
    .local v13, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 226
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string v0, "maxWidth"

    const/4 v1, -0x1

    invoke-static {v13, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v17

    .line 227
    .local v17, "maxWidth":I
    const-string v0, "maxHeight"

    invoke-static {v13, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v18

    .line 228
    .local v18, "maxHeight":I
    const-string v0, "range"

    const-string v1, "screen"

    invoke-static {v13, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, "range":Ljava/lang/String;
    const/4 v0, 0x1

    const-string v2, "saveToGallery"

    invoke-static {v13, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v19

    .line 230
    .local v19, "saveToGallery":Z
    const-string v0, "dataType"

    const-string v2, "none"

    invoke-static {v13, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 231
    .local v20, "dataType":Ljava/lang/String;
    const-string v0, "imageFormat"

    const-string v2, "jpg"

    invoke-static {v13, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 232
    .local v21, "imageFormat":Ljava/lang/String;
    const/16 v0, 0x4b

    const-string v2, "quality"

    invoke-static {v13, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v22

    .line 233
    .local v22, "quality":I
    const/16 v23, 0x0

    .line 234
    .local v23, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {v15, v14}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v23

    goto :goto_2

    .line 236
    :cond_3
    const-string v0, "viewport"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-direct {v15, v0, v14}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v23

    goto :goto_2

    .line 238
    :cond_4
    const-string v0, "document"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    invoke-interface/range {v16 .. v16}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-direct {v15, v0, v14}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v23

    goto :goto_2

    .line 240
    :cond_5
    const-string v0, "embedview"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 241
    const/4 v0, 0x0

    const-string v1, "hasMapTitleBar"

    invoke-static {v13, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v24

    .line 242
    .local v24, "hasMapTitleBar":Z
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v24

    invoke-virtual/range {v0 .. v11}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureEmbedView(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;IZ)V

    .line 243
    return-void

    .line 246
    .end local v24    # "hasMapTitleBar":Z
    :cond_6
    :goto_2
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object v7, v14

    move-object v8, v4

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object v0, v12

    .end local v12    # "range":Ljava/lang/String;
    .local v0, "range":Ljava/lang/String;
    move-object/from16 v12, v20

    move-object v1, v13

    .end local v13    # "param":Lcom/alibaba/fastjson/JSONObject;
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v13, v21

    move-object v2, v14

    .end local v14    # "activity":Landroid/app/Activity;
    .local v2, "activity":Landroid/app/Activity;
    move/from16 v14, v22

    move-object/from16 v15, v23

    invoke-direct/range {v5 .. v15}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 247
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # I
    .param p10, "x10"    # Landroid/graphics/Bitmap;

    .line 53
    invoke-direct/range {p0 .. p10}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private b(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "activity"    # Landroid/app/Activity;

    const/4 v0, 0x0

    .line 481
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 482
    .local v3, "picture":Landroid/graphics/Picture;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 483
    return-object v2

    .line 485
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    .line 486
    invoke-virtual {v3}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 485
    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    .line 487
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 488
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    return-object v0

    .line 490
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "picture":Landroid/graphics/Picture;
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5SnapshotPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "captureDocumentException"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->f:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public captureEmbedView(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 21
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p4, "result"    # Lcom/alibaba/fastjson/JSONObject;
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I
    .param p7, "saveToGallery"    # Z
    .param p8, "dataType"    # Ljava/lang/String;
    .param p9, "imageFormat"    # Ljava/lang/String;
    .param p10, "quality"    # I
    .param p11, "hasMapTitleBar"    # Z

    move-object/from16 v15, p0

    .line 382
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    move-object v2, v1

    .line 383
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-nez v0, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    if-nez p11, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->ifContainsEmbedSurfaceView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    move-object/from16 v16, v1

    .line 388
    .local v16, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 389
    .local v0, "widths":I
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v14, v2

    .line 390
    .local v14, "heights":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v14, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v17, v2

    .line 391
    .local v17, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    move-object v13, v2

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "embedview.snapshot.complete"

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    move-object/from16 v6, v17

    .line 394
    .local v6, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v18, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move v4, v0

    move v5, v14

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v19, v0

    move-object v0, v13

    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    .local v19, "widths":I
    move-object/from16 v13, p8

    move/from16 v20, v14

    .end local v14    # "heights":I
    .local v20, "heights":I
    move-object/from16 v14, p9

    move/from16 v15, p10

    :try_start_1
    invoke-direct/range {v1 .. v15}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Lcom/alipay/mobile/h5container/api/H5Page;IILandroid/graphics/Bitmap;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, v18

    .line 442
    .local v1, "embedViewSnapshotBroadcastReceiver":Landroid/content/BroadcastReceiver;
    move-object/from16 v2, p0

    :try_start_2
    iget-object v4, v2, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->f:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v4, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 443
    iget-object v4, v2, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->triggerPreSnapshot()V

    .line 445
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "embedViewSnapshotBroadcastReceiver":Landroid/content/BroadcastReceiver;
    .end local v6    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "display":Landroid/view/Display;
    .end local v17    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "widths":I
    .end local v20    # "heights":I
    return-void

    .line 449
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :catch_0
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_0

    .line 386
    .restart local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_1
    move-object v2, v15

    .line 446
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 447
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v4 .. v14}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 452
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    return-void

    .line 449
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v15

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "H5SnapshotPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v3, "captureScreenException"

    invoke-virtual {v1, v3, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public captureScreen(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .line 355
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object v2, v0

    .line 356
    .local v2, "view":Landroid/view/View;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 358
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 359
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 360
    .local v3, "statusBarHeights":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object v5, v0

    .line 361
    .local v5, "display":Landroid/view/Display;
    move-object v5, v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 362
    .local v4, "widths":I
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 363
    .local v6, "heights":I
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 365
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 366
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    sub-int v9, v6, v3

    invoke-static {v7, v8, v3, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 371
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    return-object v7

    .line 373
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "statusBarHeights":I
    .end local v4    # "widths":I
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "heights":I
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5SnapshotPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "captureScreenException"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 377
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 5
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 167
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    const-string v1, "snapshot"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 170
    :cond_0
    const-string v1, "addScreenshotListener"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    const/4 v2, 0x0

    .line 172
    .local v2, "node":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v2, v1

    if-eqz v1, :cond_3

    instance-of v1, v2, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_3

    .line 173
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 175
    .local v1, "target":Lcom/alipay/mobile/h5container/api/H5Page;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const/4 v3, -0x1

    const-string v4, "already listening!"

    invoke-interface {p2, v3, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    if-nez v3, :cond_2

    .line 181
    new-instance v3, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .line 183
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->registerListener(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;)V

    .line 198
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 200
    .end local v1    # "target":Lcom/alipay/mobile/h5container/api/H5Page;
    goto :goto_0

    .line 201
    :cond_3
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 204
    .end local v2    # "node":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    nop

    .line 207
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 205
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 144
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_7

    .line 146
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 147
    .local v1, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 148
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x64b12a78

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, -0x4b7943b7

    if-eq v3, v4, :cond_2

    const v4, -0x449dc1a6

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "h5PagePause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "h5PageResume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "h5PageClosed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :goto_0
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    goto :goto_1

    .line 156
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    goto :goto_1

    .line 150
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v1    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_7
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "h5EventFilter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 115
    const-string v0, "snapshot"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v0, "addScreenshotListener"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v0, "h5PageResume"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v0, "h5PagePause"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->release()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->d:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->b:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 136
    .local v1, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->f:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    .end local v1    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    :cond_4
    return-void
.end method
