.class public Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;
.super Ljava/lang/Object;
.source "AlipayNetwork.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetwork;


# static fields
.field public static final TAG:Ljava/lang/String; = "AlipayNetwork"

.field private static mEnableUploadNetInfoUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

.field private static mRequestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sCDNSafeGuardHostList:Lcom/alibaba/fastjson/JSONArray;

.field private static sEnableExtensionForEdge:Z

.field private static sEnableIframeIntercept:Z

.field static sEnableSendErrorToUcWhenException:Z

.field static sEnableUploadNetInfoWhenError:Z

.field static sEnableUploadNetInfoWhenSuccess:Z

.field private static sHighPriorityAppIdList:Lcom/alibaba/fastjson/JSONArray;

.field private static sHighPriorityUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

.field private static sHttp2HostList:Lcom/alibaba/fastjson/JSONArray;

.field private static sIframeInterceptRules:Lcom/alibaba/fastjson/JSONArray;

.field private static sIframeInterceptRulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

.field static sInterceptInvalidDomain:Z

.field private static sSubResInSecBlackList1:Lcom/alibaba/fastjson/JSONArray;

.field private static sSubResInSecBlackList2:Lcom/alibaba/fastjson/JSONArray;


# instance fields
.field private forceHostList:Lcom/alibaba/fastjson/JSONArray;

.field private h5NetworkManager:Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

.field private hasInit:Z

.field private hasSetAbroad:Z

.field private mBridgeThreadSize:I

.field private mDisableSpdyInScan:Ljava/lang/String;

.field private mEnableBridgeThread:Z

.field private mTinyResUseSpdyInHttps:Z

.field private mTinyResUseSpdyInHttpsList:Lcom/alibaba/fastjson/JSONArray;

.field private spdyBlackListV2:Lcom/alibaba/fastjson/JSONArray;

.field private spdySwitch:Z

.field private spdyWhiteListV2:Lcom/alibaba/fastjson/JSONArray;

.field private subResAppBlackList:Lcom/alibaba/fastjson/JSONArray;

.field private subResBlackList:Lcom/alibaba/fastjson/JSONArray;

.field private subResTypeList:Lcom/alibaba/fastjson/JSONArray;

.field private useSpdy:Z

.field private useSpdyInHttps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sInstance:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    .line 90
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableIframeIntercept:Z

    .line 91
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRules:Lcom/alibaba/fastjson/JSONArray;

    .line 92
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRulesMap:Ljava/util/Map;

    .line 94
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mRequestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableSendErrorToUcWhenException:Z

    .line 99
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableUploadNetInfoWhenError:Z

    .line 101
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableUploadNetInfoWhenSuccess:Z

    .line 105
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sInterceptInvalidDomain:Z

    .line 107
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableExtensionForEdge:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mEnableBridgeThread:Z

    .line 55
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasInit:Z

    .line 56
    const/4 v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mBridgeThreadSize:I

    .line 68
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasSetAbroad:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mDisableSpdyInScan:Ljava/lang/String;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mTinyResUseSpdyInHttps:Z

    .line 73
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mTinyResUseSpdyInHttpsList:Lcom/alibaba/fastjson/JSONArray;

    .line 110
    sput-object p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sInstance:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    .line 45
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    return v0
.end method

.method static canUploadNetInfo(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 667
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mEnableUploadNetInfoUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mEnableUploadNetInfoUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 671
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mEnableUploadNetInfoUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "urlRegex":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUploadNetInfo for url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlipayNetwork"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/4 v2, 0x1

    return v2

    .line 670
    .end local v1    # "urlRegex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 574
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 575
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 578
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;
    .locals 1

    .line 115
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sInstance:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    return-object v0
.end method

.method private static getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 582
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 583
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 586
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 2

    .line 324
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 325
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 327
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v1, :cond_0

    .line 328
    return-object v1

    .line 331
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleMainFrame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 335
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "host":Ljava/lang/String;
    const-string v1, "AlipayNetwork"

    if-nez v0, :cond_0

    .line 337
    const-string v2, "handleMainFrame host == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyWhiteListV2:Lcom/alibaba/fastjson/JSONArray;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyWhiteListV2:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 345
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyWhiteListV2:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "whiteItem":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 347
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUrlMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 349
    const-string v5, "spdyWhiteListV2 match"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    goto :goto_1

    .line 344
    .end local v4    # "whiteItem":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyBlackListV2:Lcom/alibaba/fastjson/JSONArray;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 357
    const/4 v2, 0x0

    .line 358
    .restart local v2    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyBlackListV2:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 359
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyBlackListV2:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "blackItem":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 361
    invoke-static {v5, v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUrlMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 362
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 363
    const-string v6, "spdyBlackListV2 match"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    goto :goto_3

    .line 358
    .end local v5    # "blackItem":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    .end local v2    # "i":I
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .line 371
    .local v2, "isMatchForceHostList":Z
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, "i":I
    :goto_4
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 374
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "whiteItem":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 376
    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUrlMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 377
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 378
    const/4 v2, 0x1

    .line 379
    const-string v7, "forceHostList match"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    goto :goto_5

    .line 373
    .end local v6    # "whiteItem":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 387
    .end local v5    # "i":I
    :cond_6
    :goto_5
    const-string v5, "https"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdyInHttps:Z

    if-nez v6, :cond_8

    .line 388
    if-eqz v2, :cond_7

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    if-eqz v6, :cond_7

    .line 389
    const-string v6, "handleMainFrame pass https"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    goto :goto_6

    .line 392
    :cond_7
    const-string v3, "handleMainFrame forbid https"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 397
    :cond_8
    :goto_6
    sget-boolean v3, Lcom/alipay/mobile/h5container/api/H5Flag;->isInChane:Z

    if-nez v3, :cond_9

    .line 398
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasSetAbroad:Z

    if-nez v3, :cond_9

    if-nez v2, :cond_9

    .line 399
    const-string v3, "formatRequest !hasSetAbroad"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 403
    :cond_9
    if-nez v2, :cond_a

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mDisableSpdyInScan:Ljava/lang/String;

    const-string v6, "YES"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 404
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->isFirstMainDocFromScan(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 405
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 406
    const-string v3, "formatRequest not use spdy for first url open by scan"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_a
    return-void
.end method

.method private handleSubRes(Ljava/util/Map;Ljava/lang/String;)V
    .locals 12
    .param p1, "headers"    # Ljava/util/Map;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 411
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "host":Ljava/lang/String;
    const-string v1, "AlipayNetwork"

    if-nez v0, :cond_0

    .line 413
    const-string v2, "handleSubRes host == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void

    .line 417
    :cond_0
    const/4 v2, 0x0

    .line 418
    .local v2, "ifSpecialXHRHeader":Z
    const/4 v3, 0x0

    .line 419
    .local v3, "refererHost":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 420
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 421
    .local v5, "key":Ljava/lang/String;
    const-string v6, "referer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 423
    .local v6, "referer":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .end local v6    # "referer":Ljava/lang/String;
    :cond_1
    const-string v6, "X-Requested-With"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 426
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 427
    .local v6, "specialXHRHeaderValue":Ljava/lang/String;
    const-string v7, "XMLHttpRequest"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 429
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "specialXHRHeaderValue":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 431
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ifSpecialXHRHeader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-nez v3, :cond_4

    .line 433
    const-string v4, "handleSubRes refererHost == null"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void

    .line 436
    :cond_4
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->isInsMainDocSpdyTable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 437
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "scheme":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResTypeList:Lcom/alibaba/fastjson/JSONArray;

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 439
    const/4 v5, 0x0

    .line 440
    .local v5, "i":I
    :goto_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResTypeList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 441
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResTypeList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "subResTypeItem":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 443
    invoke-static {p2}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->getUrlWithOutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, "urlWithoutQuery":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 445
    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 446
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 447
    :cond_5
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 448
    const-string v9, "subResTypeList match"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    goto :goto_2

    .line 440
    .end local v7    # "subResTypeItem":Ljava/lang/String;
    .end local v8    # "urlWithoutQuery":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 455
    .end local v5    # "i":I
    :cond_7
    :goto_2
    const/4 v5, 0x0

    .line 456
    .local v5, "isMatchBlackList":Z
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResBlackList:Lcom/alibaba/fastjson/JSONArray;

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 457
    const/4 v7, 0x0

    .line 458
    .local v7, "i":I
    :goto_3
    iget-object v9, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResBlackList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_9

    .line 459
    iget-object v9, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResBlackList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, "subResBlackItem":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 461
    invoke-static {v9, v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUrlMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 462
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 463
    const/4 v5, 0x1

    .line 464
    const-string v10, "subResBlackList match"

    invoke-static {v1, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    goto :goto_4

    .line 458
    .end local v9    # "subResBlackItem":Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 472
    .end local v7    # "i":I
    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResTypeList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 473
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResTypeList:Lcom/alibaba/fastjson/JSONArray;

    const-string v9, "ajax"

    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    if-nez v5, :cond_a

    .line 474
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 475
    const-string v7, "ifSpecialXHRHeader match"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_a
    const/4 v7, 0x0

    .line 480
    .local v7, "isMatchForceHostList":Z
    iget-object v9, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 481
    const/4 v9, 0x0

    .line 482
    .local v9, "i":I
    :goto_5
    iget-object v10, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 483
    iget-object v10, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v10, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 484
    .local v10, "whiteItem":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 485
    invoke-static {v10, v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUrlMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 486
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 487
    const/4 v7, 0x1

    .line 488
    const-string v11, "forceHostList match"

    invoke-static {v1, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    goto :goto_6

    .line 482
    .end local v10    # "whiteItem":Ljava/lang/String;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 495
    .end local v9    # "i":I
    :cond_c
    :goto_6
    const-string v9, "https"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdyInHttps:Z

    if-nez v9, :cond_e

    .line 496
    if-eqz v7, :cond_d

    iget-boolean v9, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    if-eqz v9, :cond_d

    .line 497
    const-string v8, "handleSubRes pass https"

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    goto :goto_7

    .line 500
    :cond_d
    const-string v6, "handleSubRes forbid https"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 505
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "isMatchBlackList":Z
    .end local v7    # "isMatchForceHostList":Z
    :cond_e
    :goto_7
    return-void
.end method

.method private init()V
    .locals 16

    .line 119
    move-object/from16 v1, p0

    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasInit:Z

    if-eqz v0, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasInit:Z

    .line 124
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 125
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    invoke-direct {v3, v2}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->h5NetworkManager:Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    .line 126
    const-string v3, "h5_androidSpdyV2"

    .line 127
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 128
    .local v3, "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_1

    .line 129
    const-string v4, "YES"

    const-string v5, "useSpdy"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdySwitch:Z

    .line 132
    :cond_1
    const-string v4, "h5_networkBridgeThread"

    .line 133
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 134
    .local v4, "jsonObjNetworkBridge":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_2

    .line 135
    const-string v5, "enable"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mEnableBridgeThread:Z

    .line 136
    const-string v5, "size"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mBridgeThreadSize:I

    .line 137
    if-ge v5, v0, :cond_2

    .line 138
    iput v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mBridgeThreadSize:I

    .line 142
    :cond_2
    const-string v5, "AlipayNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "online config spdySwitch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdySwitch:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-boolean v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdySwitch:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    .line 145
    const-string v5, "whiteList"

    invoke-static {v3, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyWhiteListV2:Lcom/alibaba/fastjson/JSONArray;

    .line 146
    const-string v5, "blackList"

    invoke-static {v3, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyBlackListV2:Lcom/alibaba/fastjson/JSONArray;

    .line 147
    const-string v5, "subrestype"

    invoke-static {v3, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResTypeList:Lcom/alibaba/fastjson/JSONArray;

    .line 148
    const-string v5, "bsubreshost"

    invoke-static {v3, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 149
    const-string v5, "tinybsubresappid"

    invoke-static {v3, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResAppBlackList:Lcom/alibaba/fastjson/JSONArray;

    .line 150
    const-string v5, "forcehosts"

    invoke-static {v3, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    .line 151
    const-string v5, "T"

    const-string v8, "useSpdyInHttps"

    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdyInHttps:Z

    .line 152
    const-string v5, "abroad"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "aboardSwitch":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "T"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 154
    iput-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasSetAbroad:Z

    goto :goto_0

    .line 156
    :cond_3
    iput-boolean v6, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasSetAbroad:Z

    .line 158
    :goto_0
    const-string v8, "AlipayNetwork"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "online config spdyWhiteListV2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyWhiteListV2:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_4

    .line 159
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    const-string v10, "null"

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", spdyBlackListV2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->spdyBlackListV2:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_5

    .line 160
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_5
    const-string v10, "null"

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", hasSetAbroad "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->hasSetAbroad:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", subResTypeList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResTypeList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_6

    .line 162
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_6
    const-string v10, "null"

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", subResBlackList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResBlackList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_7

    .line 164
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    const-string v10, "null"

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", subResAppBlackList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->subResAppBlackList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_8

    .line 165
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_8
    const-string v10, "null"

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", forceHostList "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->forceHostList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_9

    .line 167
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_9
    const-string v10, "null"

    :goto_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", useSpdyInHttps "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdyInHttps:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v5    # "aboardSwitch":Ljava/lang/String;
    :cond_a
    const-string v5, "h5_http2HostList"

    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    sput-object v5, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHttp2HostList:Lcom/alibaba/fastjson/JSONArray;

    .line 172
    const-string v5, "h5_networkChannel"

    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 173
    .local v5, "networkChannel":Lcom/alibaba/fastjson/JSONObject;
    const-string v8, "hpappid"

    invoke-static {v5, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    sput-object v8, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityAppIdList:Lcom/alibaba/fastjson/JSONArray;

    .line 174
    const-string v8, "hpurl"

    invoke-static {v5, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    sput-object v8, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    .line 176
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v8

    if-nez v8, :cond_b

    .line 177
    invoke-static {}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    .line 180
    :cond_b
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 181
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 182
    .local v8, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v8, :cond_12

    .line 184
    const-string v9, "h5_enableSendErrorToUcWhenException"

    new-instance v10, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$1;

    invoke-direct {v10, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;)V

    invoke-interface {v8, v9, v10}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "value":Ljava/lang/String;
    const-string v10, "no"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v10, 0x1

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    sput-boolean v10, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableSendErrorToUcWhenException:Z

    .line 194
    const-string v10, "h5_netstatlog"

    invoke-interface {v8, v10}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 195
    .local v10, "netStatLog":Lcom/alibaba/fastjson/JSONObject;
    const-string v11, "no"

    const-string v12, "errswitch"

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    const/4 v11, 0x1

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    sput-boolean v11, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableUploadNetInfoWhenError:Z

    .line 196
    const-string v11, "yes"

    const-string v12, "switch"

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableUploadNetInfoWhenSuccess:Z

    .line 197
    const-string v11, "url"

    invoke-static {v10, v11, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v11

    sput-object v11, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mEnableUploadNetInfoUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    .line 199
    const-string v11, "no"

    const-string v12, "h5_interceptInvalidDomain"

    invoke-interface {v8, v12}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    const/4 v11, 0x1

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    :goto_9
    sput-boolean v11, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sInterceptInvalidDomain:Z

    .line 201
    const-string v11, "h5_ResourceFilter1"

    invoke-interface {v8, v11}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 202
    .local v11, "resourceFilter1":Lcom/alibaba/fastjson/JSONObject;
    const-string v12, "h5_ResourceFilter2"

    invoke-interface {v8, v12}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 203
    .local v12, "resourceFilter2":Lcom/alibaba/fastjson/JSONObject;
    const-string v13, "blackList"

    invoke-static {v11, v13, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v13

    sput-object v13, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList1:Lcom/alibaba/fastjson/JSONArray;

    .line 204
    const-string v13, "blackList"

    invoke-static {v12, v13, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v13

    sput-object v13, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList2:Lcom/alibaba/fastjson/JSONArray;

    .line 205
    iget-object v13, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mDisableSpdyInScan:Ljava/lang/String;

    if-nez v13, :cond_f

    .line 206
    const-string v13, "h5_disableSPDYInScan"

    invoke-interface {v8, v13}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mDisableSpdyInScan:Ljava/lang/String;

    .line 209
    :cond_f
    const-string v13, "h5_iFrameValidConfig"

    invoke-interface {v8, v13}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    .line 210
    .local v13, "iframeConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string v14, "enable"

    invoke-static {v13, v14, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableIframeIntercept:Z

    .line 211
    const-string v14, "rules"

    invoke-static {v13, v14, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    sput-object v14, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRules:Lcom/alibaba/fastjson/JSONArray;

    .line 212
    const-string v14, "h5_massProxyMainDocumentWhitelist"

    invoke-interface {v8, v14}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    sput-object v14, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sCDNSafeGuardHostList:Lcom/alibaba/fastjson/JSONArray;

    .line 214
    const-string v14, "h5_tinyResUseSpdy"

    invoke-interface {v8, v14}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 215
    .local v14, "tinyResUseSpdy":Lcom/alibaba/fastjson/JSONObject;
    const-string v15, "NO"

    const-string v0, "useSpdyInHttps"

    invoke-static {v14, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    iput-boolean v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mTinyResUseSpdyInHttps:Z

    .line 216
    const-string v0, "blackList"

    invoke-static {v14, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mTinyResUseSpdyInHttpsList:Lcom/alibaba/fastjson/JSONArray;

    .line 217
    const-string v0, "NO"

    const-string v7, "h5_enableExtensionForEdge"

    invoke-interface {v8, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableExtensionForEdge:Z

    .line 221
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "jsonObjNetWork":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "jsonObjNetworkBridge":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "networkChannel":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "netStatLog":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "resourceFilter1":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "resourceFilter2":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "iframeConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "tinyResUseSpdy":Lcom/alibaba/fastjson/JSONObject;
    :cond_12
    monitor-exit p0

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isEnableExtensionForEdge()Z
    .locals 1

    .line 827
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableExtensionForEdge:Z

    return v0
.end method

.method static isHighPriority(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .line 624
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->isHighPriorityApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->isHighPriorityUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isHighPriorityApp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "appId"    # Ljava/lang/String;

    .line 631
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AlipayNetwork"

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityAppIdList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityAppIdList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 633
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityAppIdList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "hAppId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "is high priority app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v1, 0x1

    return v1

    .line 632
    .end local v2    # "hAppId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is not high priority app"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method private static isHighPriorityUrl(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 649
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 651
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 653
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHighPriorityUrlRegexList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "urlRegex":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "is high priority url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlipayNetwork"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v2, 0x1

    return v2

    .line 652
    .end local v1    # "urlRegex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isUseHttp2(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 603
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 604
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "isUseHttp2, "

    const-string v2, "AlipayNetwork"

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHttp2HostList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHttp2HostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 606
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sHttp2HostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "host":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", use http2"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v1, 0x1

    return v1

    .line 605
    .end local v3    # "host":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", not use http2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldEnableCDNSafeGuard(ZLcom/alipay/mobile/h5container/api/H5PageData;Ljava/lang/String;)Z
    .locals 6
    .param p0, "isMainDoc"    # Z
    .param p1, "pageData"    # Lcom/alipay/mobile/h5container/api/H5PageData;
    .param p2, "url"    # Ljava/lang/String;

    .line 791
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 792
    const/4 v1, 0x0

    const-string v2, "X-CDN-Safeguard"

    invoke-virtual {p1, v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStringExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "afts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    return v0

    .line 796
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 797
    return v2

    .line 799
    :cond_1
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "host":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    return v2

    .line 804
    :cond_2
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sCDNSafeGuardHostList:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_4

    .line 805
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sCDNSafeGuardHostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 806
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sCDNSafeGuardHostList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 807
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 808
    return v0

    .line 805
    .end local v4    # "item":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 812
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method public static shouldInterceptIframeRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "mainDocUrl"    # Ljava/lang/String;
    .param p1, "iframeUrl"    # Ljava/lang/String;

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sEnableIframeIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 724
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 728
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRulesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRules:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRules:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 731
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRules:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 732
    .local v2, "item":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_1

    .line 733
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRulesMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->jsonToMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 730
    .end local v2    # "item":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sIframeInterceptRulesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 739
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 740
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 741
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 742
    .local v3, "iframeRegex":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 743
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 744
    goto :goto_1

    .line 746
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 747
    .local v5, "mainRegex":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 748
    invoke-static {v3, p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 749
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 750
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 751
    .local v7, "regexItem":Ljava/lang/String;
    invoke-static {v7, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 752
    return v1

    .line 749
    .end local v7    # "regexItem":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 755
    .end local v6    # "i":I
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptIframe, mainDocUrl : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", iframeUrl : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "AlipayNetwork"

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v1, 0x1

    return v1

    .line 760
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iframeRegex":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "mainRegex":Lcom/alibaba/fastjson/JSONArray;
    :cond_6
    goto :goto_1

    .line 761
    :cond_7
    return v1

    .line 725
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_8
    :goto_3
    return v1
.end method

.method public static shouldInterceptIframeRequestInTiny(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 5
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "url"    # Ljava/lang/String;

    .line 765
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "appid":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    .line 770
    .local v1, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    if-eqz v1, :cond_2

    .line 771
    invoke-interface {v1, v0, p0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 772
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 773
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, ""

    .line 774
    .local v3, "host":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 775
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 777
    :cond_1
    const-string v4, "validDomain"

    invoke-interface {v1, v0, v3, v4, p0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionOnIframe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    return v4

    .line 780
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "host":Ljava/lang/String;
    :cond_2
    return v2

    .line 767
    .end local v1    # "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :cond_3
    :goto_0
    return v2
.end method

.method public static shouldInterceptSubResRequestForSec(Ljava/lang/String;)Z
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .line 686
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 688
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 689
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList1:Lcom/alibaba/fastjson/JSONArray;

    const-string v1, " is in the sec black list!"

    const-string v2, "AlipayNetwork"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList1:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 691
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList1:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "urlItem":Ljava/lang/String;
    invoke-static {v4, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return v3

    .line 690
    .end local v4    # "urlItem":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList2:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 700
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList2:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 701
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sSubResInSecBlackList2:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 702
    .restart local v4    # "urlItem":Ljava/lang/String;
    invoke-static {v4, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return v3

    .line 700
    .end local v4    # "urlItem":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancelPrefetchLoad()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V

    .line 524
    return-void
.end method

.method public clearUserSslPrefTable()V
    .locals 0

    .line 528
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V

    .line 529
    return-void
.end method

.method public formatRequest(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Lcom/uc/webview/export/internal/interfaces/IRequest;
    .locals 24
    .param p1, "handler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isUCProxyReq"    # Z
    .param p5, "headers"    # Ljava/util/Map;
    .param p6, "ucHeaders"    # Ljava/util/Map;
    .param p7, "uploadFileMap"    # Ljava/util/Map;
    .param p8, "uploadDataMap"    # Ljava/util/Map;
    .param p9, "uploadFileTotalLen"    # J
    .param p11, "requestType"    # I
    .param p12, "loadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;JII)",
            "Lcom/uc/webview/export/internal/interfaces/IRequest;"
        }
    .end annotation

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 232
    .local v2, "elapsedRealtime":J
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 233
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 235
    .local v4, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V

    .line 237
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->containNebulaAddcors(Ljava/lang/String;)Z

    move-result v5

    .line 238
    .local v5, "checkCrossOrigin":Z
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 239
    .end local p2    # "url":Ljava/lang/String;
    .local v14, "url":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "formatRequest url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requestType is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p11

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", loadType is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p12

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "AlipayNetwork"

    invoke-static {v12, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v6, 0x0

    .line 242
    .local v6, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v11

    .line 244
    .local v11, "topH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static/range {p11 .. p11}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v18

    .line 245
    .local v18, "isMainDoc":Z
    if-eqz v18, :cond_0

    if-eqz v1, :cond_0

    .line 246
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->isPreDownloadEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 247
    invoke-static {v14, v11}, Lcom/alipay/mobile/nebulauc/impl/network/FallbackRequestHelper;->isFallbackRequest(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 248
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getInstance()Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/alipay/mobile/nebulauc/impl/network/H5PreConnectManager;->getRequest(Ljava/lang/String;)Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    move-result-object v6

    move-object v10, v6

    goto :goto_0

    .line 252
    :cond_0
    move-object v10, v6

    .end local v6    # "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .local v10, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    :goto_0
    const/4 v9, 0x1

    if-eqz v10, :cond_4

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get pre connect request for url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz v11, :cond_2

    .line 255
    invoke-interface {v11}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 256
    invoke-interface {v11}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUsePreRequest(Z)V

    .line 258
    :cond_1
    invoke-virtual {v10, v11}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->attachPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 260
    :cond_2
    invoke-virtual {v10, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V

    .line 261
    if-eqz v4, :cond_3

    if-eqz v11, :cond_3

    .line 262
    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequestFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v4, v11, v6}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 264
    :cond_3
    return-object v10

    .line 266
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v11, :cond_5

    if-eqz v18, :cond_5

    .line 267
    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_MainDocRequest:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v4, v11, v6, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 270
    :cond_5
    new-instance v19, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    move-object/from16 v6, v19

    move-object v7, v14

    move-object/from16 v8, p3

    move-wide/from16 v20, v2

    const/4 v2, 0x1

    .end local v2    # "elapsedRealtime":J
    .local v20, "elapsedRealtime":J
    move/from16 v9, p4

    move-object v3, v10

    .end local v10    # "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .local v3, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    move-object/from16 v10, p5

    move-object v2, v11

    .end local v11    # "topH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v2, "topH5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object/from16 v11, p6

    move-object/from16 v22, v3

    move-object v3, v12

    .end local v3    # "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .local v22, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v23, v14

    .end local v14    # "url":Ljava/lang/String;
    .local v23, "url":Ljava/lang/String;
    move-wide/from16 v14, p9

    move/from16 v16, p11

    move/from16 v17, p12

    invoke-direct/range {v6 .. v17}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)V

    .line 272
    .end local v22    # "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .restart local v6    # "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V

    .line 273
    iget-object v7, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->h5NetworkManager:Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setNetWorkManager(Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;)V

    .line 274
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setCheckCrossOrigin(Z)V

    .line 278
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 279
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v7

    .line 280
    .local v7, "startParam":Landroid/os/Bundle;
    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->applyStartParams(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->attachPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 283
    .end local v7    # "startParam":Landroid/os/Bundle;
    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    .line 285
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->getSwitchControl()Z

    move-result v7

    if-nez v7, :cond_7

    .line 286
    const-string v7, "formatRequest !useSpdyFromJS return"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->setCapture(Z)V

    .line 288
    return-object v6

    .line 291
    :cond_7
    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isApk(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 292
    const-string v7, "formatRequest isApk return"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-object v6

    .line 296
    :cond_8
    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->isExistMemoryDowngradeRule(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 297
    const-string v7, "formatRequest isExistMemoryDowngradeRule return"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-object v6

    .line 301
    :cond_9
    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->isExistDiskDowngradeRule(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 302
    const-string v7, "formatRequest isExistDiskDowngradeRule return"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-object v6

    .line 306
    :cond_a
    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "scheme":Ljava/lang/String;
    if-eqz v18, :cond_d

    .line 308
    const-string v8, "handleMainFrame"

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object/from16 v8, v23

    .end local v23    # "url":Ljava/lang/String;
    .local v8, "url":Ljava/lang/String;
    invoke-direct {v0, v7, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->handleMainFrame(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-boolean v3, v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    if-eqz v3, :cond_c

    .line 311
    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "host":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 313
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->addSMainDocSpdyTable(Ljava/lang/String;)V

    .line 315
    .end local v3    # "host":Ljava/lang/String;
    :cond_b
    move-object/from16 v3, p5

    goto :goto_1

    .line 310
    :cond_c
    move-object/from16 v3, p5

    goto :goto_1

    .line 317
    .end local v8    # "url":Ljava/lang/String;
    .restart local v23    # "url":Ljava/lang/String;
    :cond_d
    move-object/from16 v8, v23

    .end local v23    # "url":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    const-string v9, "handleSubRes"

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v3, p5

    invoke-direct {v0, v3, v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->handleSubRes(Ljava/util/Map;Ljava/lang/String;)V

    .line 320
    :goto_1
    return-object v6
.end method

.method public getH5NetworkManager()Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->h5NetworkManager:Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 569
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V

    .line 570
    const/4 v0, 0x2

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 563
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V

    .line 564
    const-string v0, "1.0"

    return-object v0
.end method

.method public isUseSpdy()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    return v0
.end method

.method public requestURL(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Z
    .locals 2
    .param p1, "handler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "isUCProxyReq"    # Z
    .param p5, "headers"    # Ljava/util/Map;
    .param p6, "ucHeaders"    # Ljava/util/Map;
    .param p7, "uploadFileMap"    # Ljava/util/Map;
    .param p8, "uploadDataMap"    # Ljava/util/Map;
    .param p9, "uploadFileTotalLen"    # J
    .param p11, "requestType"    # I
    .param p12, "loadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;JII)Z"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestURL url is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loadType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlipayNetwork"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p12}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->formatRequest(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JII)Lcom/uc/webview/export/internal/interfaces/IRequest;

    move-result-object v0

    .line 518
    .local v0, "request":Lcom/uc/webview/export/internal/interfaces/IRequest;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sendRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)Z

    move-result v1

    return v1
.end method

.method public sendRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)Z
    .locals 12
    .param p1, "request"    # Lcom/uc/webview/export/internal/interfaces/IRequest;

    .line 533
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->init()V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRequest useSpdy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlipayNetwork"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    instance-of v0, p1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    return v0

    .line 539
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 540
    .local v0, "alipayRequest":Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mEnableBridgeThread:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 541
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mRequestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_1

    .line 542
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mBridgeThreadSize:I

    add-int/lit8 v5, v4, 0x2

    const-wide/16 v6, 0xf

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v3, 0xc8

    invoke-direct {v9, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v10, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;

    const-string v3, "H5_delegateNetwork"

    invoke-direct {v10, v3}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$H5SingleThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;

    invoke-direct {v11}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory$DiscardOldestPolicy;-><init>()V

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mRequestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 548
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mRequestExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 555
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z

    const-string v3, "NO"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->sendRequest(ZLjava/lang/String;Z)Z

    .line 558
    :goto_0
    return v2
.end method

.method public tinyResUseSpdyInHttps(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mTinyResUseSpdyInHttpsList:Lcom/alibaba/fastjson/JSONArray;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    return v1

    .line 819
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "scheme":Ljava/lang/String;
    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->mTinyResUseSpdyInHttps:Z

    if-nez v2, :cond_1

    .line 821
    const/4 v1, 0x0

    return v1

    .line 823
    :cond_1
    return v1
.end method
