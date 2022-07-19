.class public Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;
.super Ljava/lang/Object;
.source "TemplateTinyApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$a;
    }
.end annotation


# static fields
.field public static final EXT_ENABLE_KEY:Ljava/lang/String; = "extEnable"

.field private static final EXT_PAGES_KEY:Ljava/lang/String; = "extPages"

.field private static MAX_RETRY_TIME:I = 0x0

.field private static RETRY_TIME_INTERNAL:I = 0x0

.field private static final TABBAR_ITEMS_KEY:Ljava/lang/String; = "items"

.field private static final TABBAR_ITEMS_STARTUP_KEY:Ljava/lang/String; = "tabBarItems"

.field public static final TABBAR_KEY:Ljava/lang/String; = "tabBar"

.field private static final TAG:Ljava/lang/String;

.field private static final TEMPLATE_APP_ID_KEY:Ljava/lang/String; = "templateAppId"

.field private static final TEMPLATE_APP_KEY:Ljava/lang/String; = "templateApp"

.field public static final TEMPLATE_CONFIG_KEY:Ljava/lang/String; = "templateConfig"

.field private static final TEMPLATE_CONFIG_URL_KEY:Ljava/lang/String; = "templateConfigUrl"

.field public static final WINDOW_KEY:Ljava/lang/String; = "window"


# instance fields
.field private mCurrentRetryCount:I

.field private mTabBarStartupParamsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateAppMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    .line 82
    const/16 v0, 0xa

    sput v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->MAX_RETRY_TIME:I

    .line 83
    const/16 v0, 0xc8

    sput v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->RETRY_TIME_INTERNAL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mCurrentRetryCount:I

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mTemplateAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mTabBarStartupParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->downloadTemplateConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private downloadTemplateConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "configUrl"    # Ljava/lang/String;

    .line 797
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a()Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method private getEntryKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 541
    return-object v0

    .line 544
    :cond_0
    const/4 v1, 0x0

    .line 545
    .local v1, "keyName":Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 546
    .local v0, "tmpKey":Ljava/lang/String;
    move-object v0, v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    move-object v1, v0

    .line 548
    goto :goto_1

    .line 550
    .end local v0    # "tmpKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 552
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".hybrid.alipay-eco.com/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    :cond_3
    return-object v1
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;
    .locals 1

    .line 102
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$a;->a()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    move-result-object v0

    return-object v0
.end method

.method private initMaxRetryTime()V
    .locals 3

    .line 293
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v1, 0x0

    .line 294
    .local v1, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getTemplateAppWaitTime()I

    move-result v0

    .line 296
    sget v2, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->RETRY_TIME_INTERNAL:I

    div-int/2addr v0, v2

    sput v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->MAX_RETRY_TIME:I

    .line 298
    :cond_0
    return-void
.end method

.method private mergeExtPagesTag(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "extPageObject"    # Ljava/lang/Object;
    .param p3, "windowObject"    # Ljava/lang/Object;
    .param p4, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 567
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 568
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mergeExtPages...extPage is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void

    .line 572
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    move-object v2, v1

    .line 573
    .local v2, "extPages":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mergeExtPages...extPage is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 578
    :cond_1
    instance-of v0, p3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    .line 579
    move-object v0, p3

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 581
    .local v0, "window":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 582
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 583
    .local v1, "item":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v8

    if-eqz v8, :cond_2

    .line 587
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 588
    .local v4, "afterWindow":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 589
    .local v5, "itemKey":Ljava/lang/String;
    move-object v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 592
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .end local v5    # "itemKey":Ljava/lang/String;
    goto :goto_1

    .line 596
    :cond_4
    invoke-virtual {v2, v7, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .end local v1    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "afterWindow":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_0

    .line 581
    :cond_5
    move-object v1, v3

    goto :goto_2

    .line 578
    .end local v0    # "window":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    .line 600
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 601
    .local v1, "key":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 605
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 606
    .local v3, "value":Lcom/alibaba/fastjson/JSONObject;
    const/4 v7, 0x0

    .line 607
    .local v7, "pageExist":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParamTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 608
    .local v4, "startParamInfos":Ljava/util/List;
    move-object v4, v8

    if-eqz v8, :cond_b

    .line 609
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    .line 610
    .local v5, "paramInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    move-object v5, v8

    if-eqz v8, :cond_8

    .line 613
    iget-object v8, v5, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 615
    iput-object v3, v5, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 616
    const/4 v7, 0x1

    .line 617
    goto :goto_5

    .line 619
    .end local v5    # "paramInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    :cond_9
    goto :goto_4

    :cond_a
    goto :goto_5

    .line 621
    :cond_b
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "mergeExtPages startParamInfos is null"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 623
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->setH5StartParamTag(Ljava/lang/String;Ljava/util/List;)V

    .line 626
    :goto_5
    sget-object v8, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mergeExtPages...pageExist="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    if-nez v7, :cond_c

    .line 629
    new-instance v8, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    invoke-direct {v8}, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;-><init>()V

    .line 630
    .local v6, "startParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    move-object v6, v8

    iput-object v1, v8, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->tag:Ljava/lang/String;

    .line 631
    iput-object v3, v6, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 632
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "startParamInfos":Ljava/util/List;
    .end local v6    # "startParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    .end local v7    # "pageExist":Z
    :cond_c
    goto/16 :goto_3

    .line 654
    :cond_d
    return-void
.end method

.method private mergeTabBarTag(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 17
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v0, "name"

    const-string/jumbo v5, "pagePath"

    .line 479
    instance-of v6, v3, Lcom/alibaba/fastjson/JSONObject;

    if-nez v6, :cond_0

    .line 480
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string v5, "dynamicMergeTemplateConfig...object is null"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void

    .line 485
    :cond_0
    :try_start_0
    move-object v6, v3

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    const/4 v7, 0x0

    move-object v8, v7

    .line 486
    .local v8, "tabBarValue":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v6

    const-string v9, "items"

    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    move-object v9, v7

    .local v9, "tabBarItems":Lcom/alibaba/fastjson/JSONArray;
    move-object v10, v7

    .line 488
    .local v10, "items":Lcom/alibaba/fastjson/JSONArray;
    move-object v10, v6

    if-eqz v6, :cond_6

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 489
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v9, v6

    .line 490
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v11, v7

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    .line 491
    .local v6, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 492
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 493
    .local v7, "itemObject":Ljava/lang/Object;
    move-object v7, v15

    instance-of v15, v15, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v15, :cond_4

    .line 498
    move-object v15, v7

    check-cast v15, Lcom/alibaba/fastjson/JSONObject;

    .line 499
    .local v11, "item":Lcom/alibaba/fastjson/JSONObject;
    move-object v11, v15

    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 500
    .local v12, "pagePathObj":Ljava/lang/Object;
    move-object v12, v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 504
    move-object v15, v12

    check-cast v15, Ljava/lang/String;

    .line 505
    .local v13, "pagePath":Ljava/lang/String;
    move-object v13, v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 508
    const-string/jumbo v15, "tag"

    invoke-virtual {v11, v15, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v15, "launchParamsTag"

    invoke-virtual {v11, v15, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string/jumbo v15, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    .end local v6    # "iterator":Ljava/util/Iterator;
    .local v16, "iterator":Ljava/util/Iterator;
    const-string v6, "index.html#"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v15, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 513
    .local v3, "tabBarItem":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v14, "name":Ljava/lang/String;
    move-object v14, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    const-string v6, ""

    move-object v14, v6

    .line 517
    :cond_1
    invoke-virtual {v3, v0, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-virtual {v3, v5, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 521
    move-object/from16 v3, p2

    move-object/from16 v6, v16

    .end local v3    # "tabBarItem":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "itemObject":Ljava/lang/Object;
    .end local v11    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "pagePathObj":Ljava/lang/Object;
    .end local v13    # "pagePath":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    goto :goto_0

    .line 505
    .end local v16    # "iterator":Ljava/util/Iterator;
    .restart local v6    # "iterator":Ljava/util/Iterator;
    .restart local v7    # "itemObject":Ljava/lang/Object;
    .restart local v11    # "item":Lcom/alibaba/fastjson/JSONObject;
    .restart local v12    # "pagePathObj":Ljava/lang/Object;
    .restart local v13    # "pagePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v6

    .end local v6    # "iterator":Ljava/util/Iterator;
    .restart local v16    # "iterator":Ljava/util/Iterator;
    move-object/from16 v3, p2

    goto :goto_0

    .line 500
    .end local v13    # "pagePath":Ljava/lang/String;
    .end local v16    # "iterator":Ljava/util/Iterator;
    .restart local v6    # "iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v16, v6

    .end local v6    # "iterator":Ljava/util/Iterator;
    .restart local v16    # "iterator":Ljava/util/Iterator;
    move-object/from16 v3, p2

    goto :goto_0

    .line 493
    .end local v11    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "pagePathObj":Ljava/lang/Object;
    .end local v16    # "iterator":Ljava/util/Iterator;
    .restart local v6    # "iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v16, v6

    .end local v6    # "iterator":Ljava/util/Iterator;
    .restart local v16    # "iterator":Ljava/util/Iterator;
    move-object/from16 v3, p2

    goto :goto_0

    .line 524
    .end local v7    # "itemObject":Ljava/lang/Object;
    .end local v16    # "iterator":Ljava/util/Iterator;
    .restart local v6    # "iterator":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v16, v6

    .end local v6    # "iterator":Ljava/util/Iterator;
    .restart local v16    # "iterator":Ljava/util/Iterator;
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mTabBarStartupParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v16    # "iterator":Ljava/util/Iterator;
    :cond_6
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string v3, "dynamicMergeTemplateConfig...tabBar merge"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v0, "tabBar.json"

    invoke-direct {v1, v2, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getEntryKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "tabBarKey":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 531
    .local v3, "tabBarBytes":[B
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->setTabData(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v0    # "tabBarKey":Ljava/lang/String;
    .end local v3    # "tabBarBytes":[B
    .end local v8    # "tabBarValue":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "tabBarItems":Lcom/alibaba/fastjson/JSONArray;
    .end local v10    # "items":Lcom/alibaba/fastjson/JSONArray;
    return-void

    .line 534
    :catchall_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mergeTabBarTag...e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private mergeWindowTag(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 20
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 665
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v0, v2, Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 666
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mergeWindowTag...object is null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void

    .line 669
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mergeWindowTag...window"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getWindowTag(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 672
    .local v6, "originalWindow":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v4

    if-eqz v4, :cond_1e

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v5, p0

    goto/16 :goto_3

    .line 677
    :cond_1
    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    move-object v7, v5

    .line 678
    .local v7, "extWindow":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 679
    const-string/jumbo v4, "mergeWindowTag...extWindow is null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void

    .line 683
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParamTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v4, v5

    .line 684
    .local v4, "startParamInfos":Ljava/util/List;
    move-object v4, v0

    if-nez v0, :cond_3

    .line 685
    return-void

    .line 688
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v0, v5

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    .line 689
    .local v5, "startParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    move-object v5, v9

    if-eqz v9, :cond_4

    .line 693
    iget-object v9, v5, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 695
    .local v9, "itemStartParams":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 696
    .local v0, "extWindowItem":Ljava/lang/String;
    move-object v12, v11

    .end local v0    # "extWindowItem":Ljava/lang/String;
    .local v12, "extWindowItem":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 697
    const-string/jumbo v0, "optionMenu"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 702
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "mergeWindowTag...item="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v7, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 706
    .local v0, "newValue":Ljava/lang/Object;
    invoke-virtual {v6, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 708
    .local v11, "originalValue":Ljava/lang/Object;
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 709
    .local v13, "finalValue":Ljava/lang/Object;
    instance-of v14, v0, Ljava/lang/Integer;

    if-eqz v14, :cond_8

    .line 710
    if-eqz v13, :cond_6

    if-eqz v11, :cond_5

    move-object v14, v13

    check-cast v14, Ljava/lang/Integer;

    .line 712
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object v15, v11

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v14, v15, :cond_6

    .line 714
    :cond_5
    goto/16 :goto_2

    .line 716
    :cond_6
    if-eqz v11, :cond_7

    move-object v14, v11

    check-cast v14, Ljava/lang/Integer;

    .line 717
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object v15, v0

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v14, v15, :cond_1a

    .line 719
    :cond_7
    invoke-virtual {v9, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 721
    :cond_8
    instance-of v14, v0, Ljava/lang/Boolean;

    if-eqz v14, :cond_c

    .line 722
    if-eqz v13, :cond_a

    if-eqz v11, :cond_9

    move-object v14, v13

    check-cast v14, Ljava/lang/Boolean;

    .line 724
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object v15, v11

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eq v14, v15, :cond_a

    .line 726
    :cond_9
    goto/16 :goto_2

    .line 728
    :cond_a
    if-eqz v11, :cond_b

    move-object v14, v11

    check-cast v14, Ljava/lang/Boolean;

    .line 729
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object v15, v0

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eq v14, v15, :cond_1a

    .line 731
    :cond_b
    invoke-virtual {v9, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 733
    :cond_c
    instance-of v14, v0, Ljava/lang/String;

    if-eqz v14, :cond_e

    .line 734
    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    move-object v15, v11

    check-cast v15, Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 736
    goto/16 :goto_2

    .line 738
    :cond_d
    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 740
    invoke-virtual {v9, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 742
    :cond_e
    instance-of v14, v0, Ljava/lang/Long;

    if-eqz v14, :cond_12

    .line 743
    if-eqz v13, :cond_10

    if-eqz v11, :cond_f

    move-object v14, v13

    check-cast v14, Ljava/lang/Long;

    .line 745
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_10

    .line 747
    :cond_f
    goto/16 :goto_2

    .line 749
    :cond_10
    if-eqz v11, :cond_11

    move-object v14, v11

    check-cast v14, Ljava/lang/Long;

    .line 750
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_1a

    .line 752
    :cond_11
    invoke-virtual {v9, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 754
    :cond_12
    instance-of v14, v0, Ljava/lang/Double;

    if-eqz v14, :cond_16

    .line 755
    const-wide/16 v14, 0x0

    if-eqz v13, :cond_14

    if-eqz v11, :cond_13

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/Double;

    .line 757
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-object/from16 v18, v11

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v18, v16, v14

    if-lez v18, :cond_14

    .line 759
    :cond_13
    goto/16 :goto_2

    .line 761
    :cond_14
    if-eqz v11, :cond_15

    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/Double;

    .line 762
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v18, v16, v14

    if-lez v18, :cond_1a

    .line 764
    :cond_15
    invoke-virtual {v9, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 766
    :cond_16
    instance-of v14, v0, Ljava/lang/Float;

    if-eqz v14, :cond_1a

    .line 767
    const/4 v14, 0x0

    if-eqz v13, :cond_18

    if-eqz v11, :cond_17

    move-object v15, v13

    check-cast v15, Ljava/lang/Float;

    .line 769
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v15, v15, v14

    if-lez v15, :cond_18

    .line 771
    :cond_17
    goto :goto_2

    .line 773
    :cond_18
    if-eqz v11, :cond_19

    move-object v15, v11

    check-cast v15, Ljava/lang/Float;

    .line 774
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v14, v15, v14

    if-lez v14, :cond_1a

    .line 776
    :cond_19
    invoke-virtual {v9, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    .end local v0    # "newValue":Ljava/lang/Object;
    .end local v11    # "originalValue":Ljava/lang/Object;
    .end local v13    # "finalValue":Ljava/lang/Object;
    :cond_1a
    goto :goto_2

    .line 779
    :catchall_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v11, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "mergeWindowTag...item:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "...e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v12    # "extWindowItem":Ljava/lang/String;
    :cond_1b
    :goto_2
    move-object v0, v12

    goto/16 :goto_1

    .line 783
    .end local v5    # "startParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    .end local v9    # "itemStartParams":Lcom/alibaba/fastjson/JSONObject;
    :cond_1c
    goto/16 :goto_0

    .line 785
    :cond_1d
    const-string v0, "appConfig.json"

    move-object/from16 v5, p0

    invoke-direct {v5, v1, v0, v3}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getEntryKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "appConfigKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    return-void

    .line 672
    .end local v0    # "appConfigKey":Ljava/lang/String;
    .end local v4    # "startParamInfos":Ljava/util/List;
    .end local v7    # "extWindow":Lcom/alibaba/fastjson/JSONObject;
    :cond_1e
    move-object/from16 v5, p0

    .line 673
    :goto_3
    const-string/jumbo v4, "mergeWindowTag...originalWindow is null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method private readTemplateConfigFromExtendInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "startupParams"    # Landroid/os/Bundle;

    .line 204
    const-string v0, "appVersion"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "appVersion":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v3, v1

    .line 207
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 208
    return-object v1

    .line 211
    :cond_0
    invoke-interface {v3, p1, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    .line 212
    .local v4, "extendInfo":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "readTemplateConfigFromExtendInfo...extendInfo is null"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-object v1

    .line 217
    :cond_1
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v5, v1

    .line 218
    .local v5, "extendInfoJo":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v2

    if-nez v2, :cond_2

    .line 219
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "readTemplateConfigFromExtendInfo...extendInfoJo is null"

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-object v1

    .line 223
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "readTemplateConfigFromExtendInfo..."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_3
    const-string/jumbo v2, "templateConfig"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 227
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v4    # "extendInfo":Ljava/lang/String;
    .end local v5    # "extendInfoJo":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readTemplateConfigFromExtendInfo...e: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method private readTemplateConfigFromInstalledPath(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "templateConfigUrl"    # Ljava/lang/String;

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 245
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->a()Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateDownloadManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 246
    .local v2, "downloadPath":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readTemplateConfig...downloadPath is null"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v1

    .line 251
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 252
    .local v3, "file":Ljava/io/File;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v1

    .line 256
    .local v4, "inputStream":Ljava/io/FileInputStream;
    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 257
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 258
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 260
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "readTemplateConfig... "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 265
    .end local v0    # "buffer":[B
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "readTemplateConfig..read file e: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v0    # "e":Ljava/lang/Throwable;
    nop

    .line 289
    return-object v1

    .line 271
    :cond_3
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mCurrentRetryCount:I

    sget v4, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->MAX_RETRY_TIME:I

    if-lt v0, v4, :cond_4

    .line 272
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "readTemplateConfig...timeout null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mCurrentRetryCount:I

    .line 275
    const-string v0, "TINY_GET_TEMPLATE_CONFIG_FAILED"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    move-object v4, v1

    .line 276
    .local v4, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object v4, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v5, "appId"

    invoke-virtual {v0, v5, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string/jumbo v5, "templateConfigUrl"

    invoke-virtual {v0, v5, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 277
    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 278
    return-object v1

    .line 282
    .end local v4    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_4
    const-wide/16 v0, 0xc8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readTemplateConfig...e: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mCurrentRetryCount:I

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->readTemplateConfigFromInstalledPath(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 242
    .end local v2    # "downloadPath":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :cond_5
    :goto_1
    return-object v1
.end method


# virtual methods
.method public addStartupParamsForTemplateApp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "startupParams"    # Landroid/os/Bundle;

    .line 807
    if-eqz p2, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mTabBarStartupParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 812
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 813
    .local v2, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 814
    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isEnableTemplateApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    return-void

    .line 819
    :cond_1
    const-string/jumbo v0, "templateApp"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 821
    return-void

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mTabBarStartupParamsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 825
    .local v1, "tabBarStartupParams":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 828
    :cond_3
    const-string/jumbo v0, "tabBarItems"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 829
    return-void

    .line 826
    :cond_4
    :goto_0
    return-void

    .line 808
    .end local v1    # "tabBarStartupParams":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    :cond_5
    :goto_1
    return-void
.end method

.method public dynamicMergeTemplateConfig(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "startupParams"    # Landroid/os/Bundle;
    .param p3, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 443
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 444
    .local v2, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isEnableTemplateApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    return-void

    .line 450
    :cond_0
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->readTemplateConfig(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v1

    .line 455
    .local v3, "config":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-nez v0, :cond_2

    .line 456
    return-void

    .line 459
    :cond_2
    const-string v0, "extEnable"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 460
    .local v1, "object":Ljava/lang/Object;
    move-object v1, v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 461
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string v4, "dynamicMergeTemplateConfig...ext disabled"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void

    .line 465
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dynamicMergeTemplateConfig..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "window"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v4, p3}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mergeWindowTag(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 467
    const-string v4, "extPages"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v4, v0, p3}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mergeExtPagesTag(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V

    .line 468
    const-string/jumbo v0, "tabBar"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mergeTabBarTag(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 469
    return-void

    .line 451
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "config":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    :goto_0
    return-void
.end method

.method public getTemplateAppId(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 10
    .param p1, "instanceAppId"    # Ljava/lang/String;
    .param p2, "startupParams"    # Landroid/os/Bundle;

    .line 361
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 362
    .local v2, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 363
    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isEnableTemplateApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    return-object v1

    .line 363
    :cond_0
    move-object v0, v1

    .local v0, "templateAppId":Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v0    # "templateAppId":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 370
    .restart local v0    # "templateAppId":Ljava/lang/String;
    :goto_0
    const-string v3, "fromPreload"

    invoke-static {p2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "templateAppId"

    if-eqz v3, :cond_2

    .line 372
    invoke-static {p2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 375
    :cond_2
    const-string v3, "appVersion"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "appVersion":Ljava/lang/String;
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v6, v1

    .line 377
    .local v6, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v6, v5

    if-nez v5, :cond_3

    .line 378
    return-object v1

    .line 381
    :cond_3
    invoke-interface {v6, p1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v7, v1

    .line 382
    .local v7, "extendInfo":Ljava/util/Map;
    move-object v7, v5

    if-nez v5, :cond_4

    .line 383
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string v5, "getTemplateAppId...extendInfo is null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-object v1

    .line 387
    :cond_4
    const-string v5, "launchParams"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v8, v1

    .line 388
    .local v8, "launchParams":Ljava/lang/String;
    move-object v8, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 389
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    const-string v5, "getTemplateAppId...launchParams is null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-object v1

    .line 393
    :cond_5
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    move-object v9, v1

    .line 394
    .local v9, "launchParamsJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v5

    if-nez v5, :cond_6

    .line 395
    return-object v1

    .line 397
    :cond_6
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .end local v3    # "appVersion":Ljava/lang/String;
    .end local v6    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v7    # "extendInfo":Ljava/util/Map;
    .end local v8    # "launchParams":Ljava/lang/String;
    .end local v9    # "launchParamsJson":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 401
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mTemplateAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_7
    return-object v0
.end method

.method public modifyApiPermission(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "instanceAppId"    # Ljava/lang/String;
    .param p2, "apiPermission"    # Ljava/lang/String;

    .line 414
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 415
    .local v2, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v2}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->isEnableTemplateApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    return-object p2

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->mTemplateAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    .local v1, "templateAppId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    return-object p2

    .line 426
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 430
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "modifyApiPermission...template app modify api_per:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 427
    :cond_3
    :goto_0
    return-object p2
.end method

.method public prepareTemplateConfig(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p2, "startupParams"    # Landroid/os/Bundle;

    .line 120
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;)V

    const-string v1, "URGENT"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public readTemplateConfig(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "startupParams"    # Landroid/os/Bundle;

    .line 308
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 309
    return-object v0

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->initMaxRetryTime()V

    .line 315
    :try_start_0
    const-string v1, "fromPreload"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 316
    .local v2, "fromPreload":Z
    const-string/jumbo v3, "templateConfigUrl"

    if-eqz v1, :cond_4

    .line 318
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->readTemplateConfigFromExtendInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v4, v0

    .line 320
    .local v4, "extendInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v1

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 321
    .local v3, "templateConfigUrl":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    const-string/jumbo v1, "templateConfig"

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v5, v0

    .line 324
    .local v5, "templateConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "readTemplateConfig..."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-object v5

    .line 326
    :cond_2
    :goto_0
    return-object v0

    .line 331
    .end local v5    # "templateConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->readTemplateConfigFromInstalledPath(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 334
    .end local v3    # "templateConfigUrl":Ljava/lang/String;
    .end local v4    # "extendInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const-string/jumbo v1, "templateApp"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 336
    return-object v0

    .line 338
    :cond_5
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "templateConfigUrl":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "readTemplateConfig...url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->readTemplateConfigFromExtendInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0

    .line 343
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->readTemplateConfigFromInstalledPath(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 346
    .end local v1    # "templateConfigUrl":Ljava/lang/String;
    .end local v2    # "fromPreload":Z
    :catchall_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "readTemplateConfig..e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method
