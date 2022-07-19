.class Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;
.super Landroid/content/BroadcastReceiver;
.source "H5SnapshotPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureEmbedView(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic e:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Z

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:I

.field final synthetic n:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Lcom/alipay/mobile/h5container/api/H5Page;IILandroid/graphics/Bitmap;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .line 394
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->n:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->b:I

    iput p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->c:I

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->d:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->e:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->f:Landroid/app/Activity;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->g:Lcom/alibaba/fastjson/JSONObject;

    iput p9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->h:I

    iput p10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->i:I

    iput-boolean p11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->j:Z

    iput-object p12, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->k:Ljava/lang/String;

    iput-object p13, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->l:Ljava/lang/String;

    iput p14, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->m:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 398
    move-object/from16 v1, p0

    const-string v2, "H5SnapshotPlugin"

    const-string v0, "embedview.snapshot.complete"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->n:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->n:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->d(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 403
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->n:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->n:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->d(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 405
    new-instance v4, Landroid/graphics/Rect;

    iget v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->b:I

    iget v3, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->c:I

    const/4 v9, 0x0

    invoke-direct {v4, v9, v9, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 406
    .local v4, "dstRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    iget v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->b:I

    iget v3, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->c:I

    invoke-direct {v5, v9, v9, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    .local v5, "srcRect":Landroid/graphics/Rect;
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->d:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    move-result v3

    .line 408
    .local v3, "snapResult":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "snapResult "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v6

    .line 411
    .local v6, "titleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    const/4 v7, 0x0

    .line 412
    .local v7, "fullScreenBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 413
    invoke-interface {v6}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentView()Landroid/view/View;

    move-result-object v8

    .line 414
    .local v8, "contentView":Landroid/view/View;
    const/4 v0, 0x0

    .line 415
    .local v0, "statusBarHeight":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 416
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    move v10, v0

    goto :goto_0

    .line 415
    :cond_1
    move v10, v0

    .line 419
    .end local v0    # "statusBarHeight":I
    .local v10, "statusBarHeight":I
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 420
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    .line 420
    invoke-virtual {v0, v11, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 422
    .local v11, "titleViewBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 425
    const/4 v9, 0x0

    :try_start_0
    iget v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->b:I

    iget v12, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->c:I

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 428
    move-object v0, v9

    goto :goto_1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v12, "OutOfMemoryError"

    invoke-static {v2, v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    if-eqz v7, :cond_2

    .line 430
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v0, "canvas":Landroid/graphics/Canvas;
    move-object v0, v2

    neg-int v12, v10

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v13, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 432
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v10

    int-to-float v12, v12

    invoke-virtual {v0, v2, v13, v12, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 433
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 434
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "contentView":Landroid/view/View;
    .end local v10    # "statusBarHeight":I
    .end local v11    # "titleViewBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->n:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->e:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->f:Landroid/app/Activity;

    iget-object v11, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->g:Lcom/alibaba/fastjson/JSONObject;

    iget v12, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->h:I

    iget v13, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->i:I

    iget-boolean v14, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->j:Z

    iget-object v15, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->k:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->l:Ljava/lang/String;

    iget v2, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->m:I

    if-nez v7, :cond_3

    move/from16 v19, v3

    .end local v3    # "snapResult":Z
    .local v19, "snapResult":Z
    iget-object v3, v1, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->d:Landroid/graphics/Bitmap;

    move-object/from16 v18, v3

    goto :goto_2

    .end local v19    # "snapResult":Z
    .restart local v3    # "snapResult":Z
    :cond_3
    move/from16 v19, v3

    .end local v3    # "snapResult":Z
    .restart local v19    # "snapResult":Z
    move-object/from16 v18, v7

    :goto_2
    move-object/from16 v16, v0

    move/from16 v17, v2

    invoke-static/range {v8 .. v18}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 440
    return-void

    .line 400
    .end local v4    # "dstRect":Landroid/graphics/Rect;
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    .end local v6    # "titleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    .end local v7    # "fullScreenBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "snapResult":Z
    :cond_4
    :goto_3
    return-void
.end method
