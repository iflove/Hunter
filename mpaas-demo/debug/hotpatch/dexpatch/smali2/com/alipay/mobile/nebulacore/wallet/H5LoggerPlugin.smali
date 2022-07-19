.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5LoggerPlugin.java"


# static fields
.field public static final DSL_ERROR_LOG:Ljava/lang/String; = "dslErrorLog"

.field public static final KEEP_ALIVE_PAGE_PERFORMANCE:Ljava/lang/String; = "keepAlivePagePerformance"

.field public static final REPORT_DATA:Ljava/lang/String; = "reportData"


# instance fields
.field private A:Z

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private a:I

.field private b:Z

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/fastjson/JSONArray;

.field private f:Lcom/alipay/mobile/h5container/api/H5Page;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b:Z

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->q:Z

    .line 97
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->s:Z

    .line 105
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->A:Z

    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    .line 117
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->D:Ljava/lang/String;

    .line 119
    iput v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->E:I

    .line 121
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->F:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .line 1313
    const/4 v0, 0x0

    .line 1314
    .local v0, "pattern":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 1316
    .local v1, "spdySwitch":Z
    const/4 v2, 0x0

    .line 1317
    .local v2, "spdyBlackList":Lcom/alibaba/fastjson/JSONArray;
    const-string v3, "NO"

    .line 1318
    .local v3, "useSpdy":Ljava/lang/String;
    const-string v4, "h5_androidSpdy"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 1319
    .local v6, "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v4

    if-eqz v4, :cond_0

    .line 1320
    const-string v4, "useSpdy"

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "YES"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1322
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "online config spdySwitch "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "H5LoggerPlugin"

    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    if-eqz v1, :cond_2

    .line 1324
    const-string v4, "whiteList"

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v5

    .line 1325
    .local v8, "spdyWhiteList":Ljava/lang/String;
    move-object v8, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1326
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1328
    :cond_1
    const-string v4, "blackList"

    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1329
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "online config  whiteList "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", blackList "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1329
    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    .end local v8    # "spdyWhiteList":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 1333
    .local v4, "host":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1334
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1335
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1336
    const-string v3, "YES"

    .line 1339
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    if-eqz v2, :cond_5

    .line 1340
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 1341
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1342
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1343
    const-string v3, "NO"

    .line 1344
    goto :goto_1

    .line 1340
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1348
    .end local v5    # "i":I
    :cond_5
    :goto_1
    return-object v3
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/lang/String;

    .line 69
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 375
    const-string v0, "H5LoggerPlugin"

    const-string v1, "DSL_ERROR_LOG"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 377
    const-string v0, "errorRender"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    .line 378
    const v0, -0x927c2

    iput v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    .line 379
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h()V

    .line 380
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 383
    const-string v0, "loginResult"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 384
    .local v1, "loginResult":Z
    const-string v2, "H5_PAGE_JSAPI_LOGIN"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 388
    const-string v2, "viewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "viewId"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 389
    const-string v2, "refViewID"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 390
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 384
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 391
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 10
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 632
    const-string v0, "date"

    const-string v1, "H5LoggerPlugin"

    const-string v2, "jsErrors"

    :try_start_0
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "value"

    if-eqz v3, :cond_4

    .line 633
    :try_start_1
    const-string v3, "filename"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "value":Ljava/lang/String;
    const-string v5, "lineno"

    invoke-static {p1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 636
    .local v5, "lineno":I
    const-string v6, "colno"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 637
    .local v6, "colno":I
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 638
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 639
    .local v0, "date":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fileName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "^line="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "^desc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "^date="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "^colno="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, "jsErrorInfo":Ljava/lang/String;
    iget v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->E:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_2

    .line 643
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->D:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 644
    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->D:Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->D:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->D:Ljava/lang/String;

    .line 649
    :cond_2
    :goto_1
    iget v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->E:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->E:I

    .line 650
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9, v2, v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->putIntExtra(Ljava/lang/String;I)V

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "jsErrorInfo : "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_3

    .line 653
    const-string v2, "H5_AL_JSERROR"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 654
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v7, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 656
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 653
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 659
    .end local v0    # "date":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "lineno":I
    .end local v6    # "colno":I
    .end local v7    # "jsErrorInfo":Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    const-string v0, "navigationStart"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 661
    .local v2, "navigationStart":J
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_5

    .line 662
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setNavigationStart(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 667
    .end local v2    # "navigationStart":J
    :cond_5
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5_PAGE_PAUSE logPageEndWithSpmId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spmBizType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 672
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    const-string v1, "H5LoggerPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 674
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->q:Z

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 676
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "isPrerender"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "preRender page return"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void

    .line 682
    :cond_0
    const-string v0, "H5_PAGE_PAUSE log performance"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 684
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h()V

    .line 685
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->q:Z

    .line 688
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b:Z

    if-eqz v0, :cond_2

    .line 689
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 690
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    .line 693
    :cond_2
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 461
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 471
    if-eqz p2, :cond_0

    .line 472
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 474
    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 604
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    const/4 v1, 0x0

    .line 605
    .local v1, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    move-object v1, v0

    if-eqz v0, :cond_6

    .line 607
    :try_start_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 608
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object p2, v0

    goto :goto_0

    .line 609
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 610
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object p2, v0

    .line 612
    :cond_1
    :goto_0
    nop

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 613
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iget-wide v4, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->mStartElapsedRealtime:J

    add-long/2addr v2, v4

    .line 614
    .local v2, "longValue":J
    const-string v0, "pageLoad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_PageLoad:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    return-void

    .line 616
    :cond_2
    const-string v0, "domReady"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_DomReady:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    return-void

    .line 618
    :cond_3
    const-string v0, "availableTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 619
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_AvailableTime:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    return-void

    .line 620
    :cond_4
    const-string v0, "navigationStart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 621
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_NavigationStart:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v2    # "longValue":J
    :cond_5
    return-void

    .line 624
    :catchall_0
    move-exception v0

    .line 625
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5LoggerPlugin"

    const-string v3, "handleEventTrack"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 628
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_6
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 13
    .param p1, "h5LogData"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "jsApiNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1269
    .local v1, "jsApiList":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getJsapiInfoList()Ljava/util/Map;

    move-result-object v2

    .line 1270
    .local v2, "jsapiInfoList":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->getPerformanceJSApiBlackList()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 1271
    .local v3, "blackJSApiList":Lcom/alibaba/fastjson/JSONArray;
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1273
    .local v4, "filterJSApiMap":Ljava/util/Map;
    if-nez v3, :cond_0

    .line 1274
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v3, v5

    .line 1276
    :cond_0
    const-string v5, "NBComponent.sendMessage"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1278
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "|"

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1279
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/h5container/api/H5JsCallData;

    .line 1280
    .local v7, "jsCallData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5JsCallData;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 1282
    .local v8, "jsApiName":Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1283
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1284
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1285
    .local v9, "count":I
    add-int/lit8 v10, v9, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    .end local v9    # "count":I
    goto :goto_0

    .line 1287
    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1290
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "jsCallData":Lcom/alipay/mobile/h5container/api/H5JsCallData;
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    nop

    .end local v8    # "jsApiName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1293
    goto :goto_0

    .line 1295
    :cond_3
    const-string v5, ""

    .line 1296
    .local v5, "filterJSApiInfo":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1297
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1298
    .local v7, "filterEntry":Ljava/util/Map$Entry;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, ")"

    const-string v11, "("

    if-eqz v8, :cond_4

    .line 1299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1301
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1303
    .end local v7    # "filterEntry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 1306
    :cond_5
    if-lez v0, :cond_6

    .line 1307
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "jsApiNum"

    invoke-virtual {v6, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jsApiNames"

    invoke-virtual {v6, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 1308
    const-string v7, "filterJsapiLogs"

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1310
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 69
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->g(Lcom/alipay/mobile/h5container/api/H5Event;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ucId"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/String;
    .param p4, "param2"    # Ljava/lang/String;
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "param4"    # Ljava/lang/String;

    .line 1438
    const/4 v2, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    const-string v10, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1439
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 26
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "seedID"    # Ljava/lang/String;
    .param p3, "ucId"    # Ljava/lang/String;
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "param3"    # Ljava/lang/String;
    .param p7, "param4"    # Ljava/lang/String;
    .param p8, "bizType"    # Ljava/lang/String;
    .param p9, "logLevel"    # I
    .param p10, "actionId"    # Ljava/lang/String;

    .line 1444
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "^inside="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1445
    .end local p7    # "param4":Ljava/lang/String;
    .local v1, "param4":Ljava/lang/String;
    const-string v2, "monitor"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "behaviorAuto"

    const-string v5, "135"

    const-string v6, "behavior"

    const-string v11, "error"

    const-string v7, "monitorWithLocation"

    if-nez v3, :cond_0

    .line 1446
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1447
    const-string v3, "performance"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1448
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1449
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1450
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1451
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1452
    :cond_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    .line 1454
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v9, Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;

    .line 1455
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;

    move-object v9, v8

    .line 1456
    .local v9, "provider":Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;
    move-object v9, v3

    if-eqz v3, :cond_2

    .line 1457
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 1458
    .local v8, "location":Landroid/location/Location;
    move-object v8, v3

    if-eqz v3, :cond_1

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "^longitude="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, "^latitude="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    move-object v12, v8

    goto :goto_0

    .line 1458
    :cond_1
    move-object/from16 v25, v1

    move-object v12, v8

    goto :goto_0

    .line 1465
    .end local v8    # "location":Landroid/location/Location;
    .end local v9    # "provider":Lcom/alipay/mobile/nebula/provider/H5LastKnowLocationProvider;
    :cond_2
    move-object/from16 v25, v1

    move-object v12, v8

    .end local v1    # "param4":Ljava/lang/String;
    .local v25, "param4":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1466
    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->x:Ljava/lang/String;

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->y:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->z:Ljava/lang/String;

    .line 1467
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i()Ljava/lang/String;

    move-result-object v22

    .line 1466
    const-string v12, "135"

    move-object/from16 v13, p2

    move-object/from16 v16, v1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, v25

    move/from16 v23, p9

    move-object/from16 v24, p10

    invoke-static/range {v12 .. v24}, Lcom/alipay/mobile/nebula/log/H5Logger;->h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1468
    return-void

    .line 1469
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 1479
    :cond_4
    const-string v1, "H-VM"

    .line 1480
    .local v1, "logHeader":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1481
    const-string v1, "H-EM"

    .line 1483
    :cond_5
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1484
    const-string v1, "HD-VM"

    move-object v13, v1

    goto :goto_1

    .line 1483
    :cond_6
    move-object v13, v1

    .line 1487
    .end local v1    # "logHeader":Ljava/lang/String;
    .local v13, "logHeader":Ljava/lang/String;
    :goto_1
    nop

    .line 1488
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i()Ljava/lang/String;

    move-result-object v7

    .line 1487
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, v25

    move-object v8, v13

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->performanceH5Exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_7

    .line 1492
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1493
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v2, v12

    .line 1494
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1495
    const-string v1, "H5LoggerPlugin"

    const-string v3, "is aliDomain upload now "

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1497
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    .line 1502
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v13    # "logHeader":Ljava/lang/String;
    :cond_7
    move-object/from16 v1, v25

    .end local v25    # "param4":Ljava/lang/String;
    .local v1, "param4":Ljava/lang/String;
    :cond_8
    return-void

    .line 1470
    .end local v1    # "param4":Ljava/lang/String;
    .restart local v25    # "param4":Ljava/lang/String;
    :cond_9
    :goto_2
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1471
    const-string v1, "H5behavior"

    .end local p8    # "bizType":Ljava/lang/String;
    .local v1, "bizType":Ljava/lang/String;
    goto :goto_3

    .line 1470
    .end local v1    # "bizType":Ljava/lang/String;
    .restart local p8    # "bizType":Ljava/lang/String;
    :cond_a
    move-object/from16 v1, p8

    .line 1473
    .end local p8    # "bizType":Ljava/lang/String;
    .restart local v1    # "bizType":Ljava/lang/String;
    :goto_3
    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->x:Ljava/lang/String;

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->y:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->z:Ljava/lang/String;

    .line 1476
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i()Ljava/lang/String;

    move-result-object v22

    .line 1473
    move-object v12, v1

    move-object/from16 v13, p2

    move-object/from16 v16, v2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, v25

    move/from16 v23, p9

    move-object/from16 v24, p10

    invoke-static/range {v12 .. v24}, Lcom/alipay/mobile/nebula/log/H5Logger;->h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1477
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 777
    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "pageUrl":Ljava/lang/String;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->q:Z

    .line 780
    const-string v2, "about:blank"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    return v1

    .line 783
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v1, :cond_1

    .line 784
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "viewID"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_1
    const-string v1, "h5_cleanSpmBeforeLogPagePerformance"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 790
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f()V

    .line 793
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->l:Z

    if-eqz v1, :cond_5

    .line 794
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->l:Z

    .line 795
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 798
    :cond_3
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->l:Z

    if-eqz v1, :cond_4

    .line 799
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->l:Z

    .line 800
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 802
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 803
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f()V

    .line 808
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageEnded(Ljava/lang/String;)V

    .line 809
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h()V

    .line 811
    const-string v1, "mp_h5_not_start_spm"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 812
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 813
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    const-string v2, "logStartFrom"

    const-string v5, "start"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_6
    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    .line 817
    return v3
.end method

.method private b()V
    .locals 4

    .line 515
    const-string v0, ""

    .line 516
    .local v0, "viewId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    const-string v1, "viewID"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_TO_NATIVE:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 520
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 522
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 523
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 524
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 394
    const-string v0, "fileName"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 395
    .local v2, "fileName":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 396
    .local v0, "type":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&contentLength="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v5, "contentLength"

    invoke-static {p1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v5, "status"

    invoke-static {p1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "param1":Ljava/lang/String;
    const-string v5, "H5_FILE_DOWNLOAD"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 400
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 399
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 402
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 734
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 735
    invoke-static {}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->getInstance()Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->uploadLog(Ljava/lang/String;)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->onPageEnded(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 739
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->q:Z

    if-eqz v0, :cond_1

    .line 740
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 741
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->g()V

    .line 742
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h()V

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->q:Z

    .line 746
    :cond_1
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 15
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 1388
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1389
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "logData"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1390
    .local v2, "jSONArray":Lcom/alibaba/fastjson/JSONArray;
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1391
    .local v3, "type":Ljava/lang/String;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v4, p2

    goto/16 :goto_0

    .line 1395
    :cond_0
    if-eqz v3, :cond_1

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1396
    :cond_1
    const-string v0, "monitor"

    move-object v3, v0

    .line 1398
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v0, v11, :cond_3

    .line 1399
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v13, 0x2

    if-ne v0, v13, :cond_4

    .line 1403
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1404
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    .line 1403
    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v14, 0x3

    if-ne v0, v14, :cond_5

    .line 1407
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1408
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x0

    .line 1407
    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    .line 1412
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1413
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1414
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 1412
    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v4, 0x5

    if-lt v0, v4, :cond_7

    .line 1418
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 1419
    .local v6, "seedId":Ljava/lang/String;
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 1420
    .local v7, "param1":Ljava/lang/String;
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 1421
    .local v8, "param2":Ljava/lang/String;
    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 1422
    .local v9, "param3":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    .line 1423
    .local v10, "param4":Ljava/lang/String;
    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    .end local v6    # "seedId":Ljava/lang/String;
    .end local v7    # "param1":Ljava/lang/String;
    .end local v8    # "param2":Ljava/lang/String;
    .end local v9    # "param3":Ljava/lang/String;
    .end local v10    # "param4":Ljava/lang/String;
    :cond_7
    return-void

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "H5LoggerPlugin"

    const-string v5, "exception detail"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1431
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1432
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 1434
    return-void

    .line 1391
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    move-object/from16 v4, p2

    .line 1392
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .line 890
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v0, :cond_0

    goto :goto_1

    .line 893
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "param3":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 895
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 896
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 894
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 897
    return-void

    .line 891
    .end local v0    # "param3":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .line 1695
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1698
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 1699
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    .line 1700
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 1701
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    return-object v0

    :cond_1
    return-object v1

    .line 1703
    :cond_2
    return-object v1

    .line 1696
    .end local v2    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_3
    :goto_0
    return-object v1
.end method

.method private c()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    const-string v1, "isEntrance"

    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-void

    .line 564
    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 405
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "status":Ljava/lang/String;
    const-string v1, "H5_DOWNLOAD_APK_RESULT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 407
    .local v1, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    const-string v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "url"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 409
    const-string v3, "apkSize"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    goto :goto_0

    .line 410
    :cond_0
    const-string v2, "failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "errorMsg"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 413
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 414
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 413
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 416
    return-void
.end method

.method private c(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5_PAGE_RESUME logPageResumeWithSpmId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spmBizType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 768
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    const-string v1, "H5LoggerPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v0, "h5_resumeResetPageToken"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageToken(Ljava/lang/String;)V

    .line 772
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 773
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    const-string v1, "logStartFrom"

    const-string v2, "resume"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    return-void
.end method

.method private d(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 27
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "targetUrl"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "targetUrl":Ljava/lang/String;
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "appType"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    const-string v4, "online"

    goto :goto_0

    :cond_0
    const-string v4, "local"

    .line 422
    .local v4, "appType":Ljava/lang/String;
    :goto_0
    const-string v5, "status"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 423
    .local v6, "status":I
    const-string v7, "type"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 424
    .local v8, "mimeType":Ljava/lang/String;
    const-string v9, "method"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 425
    .local v10, "method":Ljava/lang/String;
    const-string v11, "start"

    invoke-static {v1, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    .line 426
    .local v12, "start":J
    const-string v14, "duration"

    invoke-static {v1, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v15

    .line 427
    .local v15, "duration":J
    move/from16 v17, v6

    .end local v6    # "status":I
    .local v17, "status":I
    const-string v6, "size"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v18

    .line 428
    .local v18, "size":J
    move-object/from16 v20, v14

    const-string v14, "isMainDoc"

    move-object/from16 v21, v11

    invoke-static {v1, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 430
    .local v11, "isMainDoc":Ljava/lang/String;
    const-string v1, "YES"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 431
    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move/from16 v1, v17

    .line 433
    .local v1, "statusCode":I
    :goto_1
    const-string v22, ""

    .line 435
    .local v22, "errorType":Ljava/lang/String;
    move-object/from16 v23, v11

    .end local v11    # "isMainDoc":Ljava/lang/String;
    .local v23, "isMainDoc":Ljava/lang/String;
    const/16 v11, 0x190

    if-lt v1, v11, :cond_2

    .line 436
    const-string v22, "errorResponse"

    .line 438
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-wide/32 v24, 0xea60

    cmp-long v11, v15, v24

    if-lez v11, :cond_3

    .line 439
    const-string v22, "longRender"

    move-object/from16 v11, v22

    goto :goto_2

    .line 442
    :cond_3
    move-object/from16 v11, v22

    .end local v22    # "errorType":Ljava/lang/String;
    .local v11, "errorType":Ljava/lang/String;
    :goto_2
    const-string v22, "H5_AL_NETWORK_PERFORMANCE_ERROR"

    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v22

    .line 443
    move-object/from16 v24, v14

    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    move-object/from16 v22, v11

    .end local v11    # "errorType":Ljava/lang/String;
    .restart local v22    # "errorType":Ljava/lang/String;
    const/4 v11, 0x0

    move-wide/from16 v25, v15

    .end local v15    # "duration":J
    .local v25, "duration":J
    const-string v15, "performance"

    invoke-virtual {v14, v15, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    .line 444
    invoke-virtual {v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "appId"

    invoke-virtual {v11, v15, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v14

    const-string v15, "version"

    invoke-virtual {v11, v15, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 445
    invoke-virtual {v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "publicId"

    invoke-virtual {v11, v15, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    iget-object v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v14}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v14

    const-string v15, "url"

    invoke-virtual {v11, v15, v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    .line 446
    invoke-virtual {v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v9, "psd"

    invoke-virtual {v2, v9, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 448
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, v21

    invoke-virtual {v2, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, v20

    invoke-virtual {v2, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v5, "errorType"

    move-object/from16 v6, v22

    .end local v22    # "errorType":Ljava/lang/String;
    .local v6, "errorType":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "errorCode"

    invoke-virtual {v2, v9, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    move-object/from16 v7, v23

    move-object/from16 v11, v24

    .end local v23    # "isMainDoc":Ljava/lang/String;
    .local v7, "isMainDoc":Ljava/lang/String;
    invoke-virtual {v2, v11, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 451
    invoke-virtual {v2, v11, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 453
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 455
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 456
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    .line 458
    :cond_4
    return-void
.end method

.method private d(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 10

    .line 821
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->F:Z

    if-eqz v0, :cond_0

    .line 822
    return-void

    .line 825
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 826
    const-string v1, "H5LoggerPlugin"

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v2, :cond_1

    .line 827
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v0, v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/track/TrackPageConfig;->isTrackPage()Z

    move-result v0

    .line 829
    if-nez v0, :cond_1

    .line 830
    const-string p1, "endSpm isTrackPage false ,return"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-void

    .line 835
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_2

    .line 836
    return-void

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 842
    const-string v0, "h5_filterEmptySpmId"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "return empty spmId : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    return-void

    .line 846
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 851
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    const-string v2, "chInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v0, :cond_6

    .line 855
    return-void

    .line 858
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 859
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    const-string v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 862
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 866
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "h5pageurl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_release_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :cond_a
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 876
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 877
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v3, :cond_c

    .line 878
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->A:Z

    if-eqz v0, :cond_b

    .line 879
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    .line 880
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 879
    invoke-interface/range {v3 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 882
    :cond_b
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    .line 883
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 882
    invoke-interface/range {v3 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 886
    :cond_c
    return-void
.end method

.method private static d()Z
    .locals 2

    .line 900
    const-string v0, "h5_endSpmClearSpmDetail"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private e(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 477
    const-string v0, "H5_GETLOCATION_RESULT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "result"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "locateDuration"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "currentTimestamp"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "reGeocodeDuration"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v2, "locateStart"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 483
    const-string v2, "locateEnd"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 484
    const-string v2, "reGeocodeStart"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 485
    const-string v2, "reGeocodeEnd"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 486
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v2, "errorMessage"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 488
    const-string v2, "errorCode"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 489
    const-string v2, "errorType"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 490
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 492
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 493
    return-void
.end method

.method private e(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 910
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->F:Z

    if-eqz v0, :cond_0

    .line 911
    return-void

    .line 914
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    .line 915
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v0

    const-string v2, "H5LoggerPlugin"

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v0, :cond_1

    .line 916
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, v1, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackPageConfig;

    invoke-interface {v0}, Lcom/alipay/mobile/monitor/track/TrackPageConfig;->isTrackPage()Z

    move-result v0

    .line 918
    if-nez v0, :cond_1

    .line 919
    const-string v0, "startSpm isTrackPage : false ,return"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    return-void

    .line 924
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_2

    .line 925
    return-void

    .line 928
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b:Z

    if-nez v0, :cond_3

    .line 929
    const-string v0, "is not H5Activity not log"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-nez v0, :cond_4

    .line 933
    return-void

    .line 937
    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "viewID"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isSPM:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->A:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " h5LogProvider:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->A:Z

    if-eqz v0, :cond_6

    .line 941
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 942
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "spmId is empty, use pageUrl = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSpmId(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v0, :cond_7

    .line 948
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 952
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v0, :cond_7

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "logAutoBehavorPageStart !isSPM  spmBizType spmUrl:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 954
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 958
    :cond_7
    return-void
.end method

.method private static e()Z
    .locals 2

    .line 905
    const-string v0, "h5_enableSpmTrackPage"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private f()V
    .locals 2

    .line 1074
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1075
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1076
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1077
    :catchall_1
    move-exception v0

    .line 1078
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5LoggerPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1080
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method private f(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 496
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_FAVORITES_RESULT:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "description"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "bizScenario"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bs"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 501
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 502
    return-void
.end method

.method private f(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1352
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 1353
    return-void

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "H5LoggerPlugin"

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 1357
    const-string v0, "pageData.start == 0 not logPagePerformance"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-void

    .line 1361
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1362
    return-void

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1368
    .local v0, "myData":Lcom/alipay/mobile/h5container/api/H5PageData;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->clone()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1371
    goto :goto_0

    .line 1369
    :catchall_0
    move-exception v1

    .line 1370
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1374
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    new-instance v1, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    new-instance v10, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->D:Ljava/lang/String;

    const-string v3, "utf-8"

    .line 1375
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    move-object v5, v1

    move-object v6, v0

    invoke-direct/range {v5 .. v10}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;-><init>(Lcom/alipay/mobile/h5container/api/H5PageData;Ljava/util/Map;Lcom/alipay/mobile/h5container/api/H5AvailablePageData;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 1376
    .local v1, "logRunnable":Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;
    const-string v2, "NORMAL"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1379
    .end local v1    # "logRunnable":Lcom/alipay/mobile/nebulacore/log/H5LogRunnable;
    goto :goto_1

    .line 1377
    :catch_0
    move-exception v1

    .line 1378
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->D:Ljava/lang/String;

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logPagePerformance and logPageEndWithSpmId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " spmBizType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 1385
    return-void
.end method

.method private g()V
    .locals 19

    .line 1083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v1, :cond_7

    iget-boolean v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1086
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "appId":Ljava/lang/String;
    nop

    .line 1088
    const-string v2, "h5_logNewBlankScreenConfig"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    .line 1089
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1090
    const-string v2, "enable"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, "enable":Ljava/lang/String;
    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1093
    .local v4, "regex":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v5

    .line 1094
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkType()Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-ne v5, v6, :cond_1

    .line 1095
    const-string v5, "wifiLimit"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    nop

    .line 1096
    const-string v5, "elseNetWork"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    :goto_0
    nop

    .line 1097
    .local v5, "stayTime":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1098
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1099
    const-string v6, "yes"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1100
    invoke-static {v4, v1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1103
    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->getComplete()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    const-string v10, "H5LoggerPlugin"

    const-string v11, "errorRender"

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    cmp-long v15, v6, v12

    if-nez v15, :cond_2

    .line 1104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v15}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCreate()J

    move-result-wide v15

    sub-long/2addr v6, v15

    div-long/2addr v6, v8

    int-to-long v12, v5

    cmp-long v17, v6, v12

    if-lez v17, :cond_2

    .line 1106
    iput-boolean v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 1107
    iput-object v11, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    .line 1108
    const v6, -0x927c4

    iput v6, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    .line 1109
    const-string v6, "log WebView page unfinished error"

    invoke-static {v10, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return-void

    .line 1114
    :cond_2
    const-string v6, "testFilter"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 1115
    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    .line 1116
    .local v6, "filterTime":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getCreate()J

    move-result-wide v17

    sub-long v12, v12, v17

    div-long/2addr v12, v8

    int-to-long v7, v6

    cmp-long v9, v12, v7

    if-gez v9, :cond_4

    .line 1117
    return-void

    .line 1121
    :cond_4
    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v7

    const v8, -0x927c3

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v7

    .line 1122
    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v7

    sget-object v9, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v7, v9, :cond_5

    .line 1123
    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getFirstVisuallyRender()J

    move-result-wide v12

    const-wide/16 v15, 0x0

    cmp-long v7, v12, v15

    if-nez v7, :cond_6

    .line 1125
    iput-boolean v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 1126
    iput-object v11, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    .line 1127
    iput v8, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    .line 1128
    const-string v7, "log UC WebView blank error"

    invoke-static {v10, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return-void

    .line 1131
    :cond_5
    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v12

    const-wide/16 v15, 0x0

    cmp-long v7, v12, v15

    if-nez v7, :cond_6

    .line 1133
    iput-boolean v14, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 1134
    iput-object v11, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    .line 1135
    iput v8, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    .line 1136
    const-string v7, "log Android WebView blank error"

    invoke-static {v10, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    return-void

    .line 1142
    .end local v2    # "enable":Ljava/lang/String;
    .end local v4    # "regex":Ljava/lang/String;
    .end local v5    # "stayTime":I
    .end local v6    # "filterTime":I
    :cond_6
    return-void

    .line 1084
    .end local v1    # "appId":Ljava/lang/String;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    :goto_2
    return-void
.end method

.method private g(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 505
    const-string v0, "channelName"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "channelName":Ljava/lang/String;
    const-string v2, "shareResult"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 507
    .local v3, "shareResult":I
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_SHARE_RESULT:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 508
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/nebula/log/H5Logger;->MONITOR:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 509
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 510
    const-string v2, "bizType"

    const-string v4, "20000067"

    invoke-static {p1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "url"

    invoke-virtual {v0, v4, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 507
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 512
    return-void
.end method

.method private g(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 38
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    move-object/from16 v12, p0

    const-string v1, "H5LoggerPlugin"

    .line 1505
    iget-object v0, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1509
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 1510
    .local v13, "params":Lcom/alibaba/fastjson/JSONObject;
    iget v0, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a:I

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    .line 1511
    .local v14, "maxCount":Z
    const-string v0, "seedId"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1512
    .local v15, "seedId":Ljava/lang/String;
    const-string v0, "spmId"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1513
    .local v28, "spm":Ljava/lang/String;
    const-string v0, "abTestInfo"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1514
    .local v29, "abTestInfo":Ljava/lang/String;
    const-string v0, "bizType"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1515
    .local v30, "bizType":Ljava/lang/String;
    const-string v0, "entityId"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->y:Ljava/lang/String;

    .line 1517
    const-string v3, ""

    .line 1519
    .local v3, "extLogInfoS":Ljava/lang/String;
    :try_start_0
    iget-object v0, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1520
    iget-object v0, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "extLogInfo"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1524
    :cond_2
    move-object/from16 v31, v3

    goto :goto_1

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v31, v3

    .line 1526
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "extLogInfoS":Ljava/lang/String;
    .local v31, "extLogInfoS":Ljava/lang/String;
    :goto_1
    const-string v0, "logLevel"

    invoke-static {v13, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v32

    .line 1527
    .local v32, "logLevel":I
    const-string v0, "actionId"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move-object v5, v3

    .line 1530
    .local v5, "actionId":Ljava/lang/String;
    move-object v11, v0

    .end local v5    # "actionId":Ljava/lang/String;
    .local v11, "actionId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "clicked"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1531
    :cond_3
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1533
    :try_start_1
    invoke-static/range {v28 .. v28}, Lcom/alipay/mobile/nebula/log/H5Logger;->setLastClickSpm(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    goto :goto_2

    .line 1534
    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1535
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1540
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid seedId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    return-void

    .line 1545
    :cond_5
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v14, :cond_6

    move-object/from16 v17, v11

    goto/16 :goto_5

    .line 1550
    :cond_6
    const-string v0, "type"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "type":Ljava/lang/String;
    const-string v5, "behavior"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "performance"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1552
    const-string v5, "monitorWithLocation"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "error"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1553
    const-string v5, "behaviorAuto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "135"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1554
    const-string v0, "monitor"

    .line 1556
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "remoteLog type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string v5, "ucId"

    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1560
    .local v33, "ucId":Ljava/lang/String;
    const-string v5, "param1"

    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1561
    .local v34, "param1":Ljava/lang/String;
    const-string v5, "param2"

    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1562
    .local v35, "param2":Ljava/lang/String;
    const-string v5, "param3"

    invoke-static {v13, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1563
    .local v36, "param3":Ljava/lang/String;
    const-string v5, ""

    .line 1564
    .local v5, "param4":Ljava/lang/String;
    const-string v6, "param4"

    invoke-virtual {v13, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1567
    .local v10, "param4Obj":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "from=JSAPI^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1569
    instance-of v6, v10, Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "^"

    if-eqz v6, :cond_a

    .line 1570
    move-object v6, v10

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1571
    .local v8, "key":Ljava/lang/String;
    move-object v9, v10

    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1572
    .local v3, "val":Ljava/lang/Object;
    move-object v3, v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 1573
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1575
    .end local v3    # "val":Ljava/lang/Object;
    .end local v8    # "key":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 1570
    :cond_9
    move-object v3, v6

    .line 1578
    :cond_a
    instance-of v4, v10, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 1579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1582
    :cond_b
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1583
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v37, v5

    goto :goto_4

    .line 1582
    :cond_c
    move-object/from16 v37, v5

    .line 1586
    .end local v5    # "param4":Ljava/lang/String;
    .local v37, "param4":Ljava/lang/String;
    :goto_4
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1587
    invoke-static/range {v31 .. v31}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1588
    .local v3, "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    if-eqz v2, :cond_d

    .line 1589
    const-string v2, "pageId"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->z:Ljava/lang/String;

    .line 1594
    .end local v3    # "extLogInfoJ":Lcom/alibaba/fastjson/JSONObject;
    :cond_d
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_10

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "h5RemoteLogClickLogger pageData.pageToken:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v1, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    if-eqz v1, :cond_f

    .line 1597
    iget-object v1, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPageId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 1598
    .local v2, "spmPageId":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_e

    .line 1599
    iput-object v2, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->z:Ljava/lang/String;

    .line 1601
    :cond_e
    iget-object v1, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->z:Ljava/lang/String;

    iget-object v3, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->y:Ljava/lang/String;

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i()Ljava/lang/String;

    move-result-object v25

    .line 1601
    move-object/from16 v16, v1

    move-object/from16 v17, v28

    move-object/from16 v18, v30

    move-object/from16 v19, v29

    move-object/from16 v20, v3

    move-object/from16 v21, v34

    move-object/from16 v22, v35

    move-object/from16 v23, v36

    move-object/from16 v24, v37

    move/from16 v26, v32

    move-object/from16 v27, v11

    invoke-static/range {v16 .. v27}, Lcom/alipay/mobile/nebula/log/H5Logger;->h5RemoteLogClickLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1608
    .end local v2    # "spmPageId":Ljava/lang/String;
    :cond_f
    return-void

    .line 1611
    :cond_10
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v9, v30

    move-object/from16 v16, v10

    .end local v10    # "param4Obj":Ljava/lang/Object;
    .local v16, "param4Obj":Ljava/lang/Object;
    move/from16 v10, v32

    move-object/from16 v17, v11

    .end local v11    # "actionId":Ljava/lang/String;
    .local v17, "actionId":Ljava/lang/String;
    invoke-direct/range {v1 .. v11}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1614
    return-void

    .line 1545
    .end local v0    # "type":Ljava/lang/String;
    .end local v16    # "param4Obj":Ljava/lang/Object;
    .end local v17    # "actionId":Ljava/lang/String;
    .end local v33    # "ucId":Ljava/lang/String;
    .end local v34    # "param1":Ljava/lang/String;
    .end local v35    # "param2":Ljava/lang/String;
    .end local v36    # "param3":Ljava/lang/String;
    .end local v37    # "param4":Ljava/lang/String;
    .restart local v11    # "actionId":Ljava/lang/String;
    :cond_11
    move-object/from16 v17, v11

    .line 1546
    .end local v11    # "actionId":Ljava/lang/String;
    .restart local v17    # "actionId":Ljava/lang/String;
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "param == null || remoteLogCount over limit, remoteLogCount : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    return-void

    .line 1506
    .end local v13    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "maxCount":Z
    .end local v15    # "seedId":Ljava/lang/String;
    .end local v17    # "actionId":Ljava/lang/String;
    .end local v28    # "spm":Ljava/lang/String;
    .end local v29    # "abTestInfo":Ljava/lang/String;
    .end local v30    # "bizType":Ljava/lang/String;
    .end local v31    # "extLogInfoS":Ljava/lang/String;
    .end local v32    # "logLevel":I
    :cond_12
    :goto_6
    return-void
.end method

.method private h()V
    .locals 15

    .line 1145
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    if-nez v0, :cond_0

    .line 1146
    return-void

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logPageAbnormal "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LoggerPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 1150
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1151
    .local v3, "url":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "about:blank"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 1154
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    if-nez v1, :cond_2

    .line 1155
    return-void

    .line 1158
    :cond_2
    const/4 v1, 0x0

    .line 1159
    .local v1, "errorType":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1160
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    goto :goto_1

    .line 1161
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v4

    const/16 v5, 0x190

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v4

    if-lt v4, v5, :cond_4

    goto :goto_0

    .line 1163
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v4

    const/16 v5, 0xd

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1164
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v4

    const/16 v5, 0x1b58

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1165
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v4

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1166
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getErrorCode()I

    move-result v4

    const/4 v5, 0x6

    if-gt v4, v5, :cond_7

    .line 1167
    :cond_5
    const-string v1, "errorRequest"

    goto :goto_1

    .line 1162
    :cond_6
    :goto_0
    const-string v1, "errorResponse"

    .line 1170
    :cond_7
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1171
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    nop

    .line 1172
    .local v4, "errorCode":Ljava/lang/String;
    const-string v5, "auto"

    .line 1174
    .local v5, "errorTrigger":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1175
    .local v6, "values":Ljava/util/Map;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    const-string v8, "errorTrigger"

    const-string v9, "errorCode"

    const-string v10, "errorType"

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1176
    const/4 v7, 0x0

    move-object v11, v2

    .local v7, "index":I
    :goto_3
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_a

    .line 1177
    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 1178
    .local v11, "object":Lcom/alibaba/fastjson/JSONObject;
    move-object v11, v12

    const-string v13, "name"

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1179
    .local v12, "name":Ljava/lang/String;
    const-string v13, "value"

    invoke-static {v11, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1180
    .local v13, "value":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1181
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1184
    .end local v7    # "index":I
    :cond_a
    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1185
    invoke-interface {v6, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    .line 1187
    :cond_b
    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1188
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    .line 1190
    :cond_c
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1191
    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljava/lang/String;

    .line 1193
    :cond_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1194
    const-string v1, "jsReport"

    .line 1198
    :cond_e
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-virtual {v7, v11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1199
    const-string v1, "mixedContent"

    .line 1202
    :cond_f
    const-string v0, "H5_PAGE_ABNORMAL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v7, "url"

    invoke-virtual {v0, v7, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getReferUrl()Ljava/lang/String;

    move-result-object v7

    const-string v11, "referer"

    invoke-virtual {v0, v11, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1204
    invoke-virtual {v0, v10, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v9, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1205
    invoke-virtual {v0, v8, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppear()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "startRender"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1206
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppearFromNative()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "startRenderFromNative"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1207
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "pageSize"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1208
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getHtmlSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "htmlSize"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1209
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1210
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getMultimediaID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "snapshotId"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1211
    const-string v8, "webViewErrorCode"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStringExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "wvErrorCode"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1212
    const-string v8, "webViewErrorDesc"

    invoke-virtual {v7, v8, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStringExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "wvErrorDesc"

    invoke-virtual {v0, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1213
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1214
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1215
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v7, "appId"

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1216
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    const-string v7, "version"

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1217
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPublicId()Ljava/lang/String;

    move-result-object v2

    const-string v7, "publicId"

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1218
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "appType"

    const/4 v8, 0x2

    invoke-static {v2, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_10

    const-string v2, "online"

    goto :goto_4

    :cond_10
    const-string v2, "local"

    :goto_4
    const-string v7, "psd"

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1219
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPerformanceDataMap(Lcom/alipay/mobile/h5container/api/H5PageData;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 1220
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->getStopLoadingTime()J

    move-result-wide v7

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {v7, v8, v2, v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLcom/alipay/mobile/h5container/api/H5PageData;Lcom/alipay/mobile/h5container/api/H5AvailablePageData;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "stopLoading"

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 1221
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;->getStopLoadingTimeWithLoc()J

    move-result-wide v7

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-static {v7, v8, v2, v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->getCorrectStopLoading(JLcom/alipay/mobile/h5container/api/H5PageData;Lcom/alipay/mobile/h5container/api/H5AvailablePageData;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "stopLoadingWithoutLocating"

    invoke-virtual {v0, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 1223
    .local v0, "abnormalData":Lcom/alipay/mobile/nebula/log/H5LogData;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsTinyApp()Ljava/lang/String;

    move-result-object v2

    const-string v7, "YES"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1224
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/log/H5Logger;->getDslVersion(Lcom/alipay/mobile/h5container/api/H5PageData;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dslVersion"

    invoke-virtual {v2, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1227
    :cond_11
    const-string v2, "mixedContent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d:Ljava/util/HashMap;

    if-eqz v7, :cond_12

    .line 1228
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1229
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1232
    :cond_12
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavigationStart()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_13

    .line 1233
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getNavigationStart()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "navigationStart"

    invoke-virtual {v2, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1237
    :cond_13
    const-string v2, "h5_ucNetConfig"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 1238
    .local v2, "ucNetConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "NO"

    .line 1239
    .local v7, "useAliNet":Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 1240
    const-string v8, "useAlipayNet"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1242
    :cond_14
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1244
    .local v8, "spdy":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v10}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "type"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 1245
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    const-string v11, "charset"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 1246
    const-string v10, "refViewID"

    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "viewId"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 1247
    const-string v10, "viewID"

    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "refviewId"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 1248
    const-string v10, "isAlipayNetwork"

    invoke-virtual {v9, v10, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    .line 1249
    const-string v10, "SPDY"

    invoke-virtual {v9, v10, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "end"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1250
    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getIsLocal()Ljava/lang/String;

    move-result-object v10

    const-string v11, "isLocal"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->c:Ljava/util/HashMap;

    .line 1251
    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1252
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v9, :cond_15

    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 1253
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v10}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v10

    invoke-interface {v10}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v10

    const-string v11, "webViewVersion"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1255
    :cond_15
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1258
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAppxSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "appxVersion"

    invoke-virtual {v9, v11, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1260
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1261
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 1262
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->upload()V

    .line 1264
    :cond_16
    return-void

    .line 1152
    .end local v0    # "abnormalData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v1    # "errorType":Ljava/lang/String;
    .end local v2    # "ucNetConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "errorCode":Ljava/lang/String;
    .end local v5    # "errorTrigger":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/Map;
    .end local v7    # "useAliNet":Ljava/lang/String;
    .end local v8    # "spdy":Ljava/lang/String;
    :cond_17
    :goto_5
    return-void
.end method

.method private h(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 527
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->c()V

    .line 528
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .line 1690
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->s:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->getUniteParam4(Lcom/alipay/mobile/h5container/api/H5PageData;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "value"

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MONITOR_PERFORMANCE : praram = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5LoggerPlugins"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 573
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 574
    .local v4, "pagePerformance":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 575
    const/4 v2, 0x0

    move-object v5, v3

    .local v2, "index":I
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 577
    :try_start_0
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 578
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v6

    const-string v7, "name"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, "name":Ljava/lang/String;
    const-string v7, "mixedContent"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 580
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 581
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 583
    :cond_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->o:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v7, "availableTime"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v7, :cond_1

    .line 587
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 588
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v7

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_PAGE_BIZREADY:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 591
    .end local v5    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    invoke-direct {p0, v3, v6}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_1

    .line 593
    :catchall_0
    move-exception v3

    .line 594
    .local v3, "t":Ljava/lang/Throwable;
    const-string v6, "H5LoggerPlugin"

    const-string v7, "handleMonitorPerformance error!"

    invoke-static {v6, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    .end local v2    # "index":I
    .end local v4    # "pagePerformance":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->l:Z

    .line 600
    return-void
.end method

.method private j(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 696
    const-string v0, "H5_AL_PAY_START"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 699
    const-string v1, "tradeNo"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 700
    const-string v1, "partnerId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "partner"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 701
    const-string v1, "bizType"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 702
    const-string v1, "bizSubType"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 703
    const-string v1, "bizContext"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 704
    const-string v1, "shouldDisplayResultPage"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 705
    const-string v1, "bzContext"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 706
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 707
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 709
    return-void
.end method

.method private k(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 712
    const-string v0, "H5_AL_PAY_RESULT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 715
    const-string v1, "tradeNo"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 716
    const-string v1, "partnerId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "partner"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 717
    const-string v1, "bizType"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 718
    const-string v1, "bizSubType"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 719
    const-string v1, "bizContext"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 720
    const-string v1, "shouldDisplayResultPage"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 721
    const-string v1, "bzContext"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 722
    const-string v2, "resultCode"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 723
    const-string v3, "callbackUrl"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 724
    const-string v3, "resultStatus"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 725
    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 726
    const-string v2, "errorMessage"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->g:Ljava/lang/String;

    .line 727
    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "orderStr"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 728
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 729
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 731
    return-void
.end method

.method private l(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 13
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 749
    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 750
    .local v1, "errorCode":I
    const-string v2, "url"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, "url":Ljava/lang/String;
    const-string v4, "type"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 752
    .local v5, "type":Ljava/lang/String;
    const-string v6, "networkType"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 753
    .local v7, "networkType":Ljava/lang/String;
    const-string v8, "deviceInfo"

    invoke-static {p1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 755
    .local v9, "deviceInfo":Ljava/lang/String;
    const-string v10, "about:blank"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 756
    const-string v10, "H5_AL_PAGE_LOAD_FAIL"

    invoke-static {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    sget-object v11, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    .line 757
    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v12}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    .line 758
    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "error"

    invoke-virtual {v10, v12, v11}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    .line 759
    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 760
    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v8, v9}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 762
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 764
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 19
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "version"

    const-string v3, "appId"

    .line 962
    const/4 v4, 0x0

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object/from16 v3, p2

    goto/16 :goto_6

    .line 965
    :cond_0
    const/4 v5, 0x0

    .line 966
    .local v5, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v6

    instance-of v6, v6, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v6, :cond_1

    .line 967
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 970
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 971
    .local v6, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 972
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    if-nez v5, :cond_2

    .line 973
    return v4

    .line 975
    :cond_2
    const-string v8, "reportData"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " token:"

    const-string v10, " chInfo:"

    const-string v11, " spmBizType:"

    const-string v12, "H5LoggerPlugin"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v8, :cond_7

    .line 976
    const-string v0, "spm"

    invoke-static {v7, v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v14

    .line 977
    .local v3, "spmJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 978
    const-string v0, "spmId"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    .line 979
    const-string v0, "bizType"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    .line 980
    const-string v0, "abTestInfo"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->x:Ljava/lang/String;

    .line 981
    const-string v0, "chInfo"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    .line 982
    const-string v0, "isSPM"

    invoke-static {v3, v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->A:Z

    .line 983
    const-string v0, "url"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->w:Ljava/lang/String;

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "logPageStartWithSpmId spmId:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 988
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isSPM:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->A:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " spmUrl:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->w:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " abTestInfo:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 993
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 994
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f()V

    .line 997
    :cond_4
    const-string v0, "spmDetail"

    invoke-static {v7, v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v4, v14

    .line 998
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 999
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v8, v14

    .line 1000
    .local v8, "keys":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1001
    .local v9, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1003
    :try_start_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1004
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 1005
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1006
    .local v10, "value":Ljava/lang/String;
    iget-object v11, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->B:Ljava/util/Map;

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1008
    .end local v0    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1009
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    goto :goto_0

    .line 1015
    .end local v8    # "keys":Ljava/util/Set;
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 1016
    return v13

    .line 1017
    .end local v3    # "spmJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    const-string v8, "mtBizReport"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1018
    const-string v4, "bizName"

    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1019
    .local v4, "bizName":Ljava/lang/String;
    const-string v8, "subName"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1020
    .local v8, "subName":Ljava/lang/String;
    const-string v9, "failCode"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1021
    .local v9, "failCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1022
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto/16 :goto_3

    .line 1026
    :cond_8
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1027
    .local v10, "map":Ljava/util/Map;
    const-string v11, "extParams"

    invoke-static {v7, v11, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    move-object v15, v14

    .line 1028
    .local v15, "extParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v15, v11

    if-eqz v11, :cond_a

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 1029
    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 1030
    .local v14, "keys":Ljava/util/Set;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1031
    .local v11, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1032
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 1033
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v13, v17

    .end local v17    # "key":Ljava/lang/String;
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1034
    .local v18, "value":Ljava/lang/String;
    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .end local v18    # "value":Ljava/lang/String;
    .local v11, "value":Ljava/lang/String;
    .local v17, "it":Ljava/util/Iterator;
    invoke-interface {v10, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    move-object/from16 v11, v17

    const/4 v13, 0x1

    .end local v11    # "value":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    goto :goto_2

    .line 1031
    .end local v17    # "it":Ljava/util/Iterator;
    .local v11, "it":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v17, v11

    .line 1037
    .end local v11    # "it":Ljava/util/Iterator;
    .end local v14    # "keys":Ljava/util/Set;
    :cond_a
    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1038
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :cond_b
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1041
    nop

    .line 1042
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v11, "appVersion"

    invoke-static {v3, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1041
    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_c
    invoke-static {v4, v8, v9, v10}, Lcom/alipay/mobile/nebula/log/H5Logger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1045
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1049
    .end local v10    # "map":Ljava/util/Map;
    .end local v15    # "extParams":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v3, p2

    goto :goto_4

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v3, p2

    goto :goto_4

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_3
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v3, p2

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 1051
    :goto_4
    const/4 v10, 0x1

    return v10

    .line 1052
    .end local v4    # "bizName":Ljava/lang/String;
    .end local v8    # "subName":Ljava/lang/String;
    .end local v9    # "failCode":Ljava/lang/String;
    :cond_e
    move-object/from16 v3, p2

    const-string v0, "pageMonitor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1053
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v4, "actionType"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "actionType":Ljava/lang/String;
    const-string v4, "reset"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "pageMonitor jsapi logPageEndWithSpmId "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1056
    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1055
    invoke-static {v12, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 1058
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_5

    .line 1059
    :cond_f
    const-string v4, "end"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1060
    const-string v4, "pageMonitor jsapi logPageEndWithSpmId end"

    invoke-static {v12, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 1063
    :cond_10
    :goto_5
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 1064
    const/4 v8, 0x1

    return v8

    .line 1065
    .end local v0    # "actionType":Ljava/lang/String;
    :cond_11
    const/4 v8, 0x1

    const-string v0, "monitorH5Performance"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1066
    invoke-direct {v1, v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1067
    return v8

    .line 1069
    :cond_12
    return v4

    .line 962
    .end local v5    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_13
    move-object/from16 v3, p2

    .line 963
    :goto_6
    return v4
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 161
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b:Z

    .line 163
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 165
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 169
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b:Z

    const-string v4, "isH5Activity"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->putBooleanExtra(Ljava/lang/String;Z)V

    .line 170
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->s:Z

    const-string v4, "isOfflineApp"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->putBooleanExtra(Ljava/lang/String;Z)V

    .line 171
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 172
    const-string v2, "h5ToolbarBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 173
    const-string v2, "H5_TOOLBAR_BACK_BT"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_1
    const-string v2, "h5PageResume"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->c(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 176
    :cond_2
    const-string v2, "h5ToolbarClose"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    const-string v2, "H5_TOOLBAR_CLOSE_BT"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_3
    const-string v2, "h5ToolbarMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    const-string v2, "H5_TOOLBAR_MEMU"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_4
    const-string v2, "h5ToolbarMenuBt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "H5_TOOLBAR_MEMU_BT"

    invoke-direct {p0, v4, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_5
    const-string v2, "h5ToolbarReload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    const-string v2, "H5_TOOLBAR_REFRESH_BT"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_6
    const-string v2, "optionMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 185
    const-string v2, "H5_TITLEBAR_RIGHT_BT"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_7
    const-string v2, "subtitleClick"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 187
    const-string v2, "H5_TITLEBAR_SUBTITLE_BT"

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_8
    const-string v2, "h5PageStarted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 189
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v2

    return v2

    .line 190
    :cond_9
    const-string v2, "h5PageError"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 191
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->l(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 192
    :cond_a
    const-string v2, "h5PageClosed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 193
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 194
    :cond_b
    const-string v2, "H5_AL_PAY_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 195
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 196
    :cond_c
    const-string v2, "H5_AL_PAY_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 197
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 198
    :cond_d
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_TIME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "url"

    if-eqz v2, :cond_e

    .line 199
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_TIME:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 199
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 202
    :cond_e
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "result"

    const/4 v7, 0x1

    if-eqz v2, :cond_f

    .line 203
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_RESULT:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "finalUrl"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 207
    return v7

    .line 208
    :cond_f
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_SHARE_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 209
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->g(Lcom/alibaba/fastjson/JSONObject;)V

    .line 210
    return v7

    .line 211
    :cond_10
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_FAVORITES_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 212
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f(Lcom/alibaba/fastjson/JSONObject;)V

    .line 213
    return v7

    .line 214
    :cond_11
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_LONG_CLICK:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 215
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_LONG_CLICK:Ljava/lang/String;

    const-string v3, "itemName"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return v7

    .line 217
    :cond_12
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_OPEN_IN_BROWSER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 218
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_OPEN_IN_BROWSER:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return v7

    .line 220
    :cond_13
    const-string v2, "setClipboard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 221
    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return v7

    .line 223
    :cond_14
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FROM_NATIVE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 224
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h(Lcom/alibaba/fastjson/JSONObject;)V

    .line 225
    return v7

    .line 226
    :cond_15
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_TO_NATIVE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 227
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b()V

    .line 228
    return v7

    .line 229
    :cond_16
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRY_ERROR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 230
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRY_ERROR:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return v7

    .line 232
    :cond_17
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRYRPC_ERROR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "errorType"

    const-string v9, "errorCode"

    if-eqz v2, :cond_18

    .line 233
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRYRPC_ERROR:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "BizError"

    invoke-virtual {v2, v8, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 233
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 237
    return v7

    .line 238
    :cond_18
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_AUTOLOGIN:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 239
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_AUTOLOGIN:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/log/H5Logger;->MONITOR:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 242
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 239
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 244
    return v7

    .line 245
    :cond_19
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_PAY_BEFORE_INTERCEPT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 246
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_PAY_BEFORE_INTERCEPT:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v5, Lcom/alipay/mobile/nebula/log/H5Logger;->DIAGNOSE:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v4, "requestUrl"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 246
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 250
    return v3

    .line 251
    :cond_1a
    const-string v2, "H5_GETLOCATION_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 252
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e(Lcom/alibaba/fastjson/JSONObject;)V

    .line 253
    return v7

    .line 254
    :cond_1b
    const-string v2, "remoteLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 256
    return v7

    .line 257
    :cond_1c
    const-string v2, "remoteLogging"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 259
    return v7

    .line 260
    :cond_1d
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_NETWORK_PERFORMANCE_ERROR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 261
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d(Lcom/alibaba/fastjson/JSONObject;)V

    .line 262
    return v7

    .line 263
    :cond_1e
    const-string v2, "h5PageAbnormal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 264
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    if-eqz v2, :cond_1f

    .line 265
    return v7

    .line 267
    :cond_1f
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 268
    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    .line 269
    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    .line 272
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    move-object v3, v4

    .line 273
    .local v3, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    move-object v3, v2

    if-eqz v2, :cond_20

    .line 274
    nop

    .line 275
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Error_WebEngine:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->n:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->error(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_abnormalCode:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    iget v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->p:I

    .line 276
    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;I)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_abnormalMsg:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 277
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 279
    :cond_20
    return v7

    .line 280
    .end local v3    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :cond_21
    const-string v2, "reportH5Abnormal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 281
    if-eqz v1, :cond_22

    .line 282
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->e:Lcom/alibaba/fastjson/JSONArray;

    .line 283
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 285
    :cond_22
    return v7

    .line 286
    :cond_23
    const-string v2, "h5PageDownloadApk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 287
    const-string v2, "H5_AL_DOWNLOAD_APK"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "apkurl"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 289
    const-string v3, "contentLength"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getLong(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 290
    const-string v3, "inApkWhiteList"

    invoke-static {v1, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 287
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 292
    return v7

    .line 293
    :cond_24
    const-string v2, "h5PageInterceptScheme"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "type"

    if-eqz v2, :cond_25

    .line 294
    const-string v2, "H5_AL_INTERCEPT_SCHEME"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 296
    const-string v5, "scheme"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 297
    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 294
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 299
    :cond_25
    const-string v2, "h5PageQueryPP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 300
    const-string v2, "H5_AL_QUERY_PP"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v5, "queryUrl"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 302
    const-string v5, "queryParam"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 303
    const-string v5, "statusCode"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 300
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 305
    :cond_26
    const-string v2, "h5PageQueryPPCost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 306
    const-string v2, "H5_AL_QUERY_PP_COST"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v5, "httpcost"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 306
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 309
    :cond_27
    const-string v2, "h5PageJumpPP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 310
    const-string v2, "H5_AL_JUMP_PP"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v5, "detailUrl"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 312
    const-string v5, "origin"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 313
    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 314
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 310
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 315
    :cond_28
    const-string v2, "h5PageJumpPPDownload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 316
    const-string v2, "H5_AL_JUMP_PP_DOWNLOAD"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v5, "downloadUrl"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 318
    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 316
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 320
    :cond_29
    const-string v2, "h5PageJumpPPDownloadSuccess"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 321
    const-string v2, "H5_AL_JUMP_PP_DOWNLOAD_SUCCESS"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 321
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 324
    :cond_2a
    const-string v2, "H5_VC_OverLimit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 325
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v4, "urls"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "urls"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v4, "usedMemory"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "usedMemory"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 328
    const-string v4, "totalMemory"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "totalMemory"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 325
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 330
    :cond_2b
    const-string v2, "H5_AL_PAGE_RESUME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 331
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 331
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 333
    :cond_2c
    const-string v2, "H5_DOWNLOAD_APK_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 334
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->c(Lcom/alibaba/fastjson/JSONObject;)V

    .line 335
    return v7

    .line 336
    :cond_2d
    const-string v2, "H5_FILE_DOWNLOAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 337
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->b(Lcom/alibaba/fastjson/JSONObject;)V

    .line 338
    return v7

    .line 339
    :cond_2e
    const-string v2, "H5_PAGE_JSAPI_LOGIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 340
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 341
    return v7

    .line 342
    :cond_2f
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_GETSHARECONTENT_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 343
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_GETSHARECONTENT_RESULT:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v5, "content"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 343
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    goto/16 :goto_0

    .line 347
    :cond_30
    const-string v2, "h5PagePause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 348
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_0

    .line 349
    :cond_31
    const-string v2, "h5PageBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "H5_PAGE_BACK logPageEndWithSpmId "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->t:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " spmBizType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->u:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " chInfo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->v:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " token:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 351
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    const-string v4, "H5LoggerPlugin"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 354
    :cond_32
    const-string v2, "keepAlivePagePerformance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 355
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->q:Z

    .line 357
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_33

    .line 358
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v4

    .line 359
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const-string v4, "fromKeepAlive"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FROM_NATIVE:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 362
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_33
    return v7

    .line 363
    :cond_34
    const-string v2, "dslErrorLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 364
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a()V

    .line 365
    return v7

    .line 366
    :cond_35
    const-string v2, "disablePageMonitor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 367
    const-string v2, "disable"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "disable":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->F:Z

    .line 369
    return v7

    .line 371
    .end local v2    # "disable":Ljava/lang/String;
    :cond_36
    :goto_0
    return v3
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 4
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 129
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "param":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->h:Ljava/lang/String;

    .line 131
    const-string v1, "safePayContext"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->g:Ljava/lang/String;

    .line 132
    const-string v1, "bizScenario"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i:Ljava/lang/String;

    .line 133
    const-string v1, "offlineHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->s:Z

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->k:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->m:Z

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->o:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->i:Ljava/lang/String;

    sput-object v2, Lcom/alipay/mobile/nebula/log/H5Logger;->bizScenario:Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->c:Ljava/util/HashMap;

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->d:Ljava/util/HashMap;

    .line 141
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v2, v3, :cond_0

    .line 143
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v3, "AndroidWebView"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setWebViewType(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v2, v3, :cond_1

    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v3, "UCWebView"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setWebViewType(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v2, v3, :cond_2

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->j:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v3, "RNView"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setWebViewType(Ljava/lang/String;)V

    .line 150
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5LogHandler()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->C:Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 151
    iput v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->a:I

    .line 152
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 1620
    const-string v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1621
    const-string v0, "h5ToolbarClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1622
    const-string v0, "h5ToolbarMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1623
    const-string v0, "h5ToolbarReload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1624
    const-string v0, "h5ToolbarMenuBt"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1627
    const-string v0, "optionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1628
    const-string v0, "subtitleClick"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1631
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1632
    const-string v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1633
    const-string v0, "h5PageError"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1634
    const-string v0, "pushWindow"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1635
    const-string v0, "h5PageAbnormal"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1637
    const-string v0, "H5_AL_PAY_RESULT"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1638
    const-string v0, "H5_AL_PAY_START"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1639
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_TIME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1640
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_TAOBAOSSO_RESULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1641
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_SHARE_RESULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1642
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_FAVORITES_RESULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1643
    const-string v0, "h5PageCreateWebView"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1645
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FROM_NATIVE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1646
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_TO_NATIVE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1648
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRY_ERROR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1649
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRYRPC_ERROR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1650
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_AUTOLOGIN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1651
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_NETWORK_PERFORMANCE_ERROR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1652
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_PAY_BEFORE_INTERCEPT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1653
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SHARE_RESULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1654
    const-string v0, "H5_AL_PAGE_RESUME"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1656
    const-string v0, "H5_GETLOCATION_RESULT"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1658
    const-string v0, "remoteLog"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1659
    const-string v0, "remoteLogging"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1661
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_LONG_CLICK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1662
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_OPEN_IN_BROWSER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1663
    const-string v0, "reportH5Abnormal"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1664
    const-string v0, "monitorH5Performance"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1665
    const-string v0, "h5PageDownloadApk"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1666
    const-string v0, "h5PageInterceptScheme"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1667
    const-string v0, "h5PageQueryPP"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1668
    const-string v0, "h5PageQueryPPCost"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1669
    const-string v0, "h5PageJumpPP"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1670
    const-string v0, "h5PageJumpPPDownload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1671
    const-string v0, "h5PageJumpPPDownloadSuccess"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1672
    const-string v0, "H5_DOWNLOAD_APK_RESULT"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1673
    const-string v0, "H5_FILE_DOWNLOAD"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1674
    const-string v0, "H5_PAGE_JSAPI_LOGIN"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1675
    const-string v0, "H5_VC_OverLimit"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1676
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_GETSHARECONTENT_RESULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1677
    const-string v0, "h5PagePause"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1678
    const-string v0, "reportData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1679
    const-string v0, "mtBizReport"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1680
    const-string v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1682
    const-string v0, "pageMonitor"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    const-string v0, "h5PageResume"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1684
    const-string v0, "keepAlivePagePerformance"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1685
    const-string v0, "dslErrorLog"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1686
    const-string v0, "disablePageMonitor"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;->f:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 157
    return-void
.end method
