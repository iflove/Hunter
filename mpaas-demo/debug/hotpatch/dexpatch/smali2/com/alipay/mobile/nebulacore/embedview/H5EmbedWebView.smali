.class public Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;
.super Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;
.source "H5EmbedWebView.java"


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "postMessage"

.field public static final MINI_WEB_VIEW_TAG:Ljava/lang/String; = "MINI-PROGRAM-MINI-WEB-VIEW-TAG"

.field public static final ON_TO_WEBVIEW_MESSAGE:Ljava/lang/String; = "onToWebViewMessage"

.field public static final WEB_VIEW_PAGE_TAG:Ljava/lang/String; = "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

.field public static final WEB_VIEW_TAG:Ljava/lang/String; = "MINI-PROGRAM-WEB-VIEW-TAG"

.field public static final WEB_VIEW_WORK_ID:Ljava/lang/String; = "MINI-PROGRAM-WEB-VIEW-WORKID"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Lcom/alipay/mobile/h5container/api/H5Page;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    .line 195
    new-instance v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->i:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 644
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 646
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 647
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 648
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 651
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    if-eqz v3, :cond_1

    .line 652
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 654
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 657
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 658
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 5
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "pageSize":I
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 543
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    nop

    .line 545
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v0

    .line 550
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "fragmentType"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "subtab"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    :cond_1
    const-string v1, "showBackButton"

    invoke-interface {p0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 554
    :cond_2
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V
    .locals 8
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "appId"    # Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "pageSize":I
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 507
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    nop

    .line 509
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v1

    move-object v4, v2

    .line 510
    .local v4, "sessionPagesWithOutPrerender":Ljava/util/Stack;
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v0

    .line 513
    .end local v4    # "sessionPagesWithOutPrerender":Ljava/util/Stack;
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "fragmentType"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "subtab"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 516
    .local v1, "isSubTab":Z
    const-string v4, "ta_embed_webview_subtab_show_back"

    invoke-static {v4, p2}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 519
    .local v4, "inWhiteList":Z
    const-string v5, "showBackButton"

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 520
    invoke-interface {p1, v5, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 521
    return-void

    .line 524
    :cond_1
    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    if-eqz v1, :cond_5

    .line 525
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v6

    move-object v7, v2

    .line 526
    .local v7, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object v7, v6

    if-nez v6, :cond_3

    .line 527
    return-void

    .line 529
    :cond_3
    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoBack()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 530
    invoke-interface {p1, v5, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 532
    :cond_4
    const-string v5, "hideBackButton"

    invoke-interface {p1, v5, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 535
    .end local v7    # "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :cond_5
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 14
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 236
    if-eqz p1, :cond_9

    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 239
    :cond_0
    const-string v0, "style"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    .line 240
    .local v2, "style":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "isWidthFill":Z
    const/4 v3, 0x0

    .line 243
    .local v3, "isHeightFill":Z
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 244
    .local v5, "styles":[Ljava/lang/String;
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    array-length v4, v5

    if-lez v4, :cond_5

    .line 245
    array-length v4, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_5

    aget-object v9, v5, v8

    .line 246
    .local v9, "styleItem":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v3, :cond_5

    .line 249
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 250
    move-object v9, v10

    const-string v11, "width:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "100%"

    const/4 v12, 0x2

    const-string v13, ":"

    if-eqz v10, :cond_2

    .line 251
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v1, "styleItemValues":[Ljava/lang/String;
    move-object v1, v10

    if-eqz v10, :cond_3

    array-length v10, v1

    if-ne v10, v12, :cond_3

    .line 253
    aget-object v10, v1, v7

    .line 254
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 256
    .end local v1    # "styleItemValues":[Ljava/lang/String;
    :cond_2
    const-string v10, "height:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 257
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 258
    .restart local v1    # "styleItemValues":[Ljava/lang/String;
    move-object v1, v10

    if-eqz v10, :cond_4

    array-length v10, v1

    if-ne v10, v12, :cond_4

    .line 259
    aget-object v10, v1, v7

    .line 260
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_2

    .line 256
    .end local v1    # "styleItemValues":[Ljava/lang/String;
    :cond_3
    :goto_1
    nop

    .line 245
    .end local v9    # "styleItem":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 265
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    const/4 v6, 0x1

    :cond_6
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->h:Z

    .line 267
    .end local v0    # "isWidthFill":Z
    .end local v3    # "isHeightFill":Z
    .end local v5    # "styles":[Ljava/lang/String;
    :cond_7
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->h:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 268
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->i:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 271
    :cond_8
    return-void

    .line 237
    .end local v2    # "style":Ljava/lang/String;
    :cond_9
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 59
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->h:Z

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "configKey"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    .line 558
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    return v0

    .line 562
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 563
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    if-nez v1, :cond_1

    .line 564
    return v0

    .line 567
    :cond_1
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    .line 568
    .local v4, "config":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    return v0

    .line 572
    :cond_2
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v5, v2

    .line 573
    .local v5, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    const-string v1, "all"

    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 574
    return v6

    .line 577
    :cond_3
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 578
    .local v2, "obj":Ljava/lang/Object;
    move-object v2, v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    .line 579
    return v6

    .line 581
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 584
    .end local v3    # "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v4    # "config":Ljava/lang/String;
    .end local v5    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    goto :goto_1

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConfig "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 4

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "title":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "titleChanged...title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v0    # "title":Ljava/lang/String;
    return-void

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "titleChanged...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b()V

    return-void
.end method

.method private static c()Z
    .locals 3

    .line 227
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 228
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "ta_webview_fill_check"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "value":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 232
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private d()V
    .locals 3

    .line 485
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    if-eqz v0, :cond_0

    .line 486
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    .line 489
    .local v1, "parentH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v1, v0

    if-nez v0, :cond_1

    return-void

    .line 491
    :cond_1
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 492
    const-string v2, "appId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "appId":Ljava/lang/String;
    const-string v2, "ta_embed_webview_hide_back_wl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_2

    .line 498
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a(Lcom/alipay/mobile/h5container/api/H5Page;)V

    return-void

    .line 500
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d()V

    return-void
.end method

.method private e()Z
    .locals 5

    .line 595
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v1, :cond_0

    return v0

    .line 602
    :cond_0
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    const/4 v2, 0x0

    .line 603
    .local v2, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    move-object v2, v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoBack()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 608
    :cond_1
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v1

    .line 609
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 610
    if-gtz v1, :cond_2

    .line 611
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v3, "interceptBackEvent...webview with no history"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return v0

    .line 615
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v3, "interceptBackEvent...go back"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBack()V

    .line 617
    const/4 v0, 0x1

    return v0

    .line 604
    :cond_3
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v3, "interceptBackEvent...can not go back"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    return v0

    .line 618
    .end local v2    # "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :catchall_0
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "interceptBackEvent...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private f()V
    .locals 7

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 674
    .local v2, "parentRootView":Landroid/view/View;
    move-object v2, v0

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_pc_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    move-object v3, v1

    .line 675
    .local v3, "h5PullContainer":Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/refresh/H5PullableView;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setPullableView(Lcom/alipay/mobile/nebula/refresh/H5PullableView;)V

    .line 678
    :cond_0
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_ly_providerLayout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 679
    .local v1, "ucProviderLayout":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 680
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :cond_1
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_ly_provider_layout:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 683
    .local v0, "h5ProviderLayout":Landroid/view/View;
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_provider_domain:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 684
    .local v4, "h5ProviderDomain":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;

    invoke-direct {v6, p0, v4, v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$6;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-interface {v5, v6}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    nop

    .line 720
    .end local v0    # "h5ProviderLayout":Landroid/view/View;
    .end local v1    # "ucProviderLayout":Landroid/view/View;
    .end local v2    # "parentRootView":Landroid/view/View;
    .end local v3    # "h5PullContainer":Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .end local v4    # "h5ProviderDomain":Landroid/widget/TextView;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    move-object v1, v2

    .line 721
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isEmbedWebViewShowProgress()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 725
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    .line 726
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getRootView()Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_pb_progress:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    .line 727
    .local v2, "h5ProgressRef":Ljava/lang/ref/WeakReference;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 728
    return-void

    .line 730
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 731
    .local v0, "h5ProgressHandler":Landroid/os/Handler;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 732
    .local v3, "h5ProgressUpdateTime":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "showProgress"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 733
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;

    invoke-direct {v5, p0, v2, v3, v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$7;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/atomic/AtomicLong;Landroid/os/Handler;)V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 800
    nop

    .end local v0    # "h5ProgressHandler":Landroid/os/Handler;
    .end local v2    # "h5ProgressRef":Ljava/lang/ref/WeakReference;
    .end local v3    # "h5ProgressUpdateTime":Ljava/util/concurrent/atomic/AtomicLong;
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 801
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 722
    :cond_4
    :goto_0
    return-void

    .line 716
    .end local v1    # "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    :catch_1
    move-exception v0

    .line 717
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    return-void
.end method


# virtual methods
.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialRestoreView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 89
    move-object v0, p0

    move-object/from16 v1, p5

    sget-object v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView...width="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",param="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    if-nez v3, :cond_7

    .line 91
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v5, 0x0

    move-object v6, v5

    .line 92
    .local v6, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v6, v3

    if-nez v3, :cond_0

    return-object v5

    .line 94
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_1

    return-object v5

    .line 96
    :cond_1
    const-string v3, "appId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b:Ljava/lang/String;

    .line 97
    const-string v7, "mini"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    .line 99
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v7, "param":Landroid/os/Bundle;
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "currentAppId":Ljava/lang/String;
    const-string v9, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-boolean v9, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    if-eqz v9, :cond_2

    .line 105
    const-string v9, "MINI-PROGRAM-MINI-WEB-VIEW-TAG"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_2
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 110
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v9

    move-object v10, v5

    .line 111
    .local v10, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v10, v9

    if-eqz v9, :cond_3

    .line 112
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b:Ljava/lang/String;

    invoke-interface {v10, v8, v9}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->shouldInterceptWebviewOpenAppId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    iput-boolean v9, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->c:Z

    .line 114
    :cond_3
    iget-boolean v9, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->c:Z

    if-eqz v9, :cond_4

    .line 115
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v10    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    :cond_4
    const-string v3, "createPageSence"

    const-string v9, "H5Activity"

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "fragmentType"

    const-string v9, "subtab"

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v3

    .line 122
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    const-string v9, ""

    .line 123
    .local v9, "workId":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 124
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v9

    .line 125
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "workId "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_5
    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v10, "element"

    invoke-virtual {v7, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "viewId"

    move-object/from16 v10, p3

    invoke-virtual {v7, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "parentAppId"

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v11, "package_nick"

    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "packageNick":Ljava/lang/String;
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "appVersion"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "version":Ljava/lang/String;
    const-string v12, "parentPackageNick"

    invoke-virtual {v7, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v12, "parentVersion"

    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "enablePolyfillWorker"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "isRemoteDebug"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v12, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v12}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 141
    .local v5, "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    move-object v5, v12

    invoke-virtual {v12, v7}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 143
    const-class v12, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 144
    .local v12, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/Activity;

    invoke-virtual {v12, v13, v5}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v13

    iput-object v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 146
    new-instance v14, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$1;

    invoke-direct {v14, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$1;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V

    invoke-interface {v13, v14}, Lcom/alipay/mobile/h5container/api/H5Page;->setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V

    .line 153
    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v14, "MINI-PROGRAM-WEB-VIEW-WORKID"

    invoke-interface {v13, v14, v9}, Lcom/alipay/mobile/h5container/api/H5Page;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v14, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {v13, v14, v6}, Lcom/alipay/mobile/h5container/api/H5Page;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6, v14, v13}, Lcom/alipay/mobile/h5container/api/H5Page;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-boolean v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    if-nez v13, :cond_6

    .line 159
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f()V

    .line 161
    :cond_6
    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v13}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    goto :goto_0

    .line 90
    .end local v2    # "packageNick":Ljava/lang/String;
    .end local v3    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v5    # "bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    .end local v6    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v7    # "param":Landroid/os/Bundle;
    .end local v8    # "currentAppId":Ljava/lang/String;
    .end local v9    # "workId":Ljava/lang/String;
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_7
    move-object/from16 v10, p3

    .line 164
    :goto_0
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    return-object v2
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    :try_start_0
    invoke-direct {p0, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    return-void
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .param p6, "name"    # [Ljava/lang/String;
    .param p7, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 291
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 9
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 354
    const-string v0, "postMessage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v1, "onReceivedMessage...mWebViewH5Page is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void

    .line 360
    :cond_0
    const-string v0, "onToWebViewMessage"

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 361
    sget-object v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceivedMessage...actionType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 363
    .local v3, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "errorMessage"

    const-string v4, "data is null"

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 366
    return-void

    .line 369
    .end local v3    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const-string v2, "callback"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 370
    .local v3, "callback":I
    const-string v4, "res"

    invoke-static {p2, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 371
    .local v5, "res":Lcom/alibaba/fastjson/JSONObject;
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v1

    .line 372
    .local v7, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v7, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    invoke-interface {v2, v0, v7, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 378
    .end local v3    # "callback":I
    .end local v5    # "res":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 397
    sget-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v1, "onReceivedRender..webview h5Page is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 401
    :cond_0
    const-string v0, "src"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedRender...url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 406
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->loadUrl(Ljava/lang/String;)V

    .line 408
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->g:Ljava/lang/String;

    .line 413
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    if-nez v1, :cond_3

    .line 415
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d()V

    .line 421
    :cond_3
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->f:Z

    if-eqz v1, :cond_4

    .line 422
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollContainer(Z)V

    .line 423
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 424
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 426
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    new-instance v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$3;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_4
    goto :goto_0

    .line 433
    :catchall_0
    move-exception v1

    .line 434
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v3, "set mini web-view no scroll "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$4;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V

    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 462
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$5;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V

    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 478
    return-void
.end method

.method public onWebViewDestory()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 348
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->d:Landroid/view/View;

    .line 349
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 350
    return-void
.end method

.method public onWebViewPause()V
    .locals 0

    .line 339
    return-void
.end method

.method public onWebViewResume()V
    .locals 8

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    move-object v2, v1

    .line 300
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 301
    sget-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v1, "webview resume fatal error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 306
    :cond_1
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    .line 307
    const-string v3, "h5_session_pop_param"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "popParam":Ljava/lang/String;
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v3

    .line 309
    const-string v4, "h5_session_resume_param"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "resumeParam":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 312
    .local v4, "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 313
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    move-object v6, v1

    .line 314
    .local v6, "objData":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v5

    const-string v7, "data"

    if-eqz v5, :cond_2

    .line 315
    invoke-virtual {v4, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 317
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 318
    .local v1, "arrayData":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v5

    if-eqz v5, :cond_3

    .line 319
    invoke-virtual {v4, v7, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {v4, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v1    # "arrayData":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "objData":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    move-object v1, v6

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 327
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "resumeParams"

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_5
    new-instance v5, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 332
    .local v1, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    const-string v6, "resume"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v5

    const-string v6, "call"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v5

    .line 333
    .local v5, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 334
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 4

    .line 636
    sget-object v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->a:Ljava/lang/String;

    const-string v1, "triggerPreSnapshot..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 638
    .local v0, "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 639
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    const-string v3, "embedview.snapshot.complete"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 641
    return-void
.end method
