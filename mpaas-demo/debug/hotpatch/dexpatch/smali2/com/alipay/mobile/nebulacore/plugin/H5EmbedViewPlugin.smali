.class public Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5EmbedViewPlugin.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->b:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->c:Ljava/util/Map;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->e:Z

    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "elementId"    # Ljava/lang/String;

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 321
    .local v2, "jsTemplate":Ljava/lang/StringBuilder;
    move-object v2, v0

    const-string v3, "javascript:componentsManager.renderV2(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v0, "data"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 325
    .local v0, "callData":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, ","

    if-nez v0, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v4, "props"

    invoke-static {p0, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 328
    .local v1, "callProps":Lcom/alibaba/fastjson/JSONObject;
    const-string v4, ");"

    if-nez v1, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 301
    const-string v0, "element"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "elementId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleRemoveComponent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5EmbedViewPlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 304
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$3;

    invoke-direct {v1, p0, v0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v4, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;

    move-result-object v1

    .line 312
    .local v3, "embedViewRoot":Landroid/view/View;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "deleteNewEmbedView directly "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object v1, v3

    check-cast v1, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-direct {p0, v4, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 317
    .end local v3    # "embedViewRoot":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 22
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "parentId"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p7, "frame"    # Lcom/alibaba/fastjson/JSONObject;
    .param p8, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v0, "realY"

    const-string v8, "realX"

    const-string v9, "H5EmbedViewPlugin"

    .line 384
    if-eqz p1, :cond_8

    .line 385
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    move-result-object v10

    iput-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    .line 386
    if-eqz v10, :cond_8

    .line 387
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 388
    .local v10, "context":Landroid/content/Context;
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v11

    .line 389
    .local v11, "realX":F
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v12

    .line 390
    .local v12, "realY":F
    const-string v13, "width"

    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v13

    .line 391
    .local v13, "width":F
    const-string v14, "height"

    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v14

    .line 392
    .local v14, "height":F
    const-string v15, "zindex"

    invoke-virtual {v6, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 393
    .local v17, "zindex":Ljava/lang/String;
    move-object/from16 v17, v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v15, v16

    goto :goto_0

    :cond_0
    move-object/from16 v15, v17

    .line 395
    .end local v17    # "zindex":Ljava/lang/String;
    .local v15, "zindex":Ljava/lang/String;
    :goto_0
    const/16 v17, 0x0

    .line 396
    .local v17, "parentX":F
    const/16 v18, 0x0

    .line 397
    .local v18, "parentY":F
    const/16 v19, 0x1

    .line 398
    .local v19, "parentHasRender":Z
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 399
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    invoke-interface {v6, v4}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 402
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    invoke-interface {v6, v4}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 403
    .end local p2    # "root":Landroid/view/ViewGroup;
    .local v6, "root":Landroid/view/ViewGroup;
    :try_start_1
    invoke-direct {v1, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v21, v16

    .line 404
    .local v21, "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 p2, v20

    .end local v21    # "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    .local p2, "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v20, :cond_1

    .line 405
    move-object/from16 v20, v6

    move-object/from16 v6, p2

    .end local p2    # "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    .local v6, "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    .local v20, "root":Landroid/view/ViewGroup;
    :try_start_2
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v8

    move/from16 v17, v8

    .line 406
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    move/from16 v18, v0

    move-object v0, v6

    goto :goto_2

    .line 404
    .end local v20    # "root":Landroid/view/ViewGroup;
    .local v6, "root":Landroid/view/ViewGroup;
    .restart local p2    # "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    move-object/from16 v20, v6

    move-object/from16 v6, p2

    .end local p2    # "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    .local v6, "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "root":Landroid/view/ViewGroup;
    move-object v0, v6

    goto :goto_1

    .line 462
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "realX":F
    .end local v12    # "realY":F
    .end local v13    # "width":F
    .end local v14    # "height":F
    .end local v15    # "zindex":Ljava/lang/String;
    .end local v17    # "parentX":F
    .end local v18    # "parentY":F
    .end local v19    # "parentHasRender":Z
    .end local v20    # "root":Landroid/view/ViewGroup;
    .local v6, "root":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v15, v20

    .end local v6    # "root":Landroid/view/ViewGroup;
    .restart local v20    # "root":Landroid/view/ViewGroup;
    goto/16 :goto_5

    .line 399
    .end local v20    # "root":Landroid/view/ViewGroup;
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v11    # "realX":F
    .restart local v12    # "realY":F
    .restart local v13    # "width":F
    .restart local v14    # "height":F
    .restart local v15    # "zindex":Ljava/lang/String;
    .restart local v17    # "parentX":F
    .restart local v18    # "parentY":F
    .restart local v19    # "parentHasRender":Z
    .local p2, "root":Landroid/view/ViewGroup;
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v20, p2

    .line 408
    .end local p2    # "root":Landroid/view/ViewGroup;
    .local v0, "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    .restart local v20    # "root":Landroid/view/ViewGroup;
    :goto_1
    const/16 v19, 0x0

    .line 411
    .end local v0    # "parentFrame":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    invoke-direct {v1, v4, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->c:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v8, v17

    move/from16 v7, v18

    move-object/from16 v6, v20

    goto :goto_3

    .line 462
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "realX":F
    .end local v12    # "realY":F
    .end local v13    # "width":F
    .end local v14    # "height":F
    .end local v15    # "zindex":Ljava/lang/String;
    .end local v17    # "parentX":F
    .end local v18    # "parentY":F
    .end local v19    # "parentHasRender":Z
    :catchall_1
    move-exception v0

    move-object/from16 v15, v20

    goto/16 :goto_5

    .line 398
    .end local v20    # "root":Landroid/view/ViewGroup;
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v11    # "realX":F
    .restart local v12    # "realY":F
    .restart local v13    # "width":F
    .restart local v14    # "height":F
    .restart local v15    # "zindex":Ljava/lang/String;
    .restart local v17    # "parentX":F
    .restart local v18    # "parentY":F
    .restart local v19    # "parentHasRender":Z
    .restart local p2    # "root":Landroid/view/ViewGroup;
    :cond_3
    move-object/from16 v6, p2

    move-object/from16 v0, v16

    move/from16 v8, v17

    move/from16 v7, v18

    .line 415
    .end local v17    # "parentX":F
    .end local v18    # "parentY":F
    .end local p2    # "root":Landroid/view/ViewGroup;
    .restart local v6    # "root":Landroid/view/ViewGroup;
    .local v7, "parentY":F
    .local v8, "parentX":F
    :goto_3
    move-object/from16 v17, v6

    .end local v6    # "root":Landroid/view/ViewGroup;
    .local v17, "root":Landroid/view/ViewGroup;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v18, v10

    .end local v10    # "context":Landroid/content/Context;
    .local v18, "context":Landroid/content/Context;
    const-string v10, "renderNewEmbedView id: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with parentId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " width: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " height: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " realX: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " realY: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " parentX: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " parentY: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " data: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    invoke-interface {v6, v3}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v6

    .line 426
    .local v0, "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v0, v6

    if-nez v6, :cond_5

    .line 427
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    invoke-interface {v6, v3, v2}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getEmbedView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    move-object/from16 v10, v16

    .line 428
    .local v10, "view":Landroid/view/View;
    move-object v10, v6

    move-object/from16 p2, v0

    .end local v0    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .local p2, "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->h5_embedview_zindex:I

    invoke-virtual {v6, v0, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 429
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->h5_embedview_idfromjs:I

    invoke-virtual {v10, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 430
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 431
    move-object/from16 v6, v18

    move-object/from16 v18, v15

    .end local v15    # "zindex":Ljava/lang/String;
    .local v6, "context":Landroid/content/Context;
    .local v18, "zindex":Ljava/lang/String;
    invoke-static {v6, v13}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v15

    .line 432
    move/from16 v20, v13

    .end local v13    # "width":F
    .local v20, "width":F
    invoke-static {v6, v14}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v0, v15, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v13, v16

    .line 433
    .local v13, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v13, v0

    sub-float v15, v12, v7

    invoke-static {v6, v15}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v15

    iput v15, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 434
    sub-float v0, v11, v8

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 435
    if-eqz v19, :cond_4

    .line 436
    move-object/from16 v15, v17

    .end local v17    # "root":Landroid/view/ViewGroup;
    .local v15, "root":Landroid/view/ViewGroup;
    :try_start_4
    invoke-virtual {v15, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 438
    move/from16 v17, v7

    move-object/from16 v7, p8

    .end local v7    # "parentY":F
    .local v17, "parentY":F
    :try_start_5
    invoke-interface {v0, v5, v7}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 439
    return-void

    .line 462
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "parentX":F
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "realX":F
    .end local v12    # "realY":F
    .end local v13    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "height":F
    .end local v17    # "parentY":F
    .end local v18    # "zindex":Ljava/lang/String;
    .end local v19    # "parentHasRender":Z
    .end local v20    # "width":F
    .end local p2    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :catchall_2
    move-exception v0

    move-object/from16 v7, p8

    goto/16 :goto_5

    .line 440
    .end local v15    # "root":Landroid/view/ViewGroup;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "parentY":F
    .restart local v8    # "parentX":F
    .restart local v10    # "view":Landroid/view/View;
    .restart local v11    # "realX":F
    .restart local v12    # "realY":F
    .restart local v13    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v14    # "height":F
    .local v17, "root":Landroid/view/ViewGroup;
    .restart local v18    # "zindex":Ljava/lang/String;
    .restart local v19    # "parentHasRender":Z
    .restart local v20    # "width":F
    .restart local p2    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :cond_4
    move-object/from16 v15, v17

    move/from16 v17, v7

    move-object/from16 v7, p8

    .end local v7    # "parentY":F
    .restart local v15    # "root":Landroid/view/ViewGroup;
    .local v17, "parentY":F
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v21, v10

    .end local v10    # "view":Landroid/view/View;
    .local v21, "view":Landroid/view/View;
    const-string v10, "parent not render for "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v13    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v21    # "view":Landroid/view/View;
    return-void

    .line 443
    .end local v6    # "context":Landroid/content/Context;
    .end local v20    # "width":F
    .end local p2    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .restart local v0    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .restart local v7    # "parentY":F
    .local v13, "width":F
    .local v15, "zindex":Ljava/lang/String;
    .local v17, "root":Landroid/view/ViewGroup;
    .local v18, "context":Landroid/content/Context;
    :cond_5
    move-object/from16 p2, v0

    move/from16 v20, v13

    move-object/from16 v6, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    move/from16 v17, v7

    move-object/from16 v7, p8

    .end local v0    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v7    # "parentY":F
    .end local v13    # "width":F
    .restart local v6    # "context":Landroid/content/Context;
    .local v15, "root":Landroid/view/ViewGroup;
    .local v17, "parentY":F
    .local v18, "zindex":Ljava/lang/String;
    .restart local v20    # "width":F
    .restart local p2    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getEmbedView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, "view":Landroid/view/View;
    if-nez v19, :cond_6

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "parent inconsistent for "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " this parent id: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void

    .line 448
    :cond_6
    sget v10, Lcom/alipay/mobile/nebulacore/R$id;->h5_embedview_zindex:I

    move-object/from16 v13, v18

    .end local v18    # "zindex":Ljava/lang/String;
    .local v13, "zindex":Ljava/lang/String;
    invoke-virtual {v0, v10, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 449
    sget v10, Lcom/alipay/mobile/nebulacore/R$id;->h5_embedview_idfromjs:I

    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 450
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v1, v20

    .end local v20    # "width":F
    .local v1, "width":F
    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    move/from16 v20, v1

    .end local v1    # "width":F
    .restart local v20    # "width":F
    invoke-static {v6, v14}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v10, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v1, v16

    .line 451
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v10

    sub-float v2, v12, v17

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 452
    sub-float v2, v11, v8

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 453
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_7

    .line 454
    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 456
    :cond_7
    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    :goto_4
    move-object/from16 v2, p2

    .end local p2    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .local v2, "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    invoke-interface {v2, v5, v7}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    .line 462
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "parentX":F
    .end local v11    # "realX":F
    .end local v12    # "realY":F
    .end local v13    # "zindex":Ljava/lang/String;
    .end local v14    # "height":F
    .end local v17    # "parentY":F
    .end local v19    # "parentHasRender":Z
    .end local v20    # "width":F
    :catchall_3
    move-exception v0

    goto :goto_5

    .end local v15    # "root":Landroid/view/ViewGroup;
    .local v17, "root":Landroid/view/ViewGroup;
    :catchall_4
    move-exception v0

    move-object/from16 v7, p8

    move-object/from16 v15, v17

    .end local v17    # "root":Landroid/view/ViewGroup;
    .restart local v15    # "root":Landroid/view/ViewGroup;
    goto :goto_5

    .end local v15    # "root":Landroid/view/ViewGroup;
    .local p2, "root":Landroid/view/ViewGroup;
    :catchall_5
    move-exception v0

    move-object/from16 v15, p2

    .line 463
    .end local p2    # "root":Landroid/view/ViewGroup;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v15    # "root":Landroid/view/ViewGroup;
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "renderNewEmbedView error for element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void

    .line 464
    .end local v15    # "root":Landroid/view/ViewGroup;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    :cond_8
    move-object/from16 v15, p2

    .end local p2    # "root":Landroid/view/ViewGroup;
    .restart local v15    # "root":Landroid/view/ViewGroup;
    :goto_6
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "elementId"    # Ljava/lang/String;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    const-string v0, "H5EmbedViewPlugin"

    .line 334
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 335
    .local v3, "newEmbedViewProvider":Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;
    move-object v3, v1

    if-eqz v1, :cond_2

    .line 336
    invoke-interface {v3, p2}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v1

    .line 337
    .local v1, "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->c:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 338
    .local v4, "parentId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 339
    .local v5, "parent":Landroid/view/ViewGroup;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 340
    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v6

    .line 341
    .local v2, "parentEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v2, v6

    if-eqz v6, :cond_0

    .line 342
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v6

    .line 345
    .end local v2    # "parentEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :cond_0
    if-nez v5, :cond_1

    .line 346
    move-object v5, p3

    .line 349
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    .line 351
    :try_start_1
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    goto :goto_0

    .line 352
    :catchall_0
    move-exception v2

    .line 353
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "removeView error!"

    invoke-static {v0, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-interface {v3, p2}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->deleteView(Ljava/lang/String;)V

    .line 359
    .end local v1    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    .end local v4    # "parentId":Ljava/lang/String;
    .end local v5    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 362
    .end local v3    # "newEmbedViewProvider":Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;
    return-void

    .line 360
    :catchall_1
    move-exception v1

    .line 361
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "removeView error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lcom/alibaba/fastjson/JSONObject;
    .param p7, "x7"    # Lcom/alibaba/fastjson/JSONObject;
    .param p8, "x8"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 43
    invoke-direct/range {p0 .. p8}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/view/ViewGroup;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "x3"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "elementId"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    .line 275
    .local v1, "childIds":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Ljava/lang/String;)V

    .line 279
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 24
    .param p1, "renderCommandStr"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 177
    move-object/from16 v9, p0

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v10, 0x0

    move-object v1, v10

    .line 178
    .local v1, "renderCommandJSONArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v11, v0

    .end local v1    # "renderCommandJSONArray":Lcom/alibaba/fastjson/JSONArray;
    .local v11, "renderCommandJSONArray":Lcom/alibaba/fastjson/JSONArray;
    const-string v12, "H5EmbedViewPlugin"

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p2

    goto/16 :goto_2

    .line 182
    :cond_0
    const-string v0, "renderCommand iterate begin"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    move v13, v0

    move-object v0, v10

    move-object v14, v0

    .local v13, "i":I
    :goto_0
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    .line 184
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 185
    .local v15, "renderCommandObj":Lcom/alibaba/fastjson/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "renderCommandObj: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "frame"

    invoke-static {v15, v1, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 187
    .local v16, "frame":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v15, :cond_4

    if-eqz v16, :cond_4

    .line 190
    const-string v1, "type"

    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "type":Ljava/lang/String;
    const-string v1, "id"

    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "id":Ljava/lang/String;
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .line 193
    .local v7, "lastRenderCommand":Lcom/alibaba/fastjson/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastRenderCommand: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz v7, :cond_1

    invoke-virtual {v7, v15}, Lcom/alibaba/fastjson/JSONObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastRenderCommand equals new renderCommandObj, not render for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 198
    :cond_1
    iget-object v1, v9, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a:Ljava/util/Map;

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5JSONUtil;->deepCopy(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {v9, v8}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Ljava/lang/String;)V

    .line 201
    const-string v1, "parentId"

    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 203
    .local v18, "parentId":Ljava/lang/String;
    const-string v1, "data"

    invoke-static {v15, v1, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 204
    .local v6, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "props"

    invoke-static {v15, v1, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 206
    .local v0, "props":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v1

    .end local v0    # "props":Lcom/alibaba/fastjson/JSONObject;
    .local v5, "props":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 211
    :cond_2
    const-string v0, "element"

    invoke-virtual {v6, v0, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v19, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object v4, v8

    move-object/from16 v20, v5

    .end local v5    # "props":Lcom/alibaba/fastjson/JSONObject;
    .local v20, "props":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "data":Lcom/alibaba/fastjson/JSONObject;
    .local v21, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v22, v7

    .end local v7    # "lastRenderCommand":Lcom/alibaba/fastjson/JSONObject;
    .local v22, "lastRenderCommand":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v7, v16

    move-object/from16 v23, v8

    .end local v8    # "id":Ljava/lang/String;
    .local v23, "id":Ljava/lang/String;
    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 238
    .local v0, "jsCallback":Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;
    iget-boolean v1, v9, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->e:Z

    if-eqz v1, :cond_3

    .line 239
    invoke-interface {v0, v10}, Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;->onReceiveValue(Ljava/lang/String;)V

    move-object/from16 v2, p2

    move-object/from16 v0, v20

    goto :goto_1

    .line 241
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v14

    .line 247
    .local v2, "jsTemplate":Ljava/lang/StringBuilder;
    move-object v14, v1

    .end local v2    # "jsTemplate":Ljava/lang/StringBuilder;
    .local v14, "jsTemplate":Ljava/lang/StringBuilder;
    const-string v2, "javascript:var newembedbase = document.getElementById(\'newembedbase\');\nif(newembedbase) {\n    console.log(\'newembedbase exists\');\n    newembedbase.setAttribute(\'style\', \'z-index:-9999;position:absolute;left:0px;top:0px;width:100%;height:\' + document.body.scrollHeight + \'px\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "} else {\n    console.log(\'new newembedbase\');\n    var ucobjparam = document.createElement(\'param\');\n    ucobjparam.setAttribute(\'name\', \'type\');\n    ucobjparam.setAttribute(\'value\',\'newembedbase\');\n    var ucobjparam2 = document.createElement(\'param\');\n    ucobjparam2.setAttribute(\'name\', \'zindex\');\n    ucobjparam2.setAttribute(\'value\', \'9999\');    var ucobj = document.createElement(\'object\');\n    ucobj.setAttribute(\'type\', \'application/view\');\n    ucobj.setAttribute(\'id\', \'newembedbase\');\n    ucobj.setAttribute(\'style\',\'position:absolute;left:0px;top:0px;z-index:-9999;width:100%;height:\'+document.body.scrollHeight+\'px\');\n"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "    ucobj.appendChild(ucobjparam);\n    ucobj.appendChild(ucobjparam2);    document.body.appendChild(ucobj);\n}"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    move-object/from16 v0, v20

    goto :goto_1

    .line 187
    .end local v0    # "jsCallback":Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;
    .end local v14    # "jsTemplate":Ljava/lang/StringBuilder;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "parentId":Ljava/lang/String;
    .end local v20    # "props":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v22    # "lastRenderCommand":Lcom/alibaba/fastjson/JSONObject;
    .end local v23    # "id":Ljava/lang/String;
    :cond_4
    move-object/from16 v2, p2

    .line 183
    .end local v15    # "renderCommandObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v16    # "frame":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v2, p2

    .line 270
    .end local v13    # "i":I
    const-string v0, "renderCommand iterate end"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 178
    :cond_6
    move-object/from16 v2, p2

    .line 179
    :goto_2
    const-string v0, "fatal error renderCommand null"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    .line 293
    .local v1, "childSet":Ljava/util/Set;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->e:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    move-object v2, v1

    .line 285
    .local v2, "renderCommand":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "frame"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    return-object v1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .param p1, "elementId"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    .line 368
    .local v1, "childSet":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    .local v2, "childId":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->c(Ljava/lang/String;)V

    .line 371
    .end local v2    # "childId":Ljava/lang/String;
    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 69
    .local v5, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v5, v3

    if-eqz v3, :cond_0

    .line 70
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    .line 73
    :cond_0
    const-string v3, "h5PageStartedSync"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 74
    if-eqz v5, :cond_2

    .line 75
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v3, :cond_1

    .line 76
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->clearAllView()V

    .line 78
    :cond_1
    invoke-interface {v5, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->setNewEmbedViewRoot(Landroid/view/View;)V

    .line 80
    :cond_2
    return v6

    .line 83
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    move-object v7, v4

    .line 84
    .local v7, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v3

    const-string v8, "version"

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v8, "2.0"

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v8, "NBComponent.setData"

    const-string v9, "NBComponent.remove"

    const/4 v10, 0x1

    if-nez v3, :cond_4

    .line 86
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 88
    :cond_5
    const-string v3, "actionType"

    const-string v11, "NBComponent.sendMessage"

    const-string v12, "NBComponent.render"

    const-string v13, "data"

    const-string v14, "element"

    if-nez v6, :cond_c

    .line 89
    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    :cond_6
    move-object/from16 v6, p1

    goto/16 :goto_2

    .line 90
    :cond_7
    :goto_0
    invoke-static {v7, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "elementId":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 92
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v8

    move-object v9, v4

    .line 93
    .local v9, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    move-object v9, v8

    if-eqz v8, :cond_b

    .line 94
    nop

    .line 95
    invoke-interface {v9, v6}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->getEmbedViewWrapperById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    move-result-object v8

    .line 96
    .local v8, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v15, "H5EmbedViewPlugin"

    if-eqz v12, :cond_9

    .line 97
    const-string v12, "NB_RENDER"

    invoke-static {v15, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz v8, :cond_9

    .line 99
    const-string v12, "props"

    invoke-static {v7, v12, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 100
    .local v12, "props":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v7, v13, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 101
    .local v4, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_8

    .line 102
    invoke-virtual {v4, v12}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 104
    :cond_8
    invoke-virtual {v4, v14, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v8, v4, v1}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 108
    .end local v4    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "props":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 109
    const-string v11, "NB_SENDMSG"

    invoke-static {v15, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v8, :cond_a

    .line 111
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "actionType":Ljava/lang/String;
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-static {v7, v13, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 113
    .restart local v4    # "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v11

    invoke-virtual {v11, v14, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v8, v3, v4, v1}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 115
    .end local v3    # "actionType":Ljava/lang/String;
    .end local v4    # "data":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 116
    :cond_a
    invoke-interface {v9, v6, v1, v7}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->addPendingMessage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V

    .line 121
    .end local v8    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v9    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_b
    :goto_1
    return v10

    .line 130
    .end local v6    # "elementId":Ljava/lang/String;
    :cond_c
    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 131
    invoke-static {v7, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "elementId":Ljava/lang/String;
    if-eqz v5, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 133
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "jsTemplate":Ljava/lang/String;
    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$1;

    invoke-direct {v6, v0, v5, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-interface {v5, v4, v6}, Lcom/alipay/mobile/h5container/api/H5Page;->execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    .line 141
    .end local v4    # "jsTemplate":Ljava/lang/String;
    :cond_d
    return v10

    .line 142
    .end local v3    # "elementId":Ljava/lang/String;
    :cond_e
    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 143
    move-object/from16 v6, p1

    invoke-direct {v0, v6, v7}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    .line 144
    return v10

    .line 145
    :cond_f
    move-object/from16 v6, p1

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 146
    invoke-static {v7, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "elementId":Ljava/lang/String;
    if-eqz v5, :cond_10

    .line 148
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v9, :cond_10

    .line 149
    invoke-interface {v9, v8}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v9

    move-object v11, v4

    .line 150
    .local v11, "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v11, v9

    if-eqz v9, :cond_10

    .line 151
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "actionType":Ljava/lang/String;
    invoke-static {v7, v13, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 154
    .local v4, "jsData":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v11, v3, v4, v1}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 158
    .end local v3    # "actionType":Ljava/lang/String;
    .end local v4    # "jsData":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :cond_10
    return v10

    .line 159
    .end local v8    # "elementId":Ljava/lang/String;
    :cond_11
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 160
    invoke-static {v7, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "elementId":Ljava/lang/String;
    if-eqz v5, :cond_12

    .line 162
    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;->d:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    if-eqz v8, :cond_12

    .line 163
    invoke-interface {v8, v3}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->getNewEmbedViewById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;

    move-result-object v8

    move-object v9, v4

    .line 164
    .local v9, "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    move-object v9, v8

    if-eqz v8, :cond_12

    .line 165
    invoke-static {v7, v13, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 166
    .restart local v4    # "jsData":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v9, v4, v1}, Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;->onReceivedData(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 170
    .end local v4    # "jsData":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "newEmbedView":Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
    :cond_12
    return v10

    .line 173
    .end local v3    # "elementId":Ljava/lang/String;
    :cond_13
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v3

    return v3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 58
    const-string v0, "NBComponent.render"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v0, "NBComponent.sendMessage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v0, "NBComponent.remove"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v0, "NBComponent.setData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v0, "h5PageStartedSync"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 63
    return-void
.end method
