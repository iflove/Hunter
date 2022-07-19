.class public Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;
.super Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;
.source "RecentUseTinyAppPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;,
        Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$ViewHolder;,
        Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$TinyAppImageLoader;
    }
.end annotation


# static fields
.field public static final CHANNEL_TINY_LONG_PRESS:Ljava/lang/String; = "ch_tinylongpress"

.field public static final PARAM_CHANNEL:Ljava/lang/String; = "chInfo"

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:F

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

.field private h:Ljava/lang/String;

.field private i:Lcom/alipay/mobile/h5container/api/H5Page;

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->j:I

    .line 75
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->g:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    .line 76
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->j:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recentUseArray"    # Lcom/alibaba/fastjson/JSONArray;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->j:I

    .line 81
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->g:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    .line 82
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->j:I

    .line 83
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 14
    .param p1, "array"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;",
            ">;"
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 313
    .local v1, "size":I
    const/4 v2, 0x0

    .line 315
    .local v2, "validSiz":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v3, "modelList":Ljava/util/List;
    const/4 v4, 0x0

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_7

    .line 317
    const/16 v9, 0x8

    if-ge v2, v9, :cond_7

    .line 321
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    .line 322
    .local v5, "item":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v9

    const-string/jumbo v10, "nbsn"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v6, "nbsn":Ljava/lang/String;
    move-object v6, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v9, :cond_2

    .line 325
    sget-object v9, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->c:Ljava/lang/String;

    const-string v13, "filter dev version"

    invoke-static {v9, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    add-int/lit8 v9, v1, -0x1

    if-ne v4, v9, :cond_6

    .line 329
    if-ge v2, v10, :cond_6

    if-lez v2, :cond_6

    .line 330
    move v0, v2

    .local v0, "fill":I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 331
    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;

    invoke-direct {v7, p0, v11}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;B)V

    .line 332
    .local v8, "fillModel":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
    move-object v8, v7

    iput-boolean v12, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->fillingMark:Z

    .line 333
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v8    # "fillModel":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "fill":I
    :cond_1
    goto/16 :goto_5

    .line 342
    .end local v5    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "nbsn":Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;

    invoke-direct {v8, p0, v11}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;B)V

    .line 343
    .local v7, "model":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
    move-object v7, v8

    const-string v9, "appId"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->appId:Ljava/lang/String;

    .line 344
    const-string v8, "iconUrl"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->iconUrl:Ljava/lang/String;

    .line 345
    const-string/jumbo v8, "name"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->name:Ljava/lang/String;

    .line 346
    const-string v8, "display"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 347
    .local v8, "temp":Ljava/lang/Boolean;
    if-nez v8, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_2
    iput-boolean v9, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->display:Z

    .line 348
    const-string v9, "itemId"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->itemId:Ljava/lang/String;

    .line 349
    iput-object v6, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->nbsn:Ljava/lang/String;

    .line 350
    const-string/jumbo v9, "nbsv"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->nbsv:Ljava/lang/String;

    .line 351
    const-string/jumbo v9, "slogan"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->slogan:Ljava/lang/String;

    .line 352
    const-string/jumbo v9, "scheme"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->scheme:Ljava/lang/String;

    .line 353
    const-string v9, "extra"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->extra:Ljava/lang/String;

    .line 354
    const-string v9, "inMarketStage"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 355
    if-nez v8, :cond_4

    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_3
    iput-boolean v9, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->inMarketStage:Z

    .line 356
    iput-boolean v11, v7, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->fillingMark:Z

    .line 357
    add-int/lit8 v2, v2, 0x1

    .line 358
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v9, v1, -0x1

    if-ne v4, v9, :cond_6

    .line 362
    if-ge v2, v10, :cond_6

    if-lez v2, :cond_6

    .line 363
    move v9, v2

    .local v9, "fill":I
    :goto_4
    if-ge v9, v10, :cond_5

    .line 364
    new-instance v13, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;

    invoke-direct {v13, p0, v11}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;B)V

    .line 365
    .local v0, "fillModel":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
    move-object v0, v13

    iput-boolean v12, v13, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;->fillingMark:Z

    .line 366
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v0    # "fillModel":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 368
    .end local v9    # "fill":I
    :cond_5
    goto :goto_5

    .line 316
    .end local v7    # "model":Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$RecentUseTinyAppModel;
    .end local v8    # "temp":Ljava/lang/Boolean;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 372
    .end local v4    # "i":I
    :cond_7
    :goto_5
    return-object v3

    .line 310
    .end local v1    # "size":I
    .end local v2    # "validSiz":I
    .end local v3    # "modelList":Ljava/util/List;
    :cond_8
    :goto_6
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    const/4 v0, 0x1

    .line 238
    .local v0, "CAN_FORCE_START_FROM_MAINUI":Z
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 240
    const-string v2, "KEY_CAN_FORCE_START_FROM_MAINUI"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 241
    .local v3, "canForceStartFromMainUi":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 245
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->g:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v1, :cond_5

    .line 262
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startTinyAppAndCloseCurrent new "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 264
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string v4, "chInfo"

    const-string v5, "ch_tinylongpress"

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "FORCE_START_LITE_APP_FROM_MAIN_UI"

    invoke-virtual {v2, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->g:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->h:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v1, v4, p1, v2, v5}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->startApp(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V

    goto :goto_1

    .line 246
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startTinyAppAndCloseCurrent old "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_4

    .line 248
    const-string v4, "exitSession"

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->g:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    if-eqz v1, :cond_5

    .line 251
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$2;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;Ljava/lang/String;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    .end local v2    # "handler":Landroid/os/Handler;
    return-void

    .line 268
    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 44
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->d:F

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 44
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->e:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->g:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 2

    .line 272
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->d:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->f:Ljava/util/List;

    goto :goto_0

    .line 106
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->f:Ljava/util/List;

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->k:Z

    .line 117
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "listView":Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    return-object v1

    .line 110
    .end local v1    # "listView":Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->k:Z

    .line 111
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->c:Ljava/lang/String;

    const-string v2, "initContentView.. no valid item"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v1
.end method

.method protected final b()I
    .locals 6

    .line 277
    const/4 v0, -0x1

    .line 279
    .local v0, "width":I
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 280
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 281
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->d:F

    .line 282
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->d:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 283
    div-int/lit8 v3, v0, 0x4

    iput v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 284
    :catchall_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initWidth...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public setCurrentAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->h:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 306
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->i:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 307
    return-void
.end method

.method public showAtLocation(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .line 291
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->k:Z

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 297
    .local v0, "titleBarHeight":I
    const v1, 0x800033

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->d:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->j:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/view/RecentUseTinyAppPopWindow;->showAtLocation(Landroid/view/View;III)V

    .line 299
    return-void
.end method
