.class public Lcom/alipay/mobile/common/transport/http/HttpWorker;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alipay/mobile/common/transport/Response;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXPIRES_PATTERN:Ljava/lang/String; = "EEE, dd-MMM-yyyy HH:mm:ss z"

.field protected static LAST_GOOD_PROXY:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "HttpWorker"

.field protected static final sHttpRequestRetryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private a:Lorg/apache/http/client/methods/HttpUriRequest;

.field private b:Lorg/apache/http/client/CookieStore;

.field private c:Lorg/apache/http/HttpEntity;

.field protected clientRpcPack:Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;

.field private d:Lorg/apache/http/HttpHost;

.field private e:Ljava/net/URL;

.field private f:Ljava/net/URI;

.field private g:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:B

.field protected mContext:Landroid/content/Context;

.field protected mCurrentThreadPoolExecutor:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

.field protected mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field protected mHttpResponse:Lorg/apache/http/HttpResponse;

.field protected mLocalContext:Lorg/apache/http/protocol/HttpContext;

.field protected mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

.field protected mRetryTimes:I

.field protected mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

.field private n:B

.field private o:J

.field private p:I

.field private q:Lcom/alipay/mobile/common/transport/Response;

.field private r:Ljava/lang/Throwable;

.field protected redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field private s:Z

.field private t:Lorg/apache/http/HttpHost;

.field private u:J

.field private v:Z

.field private w:Z

.field protected writedMonitorLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->sHttpRequestRetryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 218
    const/4 v0, -0x1

    sput-byte v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->LAST_GOOD_PROXY:B

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    .line 151
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/CookieStore;

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRetryTimes:I

    .line 179
    nop

    .line 180
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    .line 184
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Z

    .line 189
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:Z

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Ljava/lang/String;

    .line 202
    new-instance v2, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 207
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:J

    .line 210
    const/4 v2, -0x1

    iput-byte v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:B

    .line 213
    iput-byte v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:B

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    .line 229
    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:I

    .line 243
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writedMonitorLog:Z

    .line 245
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:Z

    .line 249
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J

    .line 252
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->v:Z

    .line 254
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->w:Z

    .line 271
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 272
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    .line 273
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 274
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v0, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->context:Landroid/content/Context;

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string v3, "UUID"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getPerformanceDataCallback()Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->mPerformanceDataCallback:Lcom/alipay/mobile/common/transport/http/PerformanceDataCallback;

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrgentFlag()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->urgentFlag:Z

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->originRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getBizLog()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizLog:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getExtParams()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->extParams:Ljava/util/Map;

    .line 282
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 285
    const-string v0, "loggerLevel"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 286
    .local v2, "loggerLevel":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->loggerLevel:Ljava/lang/String;

    .line 294
    :cond_0
    const-string v0, "alinet_tspi"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 295
    .local v3, "targetSpi":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v3, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->targetSpi:Ljava/lang/String;

    .line 300
    :cond_1
    const-string/jumbo v0, "sign_error_code"

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v1, "signErrorCode":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->signErrorCode:Ljava/lang/String;

    .line 305
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 3
    .param p1, "exceptionName"    # Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->removeFromDataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "NETTUNNEL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->removeFromDataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:Z

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " retry,retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->getRetryCount(Lorg/apache/http/protocol/HttpContext;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mRetryTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRetryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRetryTimes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRetryTimes:I

    .line 1115
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->resetRequestHeaders()V

    .line 1117
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .locals 10
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "resCode"    # I
    .param p3, "resMsg"    # Ljava/lang/String;
    .param p4, "response"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 2230
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    const/4 v1, 0x0

    move-object v2, v1

    .line 2233
    .local v2, "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    move-object v2, v0

    const-string v3, "HttpWorker"

    if-eqz v0, :cond_1

    .line 2234
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v4

    .line 2235
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v5

    invoke-direct {v0, v4, p2, p3, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    move-object p4, v0

    .line 2237
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v4

    .line 2239
    .local v4, "period":J
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getTypeHeader()Lorg/apache/http/Header;

    move-result-object v0

    .line 2240
    .local v0, "typeHeader":Lorg/apache/http/Header;
    const/4 v6, 0x0

    .line 2241
    .local v6, "charset":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2242
    .local v7, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2243
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 2244
    .local v1, "contentTypes":Ljava/util/HashMap;
    move-object v1, v8

    const-string v9, "charset"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Ljava/lang/String;

    .line 2245
    const-string v8, "Content-Type"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    .line 2247
    .end local v1    # "contentTypes":Ljava/util/HashMap;
    :cond_0
    invoke-virtual {p4, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {p4, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 2249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p4, v8, v9}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    .line 2250
    invoke-virtual {p4, v4, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V

    .line 2252
    const-string v1, "[processCode304] Response cache data."

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    .end local v0    # "typeHeader":Lorg/apache/http/Header;
    .end local v4    # "period":J
    .end local v6    # "charset":Ljava/lang/String;
    .end local v7    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 2254
    :cond_1
    const-string v0, "[processCode304] Response no cache data."

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Lorg/apache/http/HttpResponse;)V

    .line 2258
    :goto_0
    return-object p4
.end method

.method private a(Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;

    .line 1785
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isTFSHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1786
    return-object p1

    .line 1788
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->replaceTFS2CDN(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, "cdnLocationUrlStr":Ljava/lang/String;
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1790
    .local v1, "tmpUri":Ljava/net/URI;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iput-object v0, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    .line 1792
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Origin url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " convert to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpWorker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    return-object v1
.end method

.method private a()V
    .locals 3

    .line 676
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_ASYNC_EXE_MONITOR:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 677
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->asyncMonitorLog()V

    return-void

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->monitorLog()Ljava/lang/String;

    .line 682
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/Response;)V
    .locals 12
    .param p1, "pHttpUrlResponse"    # Lcom/alipay/mobile/common/transport/Response;

    const/4 v0, 0x0

    .line 2906
    .local v0, "httpUrlResponse":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    if-nez p1, :cond_0

    .line 2907
    return-void

    .line 2908
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    if-nez v1, :cond_1

    .line 2909
    return-void

    .line 2912
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 2914
    move-object v0, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v1

    .line 2916
    .local v1, "header":Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    const-string/jumbo v2, "threadid = %s; Response success. mOperationType=[%s] . response header=[%s].  response body = %s  "

    .line 2918
    .local v2, "template":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "is null"

    const-string v6, "HttpWorker"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-nez v3, :cond_3

    .line 2919
    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    iget-object v9, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    aput-object v9, v3, v8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    aput-object v5, v3, v7

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    return-void

    .line 2923
    :cond_3
    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    iget-object v9, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    aput-object v9, v3, v8

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    aput-object v5, v3, v7

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2924
    .local v3, "log":Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;)V
    .locals 4
    .param p1, "bufferedInputStream"    # Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;

    .line 2501
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->getReaded()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    .line 2502
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->getReaded()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2505
    return-void

    .line 2503
    :catchall_0
    move-exception v0

    .line 2504
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    const-string v2, "calcTrafficConsume exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2506
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/Throwable;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1221
    const-string v0, "HttpWorker"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1222
    return-void

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isMdapApi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1226
    return-void

    .line 1229
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1230
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x30d40

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1231
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "task run too long time,ignore it: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    sub-long/2addr v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return-void

    .line 1236
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p3, Lcom/alipay/mobile/common/transport/ext/MMTPException;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1237
    :goto_0
    if-eqz v1, :cond_5

    .line 1238
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AMNET_DOWNGRADE_RPC_ERROR_TICK:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 1239
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    const-string v2, "T"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1242
    const-string/jumbo v1, "mrpc error, tick failure"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->getInstance()Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->mrpcFailureTick()V

    goto :goto_1

    .line 1245
    :cond_4
    move-object v1, p3

    check-cast v1, Lcom/alipay/mobile/common/transport/ext/MMTPException;

    .line 1246
    iget v1, v1, Lcom/alipay/mobile/common/transport/ext/MMTPException;->errorCode:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_5

    .line 1247
    const-string v1, "MMTP_EXP_IPC_ERROR happened, tick failure"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->getInstance()Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->mrpcFailureTick()V

    .line 1254
    :cond_5
    :goto_1
    const/16 v1, 0xd

    if-ne p2, v1, :cond_6

    .line 1255
    return-void

    .line 1257
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->getInstance()Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p2, p1, p4}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->recordError(BILjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    return-void

    .line 1259
    :catch_0
    move-exception p1

    .line 1260
    const-string/jumbo p1, "reportError2Monitor exception"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "retryValue"    # Ljava/lang/String;
    .param p1, "api"    # Ljava/lang/String;

    .line 2653
    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2654
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e(Ljava/lang/String;)V

    return-void

    .line 2655
    :cond_0
    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2656
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f(Ljava/lang/String;)V

    .line 2658
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .param p1, "cookies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 2814
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isResetCookie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2817
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/util/List;)V

    return-void

    .line 2818
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    .line 2821
    return-void
.end method

.method private a(Lorg/apache/http/HttpEntity;)V
    .locals 3
    .param p1, "postDataEntity"    # Lorg/apache/http/HttpEntity;

    .line 398
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u()Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x0

    .line 399
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 400
    instance-of v0, p1, Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_1

    .line 401
    move-object v0, p1

    check-cast v0, Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    instance-of v0, p1, Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_1

    .line 407
    move-object v0, p1

    check-cast v0, Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 411
    :cond_1
    return-void
.end method

.method private a(Lorg/apache/http/HttpHost;)V
    .locals 3
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;

    .line 1898
    const-string v0, "PROXY"

    if-eqz p1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "T"

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TARGET_HOST"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1902
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "F"

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 2623
    const-string v0, "HttpWorker"

    if-nez p1, :cond_0

    .line 2624
    :try_start_0
    const-string/jumbo v1, "processRetry,httpResponse is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    return-void

    .line 2627
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/4 v2, 0x0

    .line 2628
    .local v2, "resCode":I
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    .line 2629
    return-void

    .line 2633
    :cond_1
    const-string v1, "Retryable2"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 2634
    .local v4, "header":Lorg/apache/http/Header;
    move-object v4, v1

    if-nez v1, :cond_2

    .line 2635
    return-void

    .line 2637
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2638
    .local v1, "retryValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "response header [retryable] = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v5

    .line 2641
    .local v3, "api":Ljava/lang/String;
    move-object v3, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2642
    const-string/jumbo v5, "operationType is null,not rpc"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    return-void

    .line 2646
    :cond_3
    invoke-static {v1, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2649
    .end local v1    # "retryValue":Ljava/lang/String;
    .end local v2    # "resCode":I
    .end local v3    # "api":Ljava/lang/String;
    .end local v4    # "header":Lorg/apache/http/Header;
    return-void

    .line 2647
    :catchall_0
    move-exception v1

    .line 2648
    .local v1, "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "processRetry "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2650
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "httpParams"    # Lorg/apache/http/params/HttpParams;

    .line 1860
    sget-object v0, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    const-string v1, "http.route.default-proxy"

    invoke-interface {p1, v1, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1861
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1862
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:B

    .line 1864
    :cond_0
    return-void
.end method

.method private static a(ZJ)V
    .locals 2
    .param p0, "isEstimateRtt"    # Z
    .param p1, "everyStartReadTime"    # J

    .line 2483
    if-eqz p0, :cond_0

    .line 2484
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->estimateByStartTime(JB)V

    .line 2486
    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 6
    .param p1, "networkType"    # I

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isFirstUseProxy request capture: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCapture()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1844
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DEBUG_HW_FIRST_USE_PROXY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v5, "T"

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 1845
    if-nez v0, :cond_0

    .line 1846
    const-string v0, "isFirstUseProxy. DEBUG_HW_FIRST_USE_PROXY is false."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    return v2

    .line 1849
    :cond_0
    return v3

    .line 1851
    :cond_1
    if-eq p1, v3, :cond_3

    .line 1852
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1856
    :cond_2
    return v2

    .line 1853
    :cond_3
    :goto_0
    const-string v0, "firstUseProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    return v3
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1173
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->canRetryForNetworkAvailable()Z

    move-result v0

    const-string v1, "HttpWorker"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1174
    const-string v0, "canRetryCurrTaskForProxyNetwork. can\'t retry for proxy\uff0c because network is invalid\u3002"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    return v2

    .line 1178
    :cond_0
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:B

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1179
    return v2

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    return v2

    .line 1186
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/security/GeneralSecurityException;

    if-nez v0, :cond_3

    .line 1187
    return v2

    .line 1191
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isCanRetryForStandardHttpRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1192
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->w()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1193
    :cond_4
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_5

    .line 1194
    return v2

    .line 1198
    :cond_5
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:B

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:B

    .line 1199
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:B

    .line 1200
    sput-byte v3, Lcom/alipay/mobile/common/transport/http/HttpWorker;->LAST_GOOD_PROXY:B

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Switch proxy model and retry, retryProxy is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 3
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1612
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n()Z

    move-result v0

    return v0

    .line 1615
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1616
    :catchall_0
    move-exception v0

    .line 1617
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isGoUrlConnection ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .end local v0    # "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method private static a([B)[B
    .locals 4
    .param p0, "content"    # [B

    .line 2943
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 2947
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityUtil;->encrypt([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 2948
    :catchall_0
    move-exception v1

    .line 2949
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "HttpWorker"

    const-string/jumbo v3, "taoBaoEncrypt exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2951
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0

    .line 2944
    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m()V

    return-void
.end method

.method private b()V
    .locals 12

    const-string v0, "T"

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    if-nez v1, :cond_0

    .line 809
    return-void

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v2, "RETRY"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 813
    .local v2, "retryValue":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "PARAM_RETRY"

    if-eqz v1, :cond_1

    .line 814
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "REQ_SIZE"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "reqSize":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v3, "RES_SIZE"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "respSize":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 822
    .local v3, "reqSizeLong":J
    const-wide/16 v5, 0x0

    .line 824
    .local v5, "respSizeLong":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 825
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v3, v7

    .line 827
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 828
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v5, v7

    .line 830
    :cond_3
    add-long v7, v3, v5

    .line 832
    .local v7, "trafficSize":J
    iget-object v9, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    check-cast v9, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v9

    const-string v10, "PARAM_REQ_SIZE"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v9, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    check-cast v9, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v9

    const-string v10, "PARAM_RES_SIZE"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v9, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    check-cast v9, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v9

    const-string v10, "PARAM_TRAFFIC"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v9, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    check-cast v9, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v9

    const-string v10, "client_trace_id"

    iget-object v11, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v11, v11, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    .end local v0    # "reqSize":Ljava/lang/String;
    .end local v1    # "respSize":Ljava/lang/String;
    .end local v2    # "retryValue":Ljava/lang/String;
    .end local v3    # "reqSizeLong":J
    .end local v5    # "respSizeLong":J
    .end local v7    # "trafficSize":J
    return-void

    .line 838
    :catchall_0
    move-exception v0

    .line 839
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 841
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .param p1, "cookies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 2825
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->FORCE_RESET_COOKIE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2826
    return-void

    .line 2830
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAlipayGW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2831
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t()V

    .line 2832
    return-void

    .line 2835
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    .line 2836
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2837
    .local v1, "name":Ljava/lang/String;
    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2838
    const-string v2, "ALIPAYJSESSIONID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2841
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t()V

    .line 2844
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private b(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 3073
    const-string v0, "HttpWorker"

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 3074
    .local v1, "header":[Lorg/apache/http/Header;
    const-string v2, "logHttpResponse, threadid = %s; HttpResponse success. mOperationType=[%s] . response header=[%s]. "

    .line 3075
    .local v2, "template":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "is null"

    :goto_0
    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3078
    .end local v1    # "header":[Lorg/apache/http/Header;
    .end local v2    # "template":Ljava/lang/String;
    return-void

    .line 3076
    :catchall_0
    move-exception v1

    .line 3077
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[logHttpResponse] log fail. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 6
    .param p0, "operationType"    # Ljava/lang/String;

    .line 1689
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_H2_LIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1691
    .local v1, "goH2RpcList":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1694
    :cond_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1695
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 1696
    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1697
    const/4 v0, 0x1

    return v0

    .line 1695
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1700
    :cond_2
    return v2

    .line 1692
    :cond_3
    :goto_1
    return v2
.end method

.method private b(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 6
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v0, "HttpWorker"

    .line 1655
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GO_URLCONNECTION_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v2

    move v3, v1

    .line 1656
    .local v3, "urlConnectSwitch":Z
    if-nez v2, :cond_0

    .line 1657
    const-string v2, "go urlConnectSwitch is off"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    return v1

    .line 1661
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-boolean v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->enableHttpCache:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1662
    return v4

    .line 1664
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v2, v5, :cond_2

    .line 1665
    return v1

    .line 1667
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1668
    return v1

    .line 1670
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1671
    return v1

    .line 1673
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseSystemH2()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "host:"

    if-eqz v2, :cond_5

    .line 1674
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",set use system h2,go H2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    return v4

    .line 1677
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInUrlconnectionHostList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1678
    return v1

    .line 1680
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",go H2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1681
    return v4

    .line 1682
    .end local v3    # "urlConnectSwitch":Z
    :catchall_0
    move-exception v2

    .line 1683
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isGoUrlConnectionForRSRC ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    .end local v2    # "ex":Ljava/lang/Throwable;
    return v1
.end method

.method private static b([B)[B
    .locals 4
    .param p0, "content"    # [B

    .line 2957
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 2961
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/security/SecurityUtil;->decrypt([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 2962
    :catchall_0
    move-exception v1

    .line 2963
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "HttpWorker"

    const-string/jumbo v3, "taoBaoDecrypt exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2965
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0

    .line 2958
    :cond_1
    :goto_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 2541
    const/4 v0, 0x0

    .line 2543
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getSerializable(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 2544
    move-object v0, v1

    if-nez v1, :cond_0

    .line 2545
    return-object v2

    .line 2547
    :cond_0
    instance-of v1, v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    if-eqz v1, :cond_2

    .line 2548
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    move-object v3, v2

    .line 2549
    .local v3, "cache":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    move-object v3, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b([B)[B

    move-result-object v1

    .line 2550
    .local v2, "_data":[B
    move-object v2, v1

    if-nez v1, :cond_1

    .line 2552
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d(Ljava/lang/String;)V

    .line 2553
    const/4 v0, 0x0

    goto :goto_0

    .line 2555
    :cond_1
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    .end local v2    # "_data":[B
    .end local v3    # "cache":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    :cond_2
    goto :goto_0

    .line 2559
    :catch_0
    move-exception v1

    .line 2560
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2562
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private c()V
    .locals 23

    .line 845
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isShouldReportTraffic()Z

    move-result v0

    const-string v1, "HttpWorker"

    if-nez v0, :cond_0

    .line 846
    const-string/jumbo v0, "need\'t reportTrafficConsume"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void

    .line 850
    :cond_0
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_1

    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-eq v0, v2, :cond_1

    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-eq v0, v4, :cond_1

    .line 853
    return-void

    .line 857
    :cond_1
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    iget-wide v5, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RES_SIZE"

    invoke-static {v0, v6, v5}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-wide/16 v7, -0x1

    .line 860
    .local v7, "reqDataLength":J
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    instance-of v9, v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v9, :cond_3

    .line 861
    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    move-object v9, v5

    .line 862
    .local v9, "postEntity":Lorg/apache/http/HttpEntity;
    move-object v9, v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    goto :goto_0

    :cond_2
    const-wide/16 v11, -0x1

    :goto_0
    move-wide v7, v11

    .line 865
    .end local v9    # "postEntity":Lorg/apache/http/HttpEntity;
    :cond_3
    const-wide/16 v11, -0x1

    .line 866
    .local v11, "respDataLength":J
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-eq v0, v3, :cond_6

    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-ne v0, v4, :cond_4

    goto :goto_1

    .line 878
    :cond_4
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-ne v0, v2, :cond_5

    .line 879
    iget-wide v11, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J

    .line 881
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    iget-wide v2, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOWN_TRAFFIC"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v11

    goto :goto_4

    .line 878
    :cond_5
    move-wide v2, v11

    goto :goto_4

    .line 869
    :cond_6
    :goto_1
    :try_start_0
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->getDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v5

    .line 870
    .local v2, "resSize":Ljava/lang/String;
    move-object v2, v0

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 871
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v11, v13

    move-wide v2, v11

    goto :goto_4

    .line 873
    .end local v2    # "resSize":Ljava/lang/String;
    :cond_7
    iget-wide v13, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v11, v13

    goto :goto_3

    .line 875
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v5

    :goto_2
    move-object v0, v2

    .line 876
    .local v0, "ex":Ljava/lang/Throwable;
    iget-wide v11, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u:J

    .line 877
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_3
    move-wide v2, v11

    .line 884
    .end local v11    # "respDataLength":J
    .local v2, "respDataLength":J
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reportTrafficConsume,reqData=["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "] respData(air traffic)=["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-gtz v0, :cond_8

    cmp-long v0, v2, v11

    if-gtz v0, :cond_8

    .line 886
    return-void

    .line 889
    :cond_8
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 890
    .local v6, "noteUrl":Ljava/lang/String;
    sget-object v9, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DOWNLOAD:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 891
    .local v9, "type":Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    const/4 v11, 0x0

    .line 893
    .local v11, "diagnose":Ljava/lang/String;
    move-object v12, v6

    .line 894
    .local v12, "mpaasTrafficUrl":Ljava/lang/String;
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    if-ne v0, v4, :cond_9

    const-string v0, "TransportNebula"

    goto :goto_5

    :cond_9
    const-string v0, "TransportDownload"

    :goto_5
    move-object v4, v0

    .line 897
    .local v4, "mpaasTrafficBiz":Ljava/lang/String;
    const-string/jumbo v15, "noteTraficConsume"

    if-eqz v6, :cond_a

    :try_start_2
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->isRpcBizType()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "#"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 899
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_RPC:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    move-object v9, v0

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "|"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 903
    const-string v0, "TransportRPC"

    move-object v4, v0

    .line 906
    :cond_a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 907
    iget-object v0, v10, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    .line 908
    .local v5, "callback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v5, v0

    if-eqz v0, :cond_b

    .line 909
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v0

    .line 914
    .end local v5    # "callback":Lcom/alipay/mobile/common/transport/TransportCallback;
    :cond_b
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    goto :goto_6

    .line 912
    :catchall_2
    move-exception v0

    move-object v5, v0

    .line 913
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "HttpWorker.before: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v15, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    .line 917
    .end local v4    # "mpaasTrafficBiz":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v6    # "noteUrl":Ljava/lang/String;
    .end local v9    # "type":Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .end local v11    # "diagnose":Ljava/lang/String;
    .end local v12    # "mpaasTrafficUrl":Ljava/lang/String;
    .local v18, "mpaasTrafficBiz":Ljava/lang/String;
    .local v19, "noteUrl":Ljava/lang/String;
    .local v20, "type":Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;
    .local v21, "diagnose":Ljava/lang/String;
    .local v22, "mpaasTrafficUrl":Ljava/lang/String;
    :goto_6
    move-object/from16 v11, v20

    move-object/from16 v12, v19

    move-wide v13, v7

    move-object v9, v15

    move-wide v15, v2

    move-object/from16 v17, v21

    :try_start_3
    invoke-static/range {v11 .. v17}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->obtain(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    move-result-object v0

    move-object v4, v5

    .line 918
    .local v4, "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    move-object v11, v0

    .end local v4    # "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .local v11, "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->isUpload:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 921
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    const-string v4, "bizId"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->bizId:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 924
    goto :goto_7

    .line 922
    :catchall_3
    move-exception v0

    .line 923
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HttpWorker.bizId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v9, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 926
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_7
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, v11, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->reqHeaders:[Lorg/apache/http/Header;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 929
    goto :goto_8

    .line 927
    :catchall_4
    move-exception v0

    .line 928
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HttpWorker.reqHeaders: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v9, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 932
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_8
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, v11, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->respHeaders:[Lorg/apache/http/Header;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 937
    :cond_c
    goto :goto_9

    .line 935
    :catchall_5
    move-exception v0

    .line 936
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HttpWorker.respHeaders: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v9, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 940
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_9
    :try_start_a
    invoke-virtual {v10, v11}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->extNoteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 943
    goto :goto_a

    .line 941
    :catchall_6
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 942
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_b
    const-string v4, "extNoteTraficConsume error"

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 945
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a
    move-wide v5, v7

    .line 946
    .local v5, "finalReqDataLength":J
    move-wide v12, v7

    .end local v7    # "reqDataLength":J
    .local v12, "reqDataLength":J
    move-wide v7, v2

    .line 947
    .local v7, "finalRespDataLength":J
    move-object/from16 v4, v22

    .line 948
    .local v4, "finalMpaasTrafficUrl":Ljava/lang/String;
    move-object v14, v9

    move-object/from16 v9, v18

    .line 949
    .local v9, "finalMpaasTrafficBiz":Ljava/lang/String;
    :try_start_c
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-object v1, v0

    move-wide v15, v2

    .end local v2    # "respDataLength":J
    .local v15, "respDataLength":J
    move-object/from16 v2, p0

    move-object v3, v11

    :try_start_d
    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;-><init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLowPri(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 958
    .end local v4    # "finalMpaasTrafficUrl":Ljava/lang/String;
    .end local v5    # "finalReqDataLength":J
    .end local v7    # "finalRespDataLength":J
    .end local v9    # "finalMpaasTrafficBiz":Ljava/lang/String;
    .end local v11    # "dataflowModel":Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    return-void

    .line 956
    :catchall_7
    move-exception v0

    goto :goto_b

    .end local v15    # "respDataLength":J
    .restart local v2    # "respDataLength":J
    :catchall_8
    move-exception v0

    move-wide v15, v2

    .end local v2    # "respDataLength":J
    .restart local v15    # "respDataLength":J
    goto :goto_b

    .end local v12    # "reqDataLength":J
    .end local v15    # "respDataLength":J
    .restart local v2    # "respDataLength":J
    .local v7, "reqDataLength":J
    :catchall_9
    move-exception v0

    move-wide v15, v2

    move-wide v12, v7

    move-object v14, v9

    .line 957
    .end local v2    # "respDataLength":J
    .end local v7    # "reqDataLength":J
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v12    # "reqDataLength":J
    .restart local v15    # "respDataLength":J
    :goto_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpWorker.outer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .param p1, "etagCacheKey"    # Ljava/lang/String;

    .line 2574
    const-string v0, "HttpWorker"

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:Z

    if-nez v1, :cond_0

    .line 2575
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->remove(Ljava/lang/String;)V

    .line 2576
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeEtagFromCache\uff0c\u5b8c\u6210,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2580
    :cond_0
    return-void

    .line 2578
    :catchall_0
    move-exception v1

    .line 2579
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "removeEtagFromCache"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2581
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private d()Z
    .locals 5

    .line 1077
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->canRetryForNetworkAvailable()Z

    move-result v0

    const-string v1, "HttpWorker"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1078
    const-string v0, "canRetryCurrTask. can\'t retry for proxy\uff0c because network is invalid\u3002"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return v2

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isCanRetryForStandardHttpRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1087
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->w()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->getRetryCount(Lorg/apache/http/protocol/HttpContext;)I

    move-result v0

    move v3, v2

    .line 1093
    .local v3, "retryCount":I
    move v3, v0

    iget v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRetryTimes:I

    add-int/2addr v0, v4

    const/4 v4, 0x3

    if-lt v0, v4, :cond_2

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "canRetryCurrTask retryCount: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mRetryTimes\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRetryTimes:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",should\'t retry"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return v2

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1100
    return v2

    .line 1103
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1088
    .end local v3    # "retryCount":I
    :cond_4
    :goto_0
    return v2
.end method

.method private e()I
    .locals 2

    .line 1121
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRetryTimes:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->getRetryCount(Lorg/apache/http/protocol/HttpContext;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "operationType"    # Ljava/lang/String;

    .line 2663
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/RetryService;->getInstance()Lcom/alipay/mobile/common/transport/utils/RetryService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/utils/RetryService;->addOperationTypeToRetryList(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2666
    return-void

    .line 2664
    :catchall_0
    move-exception v0

    .line 2665
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2667
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1148
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1150
    .local v0, "extMap":Ljava/util/Map;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1151
    const-string v1, "Operation-Type"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    const/4 v2, 0x0

    .line 1155
    .local v2, "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;

    if-eqz v1, :cond_1

    .line 1156
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;

    .line 1157
    .local v1, "djgRequest":Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
    const-string v3, "DJG_UP_BIZ"

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->getInnerBizType()Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    .end local v1    # "djgRequest":Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
    :cond_1
    return-object v0

    .line 1160
    .end local v0    # "extMap":Ljava/util/Map;
    .end local v2    # "httpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :catchall_0
    move-exception v0

    .line 1161
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExtMap ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    .end local v0    # "ex":Ljava/lang/Throwable;
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)V
    .locals 2
    .param p0, "operationType"    # Ljava/lang/String;

    .line 2672
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/RetryService;->getInstance()Lcom/alipay/mobile/common/transport/utils/RetryService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/utils/RetryService;->removeOpetationTypeFromRetryList(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2675
    return-void

    .line 2673
    :catchall_0
    move-exception v0

    .line 2674
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2676
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private g()V
    .locals 2

    .line 1269
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isMdapApi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    return-void

    .line 1273
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->getInstance()Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;->clearErrorByType(B)V

    .line 1274
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 3026
    invoke-static {}, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->getInstance()Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->onPreTransportInterceptor(Ljava/lang/String;Ljava/util/Map;)V

    .line 3027
    return-void
.end method

.method private h()Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 4

    const-string v0, "HttpWorker"

    .line 1389
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1390
    return-void

    .line 1393
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k()V

    .line 1396
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j()Z

    move-result v1

    const/4 v2, 0x0

    .line 1397
    .local v2, "inSpdyRpcList":Z
    if-nez v1, :cond_1

    .line 1398
    return-void

    .line 1401
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledTransportByLocalAmnet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1402
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v3, 0x4

    iput v3, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->choseExtLinkType:I

    goto :goto_0

    .line 1404
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v3, 0x2

    iput v3, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->choseExtLinkType:I

    .line 1406
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "inSpdyRpcList,API:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    .end local v2    # "inSpdyRpcList":Z
    return-void

    .line 1408
    :catchall_0
    move-exception v1

    .line 1409
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "specialRpcGoSpdy ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private j()Z
    .locals 7

    .line 1414
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->GO_SPDY_APIS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1416
    .local v1, "goSpdyApis":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1417
    return v2

    .line 1419
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "operationType":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1421
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 1422
    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1423
    const/4 v2, 0x1

    return v2

    .line 1421
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1426
    :cond_2
    return v2
.end method

.method private k()V
    .locals 4

    .line 1435
    const-string v0, "HttpWorker"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isBgRpc()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1436
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BGRPC_GO_SPDY_GRAY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 1437
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "bgRpcSpdy":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1440
    return-void

    .line 1443
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isEnabledTransportByLocalAmnet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1444
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v3, 0x4

    iput v3, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->choseExtLinkType:I

    goto :goto_0

    .line 1446
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v3, 0x2

    iput v3, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->choseExtLinkType:I

    .line 1449
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bgrpc go spdy,API:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    .end local v1    # "bgRpcSpdy":Ljava/lang/String;
    :cond_2
    return-void

    .line 1451
    :catchall_0
    move-exception v1

    .line 1452
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1454
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private l()V
    .locals 1

    .line 1528
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker$3;-><init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V

    .line 1534
    return-void
.end method

.method private m()V
    .locals 4

    .line 1538
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 1539
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 1540
    const-string v0, "HttpWorker"

    const-string v1, "close expired connections."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    return-void

    .line 1541
    :catchall_0
    move-exception v0

    .line 1544
    return-void
.end method

.method private n()Z
    .locals 5

    .line 1626
    const-string v0, "HttpWorker"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_GO_H2_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, "rpcGoH2Switch":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1629
    const-string/jumbo v3, "rpcGoH2Switch is off"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    return v1

    .line 1632
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 1633
    return v1

    .line 1635
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1636
    return v1

    .line 1638
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1639
    return v1

    .line 1641
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1642
    return v1

    .line 1644
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "API:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",go H2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    const/4 v0, 0x1

    return v0

    .line 1646
    .end local v2    # "rpcGoH2Switch":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 1647
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isGoUrlConnectionForRPC ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    .end local v2    # "ex":Ljava/lang/Throwable;
    return v1
.end method

.method private o()V
    .locals 4

    const-string/jumbo v0, "sofa-group-name"

    const-string v1, "HttpWorker"

    .line 1981
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1982
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getStringData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1983
    .local v3, "sofaGroupName":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "add debug header,key:sofa-group-name,value:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1990
    .end local v3    # "sofaGroupName":Ljava/lang/String;
    :cond_0
    return-void

    .line 1988
    :catchall_0
    move-exception v0

    .line 1989
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addDebugHeaders ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private p()I
    .locals 3

    .line 2087
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    .line 2088
    .local v1, "targetUrl":Ljava/net/URL;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    return v0

    .line 2089
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 2090
    return v0
.end method

.method private q()Ljava/net/URL;
    .locals 2

    .line 2099
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 2100
    return-object v0

    .line 2103
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Ljava/net/URL;

    .line 2104
    return-object v0
.end method

.method private r()Z
    .locals 2

    .line 2489
    const/4 v0, 0x1

    .line 2490
    .local v0, "estimateRtt":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->isRequestByMRPC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2491
    const/4 v0, 0x0

    .line 2493
    :cond_0
    return v0
.end method

.method private s()V
    .locals 3

    .line 2735
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string v2, "UUID"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    .line 2736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:Z

    .line 2737
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "DOWN"

    const-string v2, "T"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->incrementRpcErrorCount()V

    .line 2739
    return-void
.end method

.method private t()V
    .locals 8

    .line 2848
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    .line 2849
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2850
    return-void

    .line 2852
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reset cookie.  API="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->removeAllCookie()V

    .line 2854
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->removeAllCookie()V

    .line 2855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2856
    .local v2, "current":J
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 2858
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 2861
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v0

    .line 2862
    const-string v4, "R_COOKIE"

    if-nez v0, :cond_2

    .line 2863
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v5, "T"

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    const-string/jumbo v0, "reset cookie success!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2866
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v5, "F"

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    const-string/jumbo v0, "reset cookie fail!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    return-void
.end method

.method private u()Lorg/apache/http/Header;
    .locals 4

    .line 2873
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    move-object v2, v0

    .line 2874
    .local v2, "targetHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v3, "Content-Type"

    invoke-interface {v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2875
    .end local v2    # "targetHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v1

    .line 2876
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HttpWorker"

    const-string v3, "getTargetContentType Exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2878
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private v()V
    .locals 2

    .line 2883
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->startTrafficMonitor()Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->deviceTrafficStateInfo:Lcom/alipay/mobile/common/transport/monitor/DeviceTrafficStateInfo;

    .line 2884
    return-void
.end method

.method private w()Z
    .locals 2

    .line 2998
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isRetryForRpc(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    .line 2999
    .local v1, "retryForRpc":Ljava/lang/Boolean;
    move-object v1, v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v0, :cond_0

    .line 3000
    const/4 v0, 0x0

    return v0

    .line 3002
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private x()V
    .locals 3

    .line 3083
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->resetRpcErrorCount()V

    .line 3086
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->isRequestByMRPC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3087
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->getInstance()Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/ExtTransportTunnelWatchdog;->mrpcFailureRest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3091
    :cond_0
    return-void

    .line 3089
    :catchall_0
    move-exception v0

    .line 3090
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetRpcErrorCount ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 3

    .line 1286
    const-string v0, "HttpWorker"

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1287
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abort request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    :cond_1
    return-void

    .line 1290
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "abort exception:"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1293
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method protected addCookie2Header()V
    .locals 3

    .line 2024
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->getCookieWrapper(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/lang/String;

    move-result-object v0

    .line 2025
    .local v0, "cookies":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    return-void
.end method

.method protected addEtag2RequestHeader()V
    .locals 6

    .line 2514
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseEtag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2515
    const-string v0, "HttpWorker"

    const-string v1, "addEtag2RequestHeader. don\'t use etag. go return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    return-void

    .line 2519
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 2522
    .local v0, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Ljava/lang/String;

    .line 2524
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 2528
    .local v2, "cachedValue":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v1, :cond_1

    instance-of v1, v2, Ljava/lang/Exception;

    if-nez v1, :cond_1

    .line 2530
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    .line 2531
    .local v1, "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getEtag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "If-None-Match"

    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    .local v3, "header":Lorg/apache/http/Header;
    invoke-interface {v0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 2533
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Z

    .line 2535
    .end local v1    # "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    .end local v3    # "header":Lorg/apache/http/Header;
    return-void

    .line 2536
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Z

    .line 2538
    return-void
.end method

.method protected addRequestHeaders()V
    .locals 5

    .line 1940
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o()V

    .line 1942
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->addEtag2RequestHeader()V

    .line 1945
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->copyHeaders()V

    .line 1948
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->addCookie2Header()V

    .line 1951
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1952
    .local v1, "alipayLocaleDes":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1953
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 1960
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    .line 1963
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/RetryService;->getInstance()Lcom/alipay/mobile/common/transport/utils/RetryService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/transport/utils/RetryService;->isSupportResend(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "1"

    const-string v3, "Retryable2"

    if-eqz v0, :cond_1

    .line 1965
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1967
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isUseSelfEncrypt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1971
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string/jumbo v3, "x-mgs-encryption"

    invoke-interface {v0, v3, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v2, "X-Content-Encoding"

    const-string/jumbo v3, "mgss"

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->printHeaderLog([Lorg/apache/http/Header;)V

    .line 1977
    return-void
.end method

.method protected asyncMonitorLog()V
    .locals 3

    .line 687
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writedMonitorLog:Z

    if-eqz v0, :cond_0

    .line 688
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskFinishedTimeMillis:J

    .line 692
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker$1;-><init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLowPri(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method public call()Lcom/alipay/mobile/common/transport/Response;
    .locals 13

    .line 472
    const/16 v0, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->preCheck()V

    .line 474
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v6}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->setValue(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 476
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isBgRpc()Z

    move-result v6

    if-nez v6, :cond_0

    .line 477
    const/4 v6, -0x4

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 478
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 482
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-wide v6, v6, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    const-wide/16 v8, 0x1

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    .line 483
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    .line 486
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e()I

    move-result v7

    iput v7, v6, Lcom/alipay/mobile/common/transport/context/TransportContext;->taskRetryedCount:I

    .line 489
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-wide v6, v6, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    iget-wide v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:J

    .line 492
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 493
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v6, v7}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 497
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {p0, v6}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshHelper;->recordRpc(Lcom/alipay/mobile/common/transport/http/HttpWorker;Landroid/content/Context;)V

    .line 499
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/common/transport/TransportStrategy;->configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 502
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->addRequestHeaders()V

    .line 504
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    .line 506
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "NET_CONTEXT"

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-interface {v6, v7, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "http.cookie-store"

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/CookieStore;

    invoke-interface {v6, v7, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->v()V

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 514
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->executeRequest()Lorg/apache/http/HttpResponse;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 517
    .local v8, "responseTime":J
    iget-object v10, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    sub-long v11, v8, v6

    invoke-virtual {v10, v11, v12}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addConnectTime(J)V

    .line 519
    iget-object v10, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v10}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processRespCookies(Lorg/apache/http/HttpResponse;)V

    .line 521
    iget-object v10, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    iget-object v11, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {p0, v10, v11}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v10

    iput-object v10, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    nop

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 522
    return-object v10

    .line 564
    .end local v6    # "time":J
    .end local v8    # "responseTime":J
    :catchall_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "Throwable"

    invoke-virtual {p0, v1, v5, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 565
    return-object v1

    .line 562
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "NullPointerException"

    invoke-virtual {p0, v2, v5, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 563
    return-object v1

    .line 560
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "IOException"

    const/4 v2, 0x6

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->canRetryForIoException(Ljava/io/IOException;)Z

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 561
    return-object v1

    .line 558
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 559
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_4
    const-string v1, "UnknownHostException"

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 559
    return-object v1

    .line 556
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_3
    move-exception v0

    .line 557
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_5
    const-string v2, "ClientProtocolException"

    invoke-virtual {p0, v2, v5, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 557
    return-object v1

    .line 552
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_4
    move-exception v0

    .line 555
    .local v0, "e":Lorg/apache/http/conn/HttpHostConnectException;
    :try_start_6
    const-string v1, "HttpHostConnectException"

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 555
    return-object v1

    .line 550
    .end local v0    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    :catch_5
    move-exception v0

    .line 551
    .local v0, "e":Lorg/apache/http/NoHttpResponseException;
    :try_start_7
    const-string v1, "NoHttpResponseException"

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 551
    return-object v1

    .line 546
    .end local v0    # "e":Lorg/apache/http/NoHttpResponseException;
    :catch_6
    move-exception v0

    .line 548
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v1

    const-wide v3, 0x40b3880000000000L    # 5000.0

    invoke-virtual {v1, v3, v4, v2}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->estimate(DB)V

    .line 549
    const-string v1, "SocketTimeoutException"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 549
    return-object v1

    .line 544
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v0

    .line 545
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_9
    const-string v1, "ConnectTimeoutException"

    invoke-virtual {p0, v1, v3, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 545
    return-object v1

    .line 542
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_8
    move-exception v0

    .line 543
    .local v0, "e":Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    :try_start_a
    const-string v1, "ConnectionPoolTimeoutException"

    invoke-virtual {p0, v1, v3, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 543
    return-object v1

    .line 540
    .end local v0    # "e":Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    :catch_9
    move-exception v0

    .line 541
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 541
    return-object v1

    .line 538
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_a
    move-exception v0

    .line 539
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_c
    const-string v1, "SSLException"

    invoke-virtual {p0, v1, v4, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 539
    return-object v1

    .line 536
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :catch_b
    move-exception v0

    .line 537
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :try_start_d
    const-string v1, "SSLPeerUnverifiedException"

    invoke-virtual {p0, v1, v4, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 537
    return-object v1

    .line 534
    .end local v0    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_c
    move-exception v0

    .line 535
    .local v0, "e":Ljavax/net/ssl/SSLHandshakeException;
    :try_start_e
    const-string v1, "SSLHandshakeException"

    invoke-virtual {p0, v1, v4, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 535
    return-object v1

    .line 525
    .end local v0    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :catch_d
    move-exception v1

    .line 527
    .local v1, "e":Ljava/net/URISyntaxException;
    :try_start_f
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setFailedException(Ljava/lang/Throwable;)V

    .line 528
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 531
    goto :goto_0

    .line 529
    :catch_e
    move-exception v0

    .line 530
    .local v0, "e1":Ljava/lang/Exception;
    :try_start_10
    const-string v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTransportCallback().onFailed1 exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v0    # "e1":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URISyntaxException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Url parser error!"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 523
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :catch_f
    move-exception v0

    .line 524
    .local v0, "e":Lcom/alipay/mobile/common/transport/http/HttpException;
    const-string v1, "HttpException"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 567
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    .line 524
    return-object v1

    .line 567
    .end local v0    # "e":Lcom/alipay/mobile/common/transport/http/HttpException;
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->finallyProcess()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method protected canRetryCurrTaskForSubBiz(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method protected canRetryForIoException(Ljava/io/IOException;)Z
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;

    const-string v0, "HttpWorker"

    .line 2970
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->canRetryForNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2971
    const-string v2, "canRetryForIoException. can\'t retry for proxy\uff0c because network is invalid\u3002"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    return v1

    .line 2974
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isShutdown(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2975
    return v1

    .line 2977
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->w()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2978
    return v1

    .line 2980
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->isCanRetryForStandardHttpRequest(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2981
    return v1

    .line 2983
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2984
    return v1

    .line 2986
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->getRetryCount(Lorg/apache/http/protocol/HttpContext;)I

    move-result v2

    move v3, v1

    .line 2987
    .local v3, "retryCount":I
    const/4 v4, 0x3

    if-ge v2, v4, :cond_5

    .line 2988
    const-string v2, "canRetryForIoException return true."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2989
    const/4 v0, 0x1

    return v0

    .line 2993
    .end local v3    # "retryCount":I
    :cond_5
    goto :goto_0

    .line 2991
    :catchall_0
    move-exception v2

    .line 2992
    .local v2, "e1":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "canRetryForIoException fail. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    .end local v2    # "e1":Ljava/lang/Throwable;
    :goto_0
    return v1
.end method

.method protected canRetryForNetworkAvailable()Z
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    const/4 v0, 0x0

    return v0

    .line 1209
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public consumeContent()V
    .locals 1

    .line 2887
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent(Lorg/apache/http/HttpResponse;)V

    .line 2888
    return-void
.end method

.method public consumeContent(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 2891
    const-string v0, "HttpWorker"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2893
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2894
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consume content finish! threadid= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2897
    return-void

    .line 2895
    :catchall_0
    move-exception v1

    .line 2896
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "consumeContent exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 2899
    :cond_0
    const-string v1, "Consume content don\'t execution!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    return-void
.end method

.method protected copyHeaders()V
    .locals 2

    .line 2008
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->copyHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/ArrayList;)V

    .line 2009
    return-void
.end method

.method public copyHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 2012
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 2014
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {p1, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 2015
    .end local v1    # "header":Lorg/apache/http/Header;
    goto :goto_0

    .line 2017
    :cond_0
    return-void
.end method

.method protected determineProxyPlanner(Lorg/apache/http/params/HttpParams;)Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;
    .locals 6
    .param p1, "httpParams"    # Lorg/apache/http/params/HttpParams;

    .line 1803
    new-instance v0, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 1804
    .local v2, "httpHostWrapper":Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;
    move-object v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxyOfEnhanced(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    .line 1805
    iget-object v0, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    const-string v3, "http.route.default-proxy"

    if-nez v0, :cond_0

    .line 1806
    sget-object v0, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-interface {p1, v3, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1807
    iput-object v1, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    .line 1808
    return-object v2

    .line 1812
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "determineProxyPlanner. request capture: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCapture()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    iget-object v0, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpHost;)V

    .line 1815
    iget-object v0, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    invoke-interface {p1, v3, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    .line 1817
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1818
    .local v0, "networkType":I
    sget-byte v3, Lcom/alipay/mobile/common/transport/http/HttpWorker;->LAST_GOOD_PROXY:B

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 1819
    if-ne v3, v5, :cond_2

    .line 1820
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->setProxyModel(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    goto :goto_0

    .line 1822
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;)V

    .line 1823
    iput-object v1, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    goto :goto_0

    .line 1826
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:B

    if-eq v3, v4, :cond_5

    :cond_4
    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:B

    if-ne v3, v5, :cond_6

    .line 1827
    :cond_5
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->setProxyModel(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 1828
    iput-byte v5, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    goto :goto_0

    .line 1830
    :cond_6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;)V

    .line 1831
    const/4 v3, 0x0

    iput-byte v3, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    .line 1832
    iput-object v1, v2, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    .line 1837
    .end local v0    # "networkType":I
    :goto_0
    return-object v2
.end method

.method protected doExecuteRequestByHttpClient(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 1607
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public doMonitorLog()Ljava/lang/String;
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writedMonitorLog:Z

    if-eqz v0, :cond_0

    .line 706
    const-string v0, ""

    return-object v0

    .line 708
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writedMonitorLog:Z

    .line 709
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->putCommonMonitorDataItems()V

    .line 710
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->putSubCommonMonitor()V

    .line 711
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->perfLog:Ljava/lang/String;

    return-object v0
.end method

.method protected etagRpcv2Adapter(Lorg/apache/http/HttpResponse;)V
    .locals 8
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 1876
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    move-object v3, v1

    .line 1877
    .local v3, "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    const-string/jumbo v4, "rpcVersion"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v1

    .line 1878
    .local v4, "rpcVersion":Ljava/lang/String;
    move-object v4, v2

    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "2"

    .line 1879
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1880
    const-string v2, "Result-Status"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 1881
    .local v1, "headers":[Lorg/apache/http/Header;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_0

    aget-object v2, v1, v0

    .line 1882
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "8001"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1883
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v5, 0x130

    const-string v6, "Not Modified"

    invoke-interface {p1, v2, v5, v6}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1894
    .end local v1    # "headers":[Lorg/apache/http/Header;
    .end local v3    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .end local v4    # "rpcVersion":Ljava/lang/String;
    :cond_0
    return-void

    .line 1886
    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    .line 1887
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1888
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v1, v4

    const-string/jumbo v5, "print headers:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .line 1890
    .local v2, "allHeaders":[Lorg/apache/http/Header;
    array-length v5, v4

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 1891
    .local v6, "header":Lorg/apache/http/Header;
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    .end local v6    # "header":Lorg/apache/http/Header;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1893
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Illegal response. "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HttpWorker"

    invoke-static {v4, v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1895
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "allHeaders":[Lorg/apache/http/Header;
    .end local v3    # "e":Ljava/lang/Exception;
    return-void
.end method

.method protected executeExtClientRequest()Lorg/apache/http/HttpResponse;
    .locals 7

    .line 1340
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isCanUseExtTransport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1341
    return-object v1

    .line 1344
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n()Z

    move-result v0

    const-string v2, "HttpWorker"

    if-eqz v0, :cond_1

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "opeType:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",go H2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    return-object v1

    .line 1350
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i()V

    .line 1353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1356
    .local v3, "startGetExtTime":J
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    move-object v5, v1

    .line 1357
    .local v5, "extTransportOffice":Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;
    move-object v5, v0

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 1358
    invoke-virtual {v5, v0, v6}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    move-object v6, v1

    .line 1360
    .local v6, "extTransportClient":Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    move-object v6, v0

    if-nez v0, :cond_3

    .line 1361
    return-object v1

    .line 1365
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "ALL_TIME"

    invoke-interface {v0, v1, v3, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;J)V

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "By "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to request. operationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1367
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->putStalledTime()V

    .line 1372
    invoke-interface {v6}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->getModuleCategory()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1373
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v1, "Connection"

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 1377
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v0, v1, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1378
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->getModuleCategory()I

    move-result v1

    if-nez v1, :cond_5

    .line 1379
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->etagRpcv2Adapter(Lorg/apache/http/HttpResponse;)V

    .line 1381
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->x()V

    .line 1382
    return-object v0
.end method

.method protected executeHttpClientRequest()Lorg/apache/http/HttpResponse;
    .locals 9

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "By Http/Https to request. operationType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1457
    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1465
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l()V

    .line 1468
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->sHttpRequestRetryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 1470
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v1, 0x1

    const-string v2, "https"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 1472
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:Z

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v2, "RETRY"

    const-string v3, "T"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 1478
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    move-object v3, v0

    const-string v4, "http.protocol.element-charset"

    const-string/jumbo v5, "utf-8"

    invoke-interface {v0, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1480
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v4, "ALL_TIME"

    invoke-interface {v0, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/HttpEntity;

    move-result-object v0

    move-object v4, v2

    .line 1482
    .local v4, "postData":Lorg/apache/http/HttpEntity;
    move-object v4, v0

    const-string v5, "alipay_isRepeatable"

    if-eqz v0, :cond_2

    .line 1483
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1484
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1485
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1484
    const-string v7, "REQ_SIZE"

    invoke-interface {v0, v7, v6}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->putStalledTime()V

    .line 1492
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->determineProxyPlanner(Lorg/apache/http/params/HttpParams;)Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;

    move-result-object v0

    .line 1494
    .local v0, "proxyWrapper":Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    move-object v7, v2

    .line 1497
    .local v7, "httpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v7, v6

    instance-of v6, v6, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v6, :cond_3

    .line 1498
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1501
    :cond_3
    move-object v1, v7

    check-cast v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    move-object v5, v2

    .line 1502
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    move-object v5, v1

    instance-of v1, v1, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;

    if-eqz v1, :cond_4

    .line 1503
    move-object v1, v5

    check-cast v1, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;

    .line 1504
    .local v2, "entityWrapper":Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;->setHttpWorker(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    .line 1509
    .end local v2    # "entityWrapper":Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 1512
    .local v1, "targetHost":Lorg/apache/http/HttpHost;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v2, v1, v7, v5}, Lcom/alipay/mobile/common/transport/http/inner/HttpClientPlannerHelper;->determineRoute(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 1513
    .local v2, "httpRoute":Lorg/apache/http/conn/routing/HttpRoute;
    const-string v5, "http.route.forced-route"

    invoke-interface {v3, v5, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1516
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v1, v7, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1518
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    iget-byte v6, v0, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    .line 1519
    iget-byte v6, v0, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    sput-byte v6, Lcom/alipay/mobile/common/transport/http/HttpWorker;->LAST_GOOD_PROXY:B

    .line 1522
    :cond_5
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->etagRpcv2Adapter(Lorg/apache/http/HttpResponse;)V

    .line 1523
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->x()V

    .line 1524
    return-object v5
.end method

.method protected executeHttpClientRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "targetHost"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 1592
    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/AndroidH2UrlConnection;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/RequestSwitchDirectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    goto :goto_0

    .line 1595
    .end local v0    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 1596
    const-string v0, "HttpWorker"

    const-string v1, "[executeHttpClientRequest] Downgrade to httpclient."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->doExecuteRequestByHttpClient(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1602
    .restart local v0    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseForRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1603
    return-object v1
.end method

.method protected executeRequest()Lorg/apache/http/HttpResponse;
    .locals 5

    .line 1312
    const-string v0, "HRC"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->setTimeout()V

    .line 1313
    const/4 v1, 0x0

    .line 1315
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->setShouldReportTraffic(Z)V

    .line 1317
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v3, "originRequest"

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->executeExtClientRequest()Lorg/apache/http/HttpResponse;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1320
    move-object v1, v2

    if-eqz v2, :cond_1

    .line 1321
    nop

    .line 1329
    if-eqz v1, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 1331
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_0
    return-object v1

    .line 1325
    :cond_1
    goto :goto_0

    .line 1323
    :catch_0
    move-exception v2

    .line 1324
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processExtTransException(Ljava/lang/Exception;)V

    .line 1327
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->executeHttpClientRequest()Lorg/apache/http/HttpResponse;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 1329
    if-eqz v1, :cond_2

    .line 1330
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 1331
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :cond_2
    return-object v1

    .line 1329
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 1330
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 1331
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    throw v2
.end method

.method protected extNoteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 0
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 963
    return-void
.end method

.method protected fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 2283
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v0

    .line 2284
    .local v0, "period":J
    const/4 v2, 0x0

    .line 2285
    .local v2, "charset":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2286
    .local v3, "contentType":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2287
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 2288
    .local v6, "typeHeader":Lorg/apache/http/Header;
    move-object v6, v4

    if-eqz v4, :cond_0

    .line 2289
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 2290
    .local v5, "contentTypes":Ljava/util/HashMap;
    move-object v5, v4

    sget-object v7, Lcom/alipay/mobile/common/transport/utils/HeaderConstant;->HEADER_KEY_CHARSET:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 2291
    const-string v4, "Content-Type"

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 2294
    .end local v5    # "contentTypes":Ljava/util/HashMap;
    .end local v6    # "typeHeader":Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 2296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    .line 2297
    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2300
    .end local v0    # "period":J
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "contentType":Ljava/lang/String;
    return-void

    .line 2298
    :catchall_0
    move-exception v0

    .line 2299
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2301
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected finallyProcess()V
    .locals 4

    .line 619
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshHelper;->removeRpc(Lcom/alipay/mobile/common/transport/http/HttpWorker;Landroid/content/Context;)V

    .line 620
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->notifyNetworkState()V

    .line 621
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:Lcom/alipay/mobile/common/transport/Response;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lcom/alipay/mobile/common/transport/Response;)V

    .line 622
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b()V

    .line 623
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 626
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()V

    .line 630
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->setValue(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 636
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTaskState(I)V

    .line 637
    return-void

    .line 634
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 631
    :catch_0
    move-exception v2

    .line 632
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "HttpWorker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 634
    :goto_1
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/TransportContextThreadLocalUtils;->setValue(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 636
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTaskState(I)V

    throw v2
.end method

.method protected getBodyContent(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Ljava/lang/String;
    .locals 2
    .param p1, "httpUrlResponse"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 2929
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInLogBackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2930
    const-string/jumbo v0, "\u6839\u636e\u76f8\u5173\u6cd5\u5f8b\u6cd5\u89c4\u548c\u653f\u7b56\uff0c\u672c\u7ed3\u679c\u672a\u4e88\u663e\u793a"

    return-object v0

    .line 2933
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getResData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2934
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getResData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 2937
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method protected getContentType(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2109
    .local v0, "result":Ljava/util/HashMap;
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 2111
    .local v3, "pairs":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    .line 2112
    .local v2, "param":Ljava/lang/String;
    move-object v2, v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    .line 2113
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 2114
    move-object v3, v7

    const-string v8, "Content-Type"

    aput-object v8, v7, v5

    .line 2115
    aput-object v2, v3, v9

    goto :goto_1

    .line 2117
    :cond_0
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2119
    :goto_1
    aget-object v7, v3, v5

    aget-object v8, v3, v9

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    .end local v2    # "param":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2121
    :cond_1
    return-object v0
.end method

.method public getCurrentThreadPoolExecutor()Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;
    .locals 1

    .line 3018
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mCurrentThreadPoolExecutor:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .line 3014
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 2

    .line 1915
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    return-object v0

    .line 1919
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    const-string/jumbo v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    .line 1920
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Ljava/lang/String;

    return-object v0

    .line 1923
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method protected getOriginHttpHost()Lorg/apache/http/HttpHost;
    .locals 5

    .line 2076
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    .line 2077
    return-object v0

    .line 2080
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q()Ljava/net/URL;

    move-result-object v0

    .line 2081
    .local v0, "originTargetUrl":Ljava/net/URL;
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p()I

    move-result v3

    .line 2082
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/HttpHost;

    .line 2083
    return-object v1
.end method

.method public getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .locals 1

    .line 2379
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    return-object v0
.end method

.method protected getPeriod(Lorg/apache/http/HttpResponse;)J
    .locals 6

    .line 2310
    nop

    .line 2311
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 2312
    const-string v1, "HttpWorker"

    if-eqz v0, :cond_0

    .line 2313
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2314
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 2316
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->parserMaxage([Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2323
    :cond_0
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    .line 2324
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    .line 2326
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 2327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v2, v4, v0

    .line 2331
    goto :goto_0

    .line 2328
    :catchall_0
    move-exception v0

    .line 2329
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse expire exception. expire value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  exception: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    :cond_1
    :goto_0
    return-wide v2
.end method

.method protected getPostData()Lorg/apache/http/HttpEntity;
    .locals 7

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 337
    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 341
    .local v2, "httpEntity":Lorg/apache/http/HttpEntity;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 342
    iput-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    .line 343
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpEntity;)V

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    return-object v0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v3, v1

    .line 348
    .local v3, "inputStream":Ljava/io/InputStream;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 349
    new-instance v0, Lcom/alipay/mobile/common/transport/http/inner/RpcInputStreamEntity;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getDataLength()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lcom/alipay/mobile/common/transport/http/inner/RpcInputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    .line 350
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpEntity;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    return-object v0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpForm()Lcom/alipay/mobile/common/transport/http/HttpForm;

    move-result-object v0

    move-object v4, v1

    .line 355
    .local v4, "httpForm":Lcom/alipay/mobile/common/transport/http/HttpForm;
    move-object v4, v0

    if-eqz v0, :cond_3

    .line 356
    iput-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    .line 357
    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpEntity;)V

    .line 358
    return-object v4

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()[B

    move-result-object v0

    move-object v5, v1

    .line 363
    .local v5, "bs":[B
    move-object v5, v0

    if-eqz v0, :cond_7

    .line 366
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isUseSelfEncrypt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->clientRpcPack:Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-static {v5, v0, v6}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->getEncryptedEntity([BLcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    goto :goto_0

    .line 370
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->reqGzip:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCompress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    invoke-static {v5, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    goto :goto_0

    .line 374
    :cond_5
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v5}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    .line 377
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->u()Lorg/apache/http/Header;

    move-result-object v0

    .line 378
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    move-object v1, v0

    if-eqz v0, :cond_6

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    instance-of v6, v0, Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v6, :cond_7

    .line 380
    check-cast v0, Lorg/apache/http/entity/AbstractHttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    goto :goto_1

    .line 383
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    instance-of v6, v0, Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v6, :cond_7

    .line 384
    check-cast v0, Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 390
    .end local v1    # "contentTypeHeader":Lorg/apache/http/Header;
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_8

    instance-of v1, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_8

    .line 391
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    .line 394
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method protected getTargetHttpHost()Lorg/apache/http/HttpHost;
    .locals 5

    .line 1574
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    .line 1575
    return-object v0

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 1580
    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->t:Lorg/apache/http/HttpHost;

    .line 1581
    return-object v1
.end method

.method protected getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    .line 435
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_0

    .line 437
    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_0
    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTargetHttpUriRequest. clone error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 447
    .local v2, "originRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 448
    .local v1, "localHttpUriRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 449
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 450
    instance-of v0, v1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_2

    .line 451
    move-object v0, v1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/HttpEntity;

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0

    .line 456
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetUri()Ljava/net/URI;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/common/transport/utils/RequestMethodUtils;->createHttpUriRequestByMethod(Lorg/apache/http/HttpEntity;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 457
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHttpUriRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getTargetUri()Ljava/net/URI;
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Ljava/net/URI;

    if-eqz v0, :cond_0

    .line 315
    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 318
    .local v1, "origUrl":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "targetURI":Ljava/net/URI;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 324
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Ljava/net/URI;

    return-object v0

    .line 319
    .end local v0    # "targetURI":Ljava/net/URI;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "url should not be null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 30
    .param p1, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "resCode"    # I
    .param p4, "resMsg"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "finally,handleResponse"

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "HttpWorker"

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 2138
    .local v7, "responseEntity":Lorg/apache/http/HttpEntity;
    const/4 v8, 0x0

    .line 2139
    .local v8, "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    if-eqz v7, :cond_9

    .line 2140
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_8

    .line 2141
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2141
    invoke-static {v6, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    const/4 v9, 0x0

    .line 2145
    .local v9, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v9, v10

    .line 2147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2150
    .local v10, "time":J
    const-wide/16 v12, 0x0

    invoke-virtual {v1, v7, v12, v13, v9}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;

    move-result-object v14

    .line 2151
    .local v14, "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 2154
    .local v15, "data":[B
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isUseSelfEncrypt()Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v16, :cond_3

    :try_start_1
    iget-wide v0, v14, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;->compressedSize:J

    cmp-long v17, v0, v12

    if-lez v17, :cond_2

    .line 2155
    if-eqz v15, :cond_0

    array-length v0, v15

    if-nez v0, :cond_1

    .line 2156
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->isUseSelfEncryptWhenDataIsNull(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2159
    const-string v0, "Do not decrypt when data is null by config."

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    goto :goto_0

    .line 2162
    :cond_1
    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->clientRpcPack:Lcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;

    invoke-static {v15, v0}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->getDecryptedContent([BLcom/alipay/mobile/common/transport/http/selfencrypt/ClientRpcPack;)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v0

    goto :goto_0

    .line 2201
    .end local v10    # "time":J
    .end local v14    # "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .end local v15    # "data":[B
    :catchall_0
    move-exception v0

    move-object/from16 v17, v7

    move-object v7, v0

    goto/16 :goto_4

    .line 2154
    .restart local v10    # "time":J
    .restart local v14    # "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .restart local v15    # "data":[B
    :cond_2
    move-object/from16 v1, p0

    goto :goto_0

    .line 2201
    .end local v10    # "time":J
    .end local v14    # "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .end local v15    # "data":[B
    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v17, v7

    move-object v7, v0

    goto/16 :goto_4

    .line 2166
    .restart local v10    # "time":J
    .restart local v14    # "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .restart local v15    # "data":[B
    :cond_3
    :goto_0
    :try_start_3
    const-string v0, "ETag"

    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    const/4 v12, 0x0

    move-object v13, v12

    .line 2168
    .local v13, "headers":[Lorg/apache/http/Header;
    move-object v12, v0

    .end local v13    # "headers":[Lorg/apache/http/Header;
    .local v12, "headers":[Lorg/apache/http/Header;
    array-length v0, v0

    const/4 v13, 0x0

    if-lez v0, :cond_6

    .line 2169
    invoke-static {v15}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a([B)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/16 v16, 0x0

    move-object/from16 v17, v16

    .line 2170
    .local v17, "_data":[B
    move-object/from16 v18, v0

    .end local v17    # "_data":[B
    .local v18, "_data":[B
    if-nez v0, :cond_4

    .line 2172
    :try_start_4
    iput-boolean v13, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:Z

    .line 2173
    const-string v0, "[handleResponse]  Etag fail"

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v16, v12

    goto/16 :goto_2

    .line 2174
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseEtag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2175
    aget-object v0, v12, v13

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2178
    .local v0, "etagValue":Ljava/lang/String;
    new-instance v13, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    invoke-direct {v13}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;-><init>()V

    const/16 v16, 0x0

    .line 2179
    .local v16, "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    move-object/from16 v17, v13

    .end local v16    # "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    .local v17, "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    invoke-virtual {v13, v0}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setEtag(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2180
    move-object/from16 v13, v18

    move-object/from16 v29, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v29

    .end local v18    # "_data":[B
    .local v7, "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    .local v13, "_data":[B
    .local v17, "responseEntity":Lorg/apache/http/HttpEntity;
    :try_start_6
    invoke-virtual {v7, v13}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V

    .line 2181
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v18, v8

    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .local v18, "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :try_start_7
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setTypeHeader(Lorg/apache/http/Header;)V

    .line 2182
    iget-object v8, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    const/16 v20, 0x0

    const-string v21, "ETag"

    move-object/from16 v16, v12

    .end local v12    # "headers":[Lorg/apache/http/Header;
    .local v16, "headers":[Lorg/apache/http/Header;
    iget-object v12, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Ljava/lang/String;

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 2183
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    const-wide/32 v26, 0x240c8400

    const-string v28, "Serializable"

    .line 2182
    move-object/from16 v19, v8

    move-object/from16 v22, v12

    move-object/from16 v23, v7

    invoke-virtual/range {v19 .. v28}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->putSerializable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V

    .line 2185
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:Z

    .line 2186
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "[handleResponse]  Etag success \uff0c etag = "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2201
    .end local v0    # "etagValue":Ljava/lang/String;
    .end local v7    # "crw":Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
    .end local v10    # "time":J
    .end local v13    # "_data":[B
    .end local v14    # "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .end local v15    # "data":[B
    .end local v16    # "headers":[Lorg/apache/http/Header;
    .end local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v8

    move-object v7, v0

    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    goto :goto_4

    .line 2174
    .end local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .local v7, "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v10    # "time":J
    .restart local v12    # "headers":[Lorg/apache/http/Header;
    .restart local v14    # "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .restart local v15    # "data":[B
    .local v18, "_data":[B
    :cond_5
    move-object/from16 v17, v7

    move-object/from16 v16, v12

    move-object/from16 v13, v18

    move-object/from16 v18, v8

    .line 2188
    .end local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .end local v12    # "headers":[Lorg/apache/http/Header;
    .restart local v16    # "headers":[Lorg/apache/http/Header;
    .restart local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .local v18, "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :goto_1
    goto :goto_2

    .line 2190
    .end local v16    # "headers":[Lorg/apache/http/Header;
    .end local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v12    # "headers":[Lorg/apache/http/Header;
    :cond_6
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v16, v12

    .end local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .end local v12    # "headers":[Lorg/apache/http/Header;
    .restart local v16    # "headers":[Lorg/apache/http/Header;
    .restart local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    iput-boolean v13, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:Z

    .line 2193
    :goto_2
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v10

    invoke-virtual {v0, v7, v8}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    .line 2196
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v7

    invoke-direct {v0, v7, v3, v4, v15}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v8, v0

    .line 2198
    .end local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :try_start_8
    invoke-virtual {v1, v8, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2201
    .end local v10    # "time":J
    .end local v14    # "responseSizeModel":Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .end local v15    # "data":[B
    .end local v16    # "headers":[Lorg/apache/http/Header;
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d(Ljava/lang/String;)V

    .line 2205
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2209
    goto :goto_3

    .line 2206
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 2208
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2212
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent()V

    .line 2213
    invoke-static {v6, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    goto :goto_7

    .line 2201
    :catchall_3
    move-exception v0

    move-object v7, v0

    goto :goto_4

    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :catchall_4
    move-exception v0

    move-object v7, v0

    move-object/from16 v8, v18

    goto :goto_4

    .end local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :catchall_5
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object v7, v0

    .end local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    :goto_4
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d(Ljava/lang/String;)V

    .line 2203
    if-eqz v9, :cond_7

    .line 2205
    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 2209
    goto :goto_5

    .line 2206
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 2208
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v6, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2212
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent()V

    .line 2213
    invoke-static {v6, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 2140
    .end local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_8
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    goto :goto_6

    .line 2139
    .end local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :cond_9
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 2215
    .end local v7    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v17    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :goto_6
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v5, 0x130

    if-ne v0, v5, :cond_a

    .line 2216
    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    move-result-object v8

    .end local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    goto :goto_7

    .line 2218
    .end local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :cond_a
    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Lorg/apache/http/HttpResponse;)V

    move-object/from16 v8, v18

    .line 2221
    .end local v18    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v8    # "response":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent()V

    .line 2222
    return-object v8
.end method

.method protected handleResponseForRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .param p2, "httpParams"    # Lorg/apache/http/params/HttpParams;
    .param p3, "httpResponse"    # Lorg/apache/http/HttpResponse;

    const-string v0, "HttpWorker"

    .line 1714
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1715
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_request"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "h5_http_request"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1717
    return-object p3

    .line 1720
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, p3, v2}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 1721
    if-nez v1, :cond_1

    .line 1722
    return-object p3

    .line 1725
    :cond_1
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processRespCookies(Lorg/apache/http/HttpResponse;)V

    .line 1727
    iget v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 1731
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:I

    .line 1734
    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    move-object v1, v3

    goto :goto_0

    .line 1735
    :catch_0
    move-exception v1

    .line 1736
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Wait cookie sync. "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, p3, v4}, Lorg/apache/http/client/RedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v2

    .line 1741
    .local v1, "locationURI":Ljava/net/URI;
    move-object v1, v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g(Ljava/lang/String;)V

    .line 1742
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    .line 1745
    new-instance v2, Lorg/apache/http/HttpHost;

    .line 1746
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 1747
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 1748
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1751
    .local v2, "newTargetHost":Lorg/apache/http/HttpHost;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 1752
    .local v3, "redirectRequest":Lorg/apache/http/client/methods/HttpGet;
    move-object v3, v4

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    .line 1753
    invoke-virtual {v3, p2}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 1754
    const-string v4, "Cookie"

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpGet;->removeHeaders(Ljava/lang/String;)V

    .line 1755
    const-string v5, "Cookie2"

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpGet;->removeHeaders(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->getCookie(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1757
    .local v5, "cookie":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v4

    const-string v6, "REDIRECT"

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v4, "Redirect request new headers : "

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->printHeaderLog([Lorg/apache/http/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1766
    goto :goto_1

    .line 1764
    :catch_1
    move-exception v4

    .line 1765
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1770
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-static {v4, v2, v3, v6}, Lcom/alipay/mobile/common/transport/http/inner/HttpClientPlannerHelper;->determineRoute(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    .line 1771
    .local v4, "newHttpRoute":Lorg/apache/http/conn/routing/HttpRoute;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.route.forced-route"

    invoke-interface {v6, v7, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1773
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "By Http/Https to redirect request. operationType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  method="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1773
    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, v2, v3, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->doExecuteRequestByHttpClient(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1780
    .local v0, "newHttpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-virtual {p0, v3, v6, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseForRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    return-object v6

    .line 1728
    .end local v0    # "newHttpResponse":Lorg/apache/http/HttpResponse;
    .end local v1    # "locationURI":Ljava/net/URI;
    .end local v2    # "newTargetHost":Lorg/apache/http/HttpHost;
    .end local v3    # "redirectRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "newHttpRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v5    # "cookie":Ljava/lang/String;
    :cond_2
    new-instance v0, Lorg/apache/http/client/RedirectException;

    const-string v1, "Maximum redirects (5) exceeded"

    invoke-direct {v0, v1}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .locals 7
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 2268
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;-><init>()V

    .line 2269
    .local v0, "header":Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2270
    .local v4, "h":Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->addHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    .end local v4    # "h":Lorg/apache/http/Header;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2272
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 2680
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 2681
    .local v0, "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 2682
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v3, v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    const-string/jumbo v1, "reqDataDigest"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2685
    .local v2, "reqDataDigest":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2687
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2691
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2695
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->hashcode(I)I

    move-result v1

    return v1
.end method

.method hashcode(I)I
    .locals 2
    .param p1, "h"    # I

    .line 2702
    ushr-int/lit8 v0, p1, 0x14

    ushr-int/lit8 v1, p1, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p1

    .line 2703
    move p1, v0

    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method protected isCanUseExtTransport()Z
    .locals 6

    .line 2030
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string v1, "force_http"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2031
    .local v1, "forceHttp":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2032
    return v2

    .line 2035
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2036
    return v2

    .line 2040
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2041
    const-string v0, "HttpWorker"

    const-string v3, "===> Rpc push process does not use spdy <==="

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    return v2

    .line 2045
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q()Ljava/net/URL;

    move-result-object v0

    .line 2048
    .local v0, "targetURL":Ljava/net/URL;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string v4, "Version"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isContainerHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2049
    return v2

    .line 2053
    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2054
    return v2

    .line 2058
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isSwitchRpc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2059
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->AFTER_LOGIN_GO_EXT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v5, "T"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v3

    .line 2060
    if-nez v3, :cond_5

    .line 2061
    return v2

    .line 2065
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method public isRpcRequest()Z
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-byte v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->bizType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShouldReportTraffic()Z
    .locals 1

    .line 3006
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->v:Z

    return v0
.end method

.method protected isTraficConsumeAccept(Ljava/lang/String;)Z
    .locals 1
    .param p1, "traficCheckUrl"    # Ljava/lang/String;

    .line 1302
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isUseSelfEncrypt()Z
    .locals 7

    const-string v0, "HttpWorker"

    .line 3032
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isRpcEncryptSwitchOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3033
    const-string/jumbo v2, "rpcSelfEncryptSwitch is off"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    return v1

    .line 3037
    :cond_0
    const/4 v2, 0x0

    .line 3038
    .local v2, "isGetMethod":Z
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3039
    const/4 v2, 0x1

    .line 3042
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3043
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isRpc: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,isGetMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,isNeedSelfEncrypt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isNeedSelfEncrypt()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,isInGwWhiteList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 3045
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isInGwWhiteList(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,isDefaultGlobalCrypt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3046
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isDefaultGlobalCrypt()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3043
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isNeedSelfEncrypt()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 3050
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isInGwWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    .line 3053
    .local v3, "result":Z
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/SelfEncryptUtils;->isDefaultGlobalCrypt()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, " ,result: "

    if-eqz v4, :cond_4

    .line 3054
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isDisableEncrypt()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 3055
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isDisableEncrypt: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isDisableEncrypt()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3057
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isEnableEncrypt()Z

    move-result v4

    move v3, v4

    .line 3058
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isEnableEncrypt: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isEnableEncrypt()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3061
    :goto_1
    return v3

    .line 3063
    .end local v3    # "result":Z
    :cond_5
    return v1

    .line 3065
    .end local v2    # "isGetMethod":Z
    :catchall_0
    move-exception v2

    .line 3066
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isUseSelfEncrypt ex:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    .end local v2    # "ex":Ljava/lang/Throwable;
    return v1
.end method

.method protected monitorErrorLog(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1277
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v0

    const-string v1, "HttpWorker"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isMdapApi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1280
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1282
    return-void
.end method

.method protected monitorLog()Ljava/lang/String;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->doMonitorLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyNetworkState()V
    .locals 6

    .line 643
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    return-void

    .line 651
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    .line 653
    .local v0, "extTransportOffice":Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 660
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    .line 661
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->networkStateNotify(Z)V

    return-void

    .line 662
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mLocalContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v3, v5}, Lorg/apache/http/client/RedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 664
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_6

    .line 665
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->networkStateNotify(Z)V

    return-void

    .line 667
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    if-lez v1, :cond_5

    .line 668
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->networkStateNotify(Z)V

    return-void

    .line 669
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 671
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->networkStateNotify(Z)V

    .line 673
    :cond_6
    return-void

    .line 654
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 655
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->networkStateNotify(Z)V

    .line 657
    :cond_8
    return-void
.end method

.method protected parserMaxage([Ljava/lang/String;)J
    .locals 5
    .param p1, "strs"    # [Ljava/lang/String;

    .line 2343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2344
    aget-object v1, p1, v0

    .line 2345
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    if-eqz v2, :cond_0

    .line 2347
    add-int/lit8 v2, v0, 0x1

    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 2348
    :catch_0
    move-exception v2

    .line 2349
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parserMaxage exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HttpWorker"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2353
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected preCheck()V
    .locals 5

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTaskState(I)V

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setNetworkThread(Ljava/lang/Thread;)V

    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 590
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->IGNORE_NETWORK_STATE:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 591
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 592
    .local v2, "ignoreNetState":Ljava/lang/String;
    const-string v3, "T"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "API="

    const-string v4, "HttpWorker"

    if-eqz v0, :cond_0

    .line 593
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->w:Z

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ignoreNetState on,go on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isAllowNonNet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",allowNonNet is set,go on.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "The network is not available"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 604
    .end local v2    # "ignoreNetState":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "traficCheckUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 614
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g(Ljava/lang/String;)V

    .line 615
    return-void

    .line 610
    :cond_4
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " trafic beyond limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 581
    .end local v0    # "traficCheckUrl":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel request :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 582
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cancelMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method

.method protected printHeaderLog([Lorg/apache/http/Header;)V
    .locals 6
    .param p1, "allHeaders"    # [Lorg/apache/http/Header;

    .line 1995
    if-nez p1, :cond_0

    .line 1996
    return-void

    .line 1999
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2000
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 2001
    .local v3, "header":Lorg/apache/http/Header;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    .end local v3    # "header":Lorg/apache/http/Header;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2004
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "printHeaderLog.  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    return-void
.end method

.method protected processException(Ljava/lang/String;ILjava/lang/Throwable;Z)Lcom/alipay/mobile/common/transport/Response;
    .locals 7
    .param p1, "exceptionName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "canForceRetry"    # Z

    .line 967
    :try_start_0
    const-string v0, "HttpWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processException,code=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] canRetry=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] e=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 969
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->incrementRpcErrorCount()V

    .line 971
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "msg":Ljava/lang/String;
    instance-of v1, p3, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 973
    move-object v1, p3

    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    move-object v3, v2

    .line 974
    .local v3, "he":Lcom/alipay/mobile/common/transport/http/HttpException;
    move-object v3, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v1

    move p2, v1

    .line 975
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 979
    .end local v3    # "he":Lcom/alipay/mobile/common/transport/http/HttpException;
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    const/4 p4, 0x0

    .line 983
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v3, "CANCEL"

    const-string v4, "T"

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const/16 v1, 0xd

    if-eq p2, v1, :cond_1

    .line 987
    const/16 p2, 0xd

    .line 988
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 993
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Ljava/util/Map;

    move-result-object v1

    .line 995
    .local v1, "extMap":Ljava/util/Map;
    instance-of v3, p3, Lcom/alipay/mobile/common/transport/http/HttpException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, ":"

    const-string v5, "ERROR"

    if-eqz v3, :cond_4

    .line 996
    :try_start_1
    move-object v3, p3

    check-cast v3, Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 997
    .local v2, "he":Lcom/alipay/mobile/common/transport/http/HttpException;
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    .line 998
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 998
    invoke-static {v3, v5, v4}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->monitorErrorLog(Ljava/lang/Throwable;)V

    .line 1002
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;Ljava/util/Map;)V

    .line 1004
    .end local v2    # "he":Lcom/alipay/mobile/common/transport/http/HttpException;
    :cond_3
    goto :goto_2

    .line 1006
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->monitorErrorLog(Ljava/lang/Throwable;)V

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .local v2, "errorStringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 1010
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1011
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " System error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    .line 1017
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1016
    invoke-static {v3, v5, v4}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;ILjava/lang/Throwable;Ljava/util/Map;)V

    .line 1022
    .end local v2    # "errorStringBuilder":Ljava/lang/StringBuilder;
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1023
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->canRetryCurrTaskForSubBiz(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p4, :cond_8

    .line 1024
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1025
    :cond_7
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1062
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->whenExceptionFlushUploadLog()V

    .line 1025
    return-object v2

    .line 1027
    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1031
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->monitorLog()Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v2, "perfLog":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v3

    .line 1037
    .end local v2    # "perfLog":Ljava/lang/String;
    :cond_9
    goto :goto_3

    .line 1035
    :catchall_0
    move-exception v2

    .line 1043
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1044
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setFailedException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1046
    :try_start_5
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v2, v3, p2, v0}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1049
    goto :goto_4

    .line 1047
    :catchall_1
    move-exception v2

    .line 1052
    :cond_a
    :goto_4
    :try_start_6
    instance-of v2, p3, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v2, :cond_b

    .line 1053
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:Ljava/lang/Throwable;

    .line 1054
    move-object v2, p3

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpException;

    .end local p1    # "exceptionName":Ljava/lang/String;
    .end local p2    # "code":I
    .end local p3    # "e":Ljava/lang/Throwable;
    .end local p4    # "canForceRetry":Z
    throw v2

    .line 1057
    .restart local p1    # "exceptionName":Ljava/lang/String;
    .restart local p2    # "code":I
    .restart local p3    # "e":Ljava/lang/Throwable;
    .restart local p4    # "canForceRetry":Z
    :cond_b
    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0, p3}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1058
    .local v2, "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    iput-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:Ljava/lang/Throwable;

    .line 1059
    nop

    .end local p1    # "exceptionName":Ljava/lang/String;
    .end local p2    # "code":I
    .end local p3    # "e":Ljava/lang/Throwable;
    .end local p4    # "canForceRetry":Z
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1062
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "extMap":Ljava/util/Map;
    .end local v2    # "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    .restart local p1    # "exceptionName":Ljava/lang/String;
    .restart local p2    # "code":I
    .restart local p3    # "e":Ljava/lang/Throwable;
    .restart local p4    # "canForceRetry":Z
    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->whenExceptionFlushUploadLog()V

    throw v0
.end method

.method protected processExtTransException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 2707
    new-instance v0, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "HttpWorker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2709
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2714
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 2715
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 2716
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2720
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isDowngradeToHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2724
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/RetryService;->getInstance()Lcom/alipay/mobile/common/transport/utils/RetryService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-boolean v3, v3, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/transport/utils/RetryService;->isSupportResend(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    const-string/jumbo v0, "\u6269\u5c55\u4f20\u8f93\u6a21\u5757\u8fde\u63a5\u5931\u8d25,\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5"

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2729
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s()V

    .line 2730
    return-void

    .line 2725
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8fde\u63a5\u5931\u8d25,\u4e0d\u5141\u8bb8\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    throw p1

    .line 2721
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8fde\u63a5\u5931\u8d25,\u91cd\u8bd5\u8d85\u8fc73\u6b21: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    throw p1

    .line 2717
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8fde\u63a5\u5931\u8d25,\u6ca1\u6709\u5f00\u542f\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    throw p1

    .line 2710
    :cond_3
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel request :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 2711
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cancelMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method

.method protected processRespCookies(Lorg/apache/http/HttpResponse;)V
    .locals 11
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 2743
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "HttpWorker"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2744
    const-string/jumbo v0, "processRespCookies. Another process is not operating a cookie."

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    return-void

    .line 2748
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshHelper;->checkIn(Lcom/alipay/mobile/common/transport/http/HttpWorker;Landroid/content/Context;)V

    .line 2750
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 2752
    .local v0, "cookies":Ljava/util/List;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/util/List;)V

    .line 2754
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2755
    const-string/jumbo v2, "processRespCookies. cookies is empty"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    return-void

    .line 2759
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2760
    .local v2, "localCacheCookies":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/cookie/Cookie;

    .line 2763
    .local v6, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2764
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2765
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2768
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2769
    .local v4, "cookieStrBuilder":Ljava/lang/StringBuilder;
    move-object v4, v7

    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2770
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2771
    const-string v7, "; domain="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    :cond_3
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2774
    const-string v7, "; path="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    :cond_4
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2778
    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    const-string v8, "EEE, dd-MMM-yyyy HH:mm:ss z"

    invoke-static {v7, v8}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2779
    .local v7, "cookieExpire":Ljava/lang/String;
    const-string v8, "; expires="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2782
    nop

    .end local v7    # "cookieExpire":Ljava/lang/String;
    goto :goto_1

    .line 2780
    :catchall_0
    move-exception v7

    .line 2781
    .local v7, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "expires format exception. "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2785
    const-string v7, "; Secure"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2788
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2789
    .local v7, "cookieString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetUri()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2790
    .local v8, "targetUriStr":Ljava/lang/String;
    invoke-interface {v6}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v9

    .line 2791
    .local v5, "domain":Ljava/lang/String;
    move-object v5, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2792
    move-object v5, v8

    goto :goto_2

    .line 2794
    :cond_7
    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2795
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2799
    :cond_8
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "set cookie. domain="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  cookie="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " .url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    iget-object v9, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v9}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->applyCookie(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2801
    .end local v4    # "cookieStrBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "domain":Ljava/lang/String;
    .end local v6    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v7    # "cookieString":Ljava/lang/String;
    .end local v8    # "targetUriStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 2803
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2804
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->setCookies(Ljava/lang/String;Ljava/util/Map;)V

    .line 2806
    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2810
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/CookieAccessHelper;->asyncFlushCookie()V

    .line 2811
    return-void
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    .locals 5
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpUrlRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 2596
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 2597
    .local v0, "resCode":I
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 2599
    .local v1, "resMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpWorker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    const/16 v2, 0xce

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->willHandleOtherCode(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2606
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Lorg/apache/http/HttpResponse;)V

    .line 2607
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent()V

    .line 2608
    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2609
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    .line 2612
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;)V

    .line 2614
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v2

    return-object v2
.end method

.method protected putCommonMonitorDataItems()V
    .locals 15

    const-string v0, "EagleId"

    const-string v1, "bizId"

    .line 721
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 722
    .local v4, "switchLogTag":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string v5, "TAG"

    invoke-static {v2, v5, v4}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isBgRpc()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "BG"

    const-string v6, "FG"

    const-string v7, "PRIO"

    if-eqz v2, :cond_1

    .line 727
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    invoke-static {v2, v7, v5}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    invoke-static {v2, v7, v6}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :goto_0
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "T"

    if-eqz v2, :cond_2

    .line 734
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string v8, "IGN_ERR"

    invoke-static {v2, v8, v7}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2ContainerAnyway(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "GROUND"

    if-eqz v2, :cond_3

    .line 739
    :try_start_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    invoke-static {v2, v8, v6}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 741
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    invoke-static {v2, v8, v5}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getQosLevel()I

    move-result v2

    .line 746
    .local v2, "qosLevel":I
    invoke-static {}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getInstance()Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getRto()D

    move-result-wide v5

    .line 747
    .local v5, "qosRto":D
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v8

    const-string v9, "QOS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "%.4f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    if-eqz v8, :cond_7

    .line 751
    const-string/jumbo v9, "via"

    invoke-interface {v8, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    move-object v9, v3

    .line 752
    .local v9, "via":Lorg/apache/http/Header;
    move-object v9, v8

    if-eqz v8, :cond_4

    .line 753
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    move-object v10, v3

    .line 754
    .local v10, "value":Ljava/lang/String;
    move-object v10, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 755
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v8

    const-string v11, "VIA"

    const-string v12, ","

    const-string/jumbo v13, "\uff0c"

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v11, v12}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 752
    .end local v10    # "value":Ljava/lang/String;
    :cond_4
    move-object v10, v3

    .line 758
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v8, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 759
    .local v10, "eagleIdHeader":Lorg/apache/http/Header;
    move-object v10, v8

    if-eqz v8, :cond_6

    .line 760
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 761
    .local v3, "val":Ljava/lang/String;
    move-object v3, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 762
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v8

    invoke-static {v8, v0, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .end local v3    # "val":Ljava/lang/String;
    .end local v9    # "via":Lorg/apache/http/Header;
    .end local v10    # "eagleIdHeader":Lorg/apache/http/Header;
    :cond_6
    move-object v3, v9

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v3, "bizId":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 769
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getDataLength()J

    move-result-wide v0

    cmp-long v10, v0, v8

    if-lez v10, :cond_9

    .line 774
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string v1, "REQ_RAW_SIZE"

    iget-object v10, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getDataLength()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "GET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 780
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v10, "METHOD"

    invoke-static {v1, v10, v0}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isUseSelfEncrypt()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 785
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v10, "SLEN"

    invoke-static {v1, v10, v7}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/processinfo/ProcessInfoUtil;->getProcessStartTime()J

    move-result-wide v10

    .line 790
    .local v10, "processStartTime":J
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->isRpcRequest()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrgentFlag()Z

    move-result v1

    if-eqz v1, :cond_c

    cmp-long v1, v10, v8

    if-lez v1, :cond_c

    .line 791
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string v7, "RPC_PS_INT"

    iget-wide v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    sub-long/2addr v8, v10

    .line 792
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 791
    invoke-static {v1, v7, v8}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_c
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/alipay/mobile/common/transport/utils/MonitorLogRecordUtil;->recordMultMainProcessItem(Lcom/alipay/mobile/common/transport/context/TransportContext;Landroid/content/Context;)V

    .line 799
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 802
    .end local v0    # "method":Ljava/lang/String;
    .end local v2    # "qosLevel":I
    .end local v3    # "bizId":Ljava/lang/String;
    .end local v4    # "switchLogTag":Ljava/lang/String;
    .end local v5    # "qosRto":D
    .end local v10    # "processStartTime":J
    return-void

    .line 800
    :catchall_0
    move-exception v0

    .line 801
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putCommonMonitorDataItems ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method protected putStalledTime()V
    .locals 5

    .line 1907
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STALLED_TIME"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-wide v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->startExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RPC_ALL_TIME"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/DataItemsUtil;->putDataItem2DataContainer(Lcom/alipay/mobile/common/transport/monitor/DataContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    :cond_0
    return-void
.end method

.method protected putSubCommonMonitor()V
    .locals 0

    .line 717
    return-void
.end method

.method protected resetRequestHeaders()V
    .locals 7

    .line 1127
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x0

    .line 1128
    .local v1, "headers":[Lorg/apache/http/Header;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1129
    .local v4, "header":Lorg/apache/http/Header;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    .end local v4    # "header":Lorg/apache/http/Header;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1133
    .end local v1    # "headers":[Lorg/apache/http/Header;
    :cond_0
    return-void

    .line 1131
    :catchall_0
    move-exception v0

    .line 1132
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetRequestHeaders ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpWorker"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public setCurrentThreadPoolExecutor(Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;)V
    .locals 0
    .param p1, "currentThreadPoolExecutor"    # Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 3022
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mCurrentThreadPoolExecutor:Lcom/alipay/mobile/common/transport/concurrent/ActThreadPoolExecutor;

    .line 3023
    return-void
.end method

.method protected setProxyModel(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "httpParams"    # Lorg/apache/http/params/HttpParams;
    .param p2, "proxy"    # Lorg/apache/http/HttpHost;

    .line 1867
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpHost;)V

    .line 1868
    const-string v0, "http.route.default-proxy"

    invoke-interface {p1, v0, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1869
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1870
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:B

    .line 1872
    :cond_0
    return-void
.end method

.method public setShouldReportTraffic(Z)V
    .locals 0
    .param p1, "shouldReportTraffic"    # Z

    .line 3010
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->v:Z

    .line 3011
    return-void
.end method

.method protected setTimeout()V
    .locals 12

    .line 1547
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 1548
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTimeout()J

    move-result-wide v1

    .line 1549
    .local v1, "custTimeout":J
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getReadTimeout(Landroid/content/Context;)I

    move-result v3

    int-to-long v3, v3

    .line 1550
    .local v3, "networkTimeout":J
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1551
    .local v5, "timeout":J
    long-to-int v7, v5

    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1553
    iget-object v7, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConnTimeout(Landroid/content/Context;)I

    move-result v7

    .line 1555
    .local v7, "connTimeout":I
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOriginRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isRadicalStrategy()Z

    move-result v8

    const-string v9, "HttpWorker"

    if-eqz v8, :cond_0

    .line 1556
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/alipay/mobile/common/transport/context/TransportContext;->mRadicalStrategy:Z

    .line 1558
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v8

    sget-object v10, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RADICAL_STRATEGY_TIME_OUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v8, v10}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v8

    .line 1559
    const/16 v10, 0x1388

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1560
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "[setTimeout] Enable radical strategy. connTimeout = "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    :cond_0
    invoke-static {v0, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1566
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget v8, v8, Lcom/alipay/mobile/common/transport/context/TransportContext;->allowedRetryDuration:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    .line 1567
    iget-object v8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    int-to-long v10, v7

    add-long/2addr v10, v5

    long-to-int v11, v10

    iput v11, v8, Lcom/alipay/mobile/common/transport/context/TransportContext;->allowedRetryDuration:I

    .line 1569
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setTimeout. custReadTimeout="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", networkReadTimeout="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", endReadtimeout="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", connTimeout="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    return-void
.end method

.method protected whenExceptionFlushUploadLog()V
    .locals 3

    .line 1138
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_NETWORK:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 1139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_NETWORK:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    return-void

    .line 1140
    :catchall_0
    move-exception v0

    .line 1143
    return-void
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1
    .param p1, "resCode"    # I
    .param p2, "resMsg"    # Ljava/lang/String;

    .line 2366
    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    .line 2367
    const/4 v0, 0x1

    return v0

    .line 2369
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;
    .locals 30

    .line 2392
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, ",header content-length: "

    const-string v4, " ,readed data length: "

    const-string v5, " ,url="

    const-string/jumbo v6, "operationType="

    const-string v7, "HttpWorker"

    const-string v8, "READ_TIME"

    const-string v9, "ALL_TIME"

    if-eqz v2, :cond_c

    .line 2397
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 2398
    new-instance v11, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;

    invoke-direct {v11, v10}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2399
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getUngzippedContent(Ljava/io/InputStream;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v12

    .line 2402
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r()Z

    move-result v0

    .line 2404
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    .line 2405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 2406
    nop

    .line 2407
    nop

    .line 2408
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    add-long v8, p2, v13

    .line 2410
    move-object/from16 v19, v10

    const/16 v10, 0x800

    :try_start_0
    new-array v10, v10, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-wide v3, v15

    move-wide/from16 v5, p2

    .line 2411
    :goto_0
    move-wide/from16 v24, v15

    :try_start_1
    invoke-virtual {v12, v10}, Ljava/io/InputStream;->read([B)I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object/from16 v16, v12

    const/4 v12, -0x1

    if-eq v15, v12, :cond_2

    :try_start_2
    iget-object v12, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v12}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 2412
    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(ZJ)V

    .line 2413
    const/4 v12, 0x0

    invoke-virtual {v2, v10, v12, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 2414
    move-wide/from16 v26, v3

    int-to-long v2, v15

    add-long/2addr v5, v2

    .line 2415
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v13, v2

    if-lez v4, :cond_0

    .line 2416
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v28, v13

    long-to-double v12, v5

    long-to-double v14, v8

    div-double/2addr v12, v14

    :try_start_3
    invoke-interface {v2, v3, v12, v13}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V

    goto :goto_1

    .line 2415
    :cond_0
    move-wide/from16 v28, v13

    .line 2418
    :goto_1
    if-eqz v0, :cond_1

    .line 2419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v2, p4

    move-object/from16 v12, v16

    move-wide/from16 v15, v24

    move-wide/from16 v13, v28

    goto :goto_0

    .line 2418
    :cond_1
    move-object/from16 v2, p4

    move-object/from16 v12, v16

    move-wide/from16 v15, v24

    move-wide/from16 v3, v26

    move-wide/from16 v13, v28

    goto :goto_0

    .line 2431
    :catchall_0
    move-exception v0

    move-wide v12, v13

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    goto/16 :goto_6

    .line 2411
    :cond_2
    move-wide/from16 v28, v13

    .line 2422
    :try_start_4
    invoke-virtual/range {p4 .. p4}, Ljava/io/OutputStream;->flush()V

    .line 2425
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v0, :cond_6

    .line 2430
    :try_start_5
    new-instance v2, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;

    invoke-virtual {v11}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->getReaded()I

    move-result v0

    int-to-long v3, v0

    sub-long v8, v5, p2

    invoke-direct {v2, v3, v4, v8, v9}, Lcom/alipay/mobile/common/transport/http/ResponseSizeModel;-><init>(JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2448
    :try_start_6
    invoke-virtual/range {p4 .. p4}, Ljava/io/OutputStream;->flush()V

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 2450
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v9, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v28

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2449
    invoke-static {v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    invoke-direct {v1, v11}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2456
    goto :goto_2

    .line 2454
    :catchall_1
    move-exception v0

    .line 2458
    :goto_2
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    if-eqz v0, :cond_4

    .line 2459
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    move-object/from16 v10, v18

    invoke-interface {v0, v10}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2461
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 2463
    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    move-object/from16 v14, v17

    invoke-interface {v0, v14}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2465
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v24

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    :cond_4
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/common/transport/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 2469
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/common/transport/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 2470
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent()V

    .line 2473
    if-eqz p1, :cond_5

    .line 2474
    :try_start_7
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 2476
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 2478
    :cond_5
    :goto_3
    nop

    .line 2430
    :goto_4
    return-object v2

    .line 2431
    :catchall_3
    move-exception v0

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    move-wide/from16 v12, v28

    goto/16 :goto_6

    .line 2426
    :cond_6
    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    move-wide/from16 v12, v28

    :try_start_8
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-wide/from16 v17, v5

    :try_start_9
    const-string v5, "Cancel request :"

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 2427
    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",cancelMsg:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mOriginRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCancelMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2431
    :catchall_4
    move-exception v0

    move-wide/from16 v5, v17

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    move-wide/from16 v12, v28

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object/from16 v16, v12

    move-wide v12, v13

    move-object/from16 v14, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    :goto_5
    move-wide/from16 v17, v5

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v9, v3

    move-object v8, v4

    move-object v4, v5

    move-object v3, v6

    move-wide/from16 v24, v15

    move-object/from16 v10, v18

    move-object/from16 v16, v12

    move-wide v12, v13

    move-object/from16 v14, v17

    move-wide/from16 v5, p2

    .line 2432
    :goto_6
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "writeData exception:"

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_8

    .line 2437
    instance-of v2, v0, Ljava/io/IOException;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    if-eqz v2, :cond_7

    .line 2438
    :try_start_b
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 2447
    :catchall_9
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v14

    goto :goto_8

    .line 2440
    :cond_7
    :try_start_c
    new-instance v2, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-object/from16 v17, v14

    :try_start_d
    const-string v14, "HttpWorker Request Error! "

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2442
    throw v2

    .line 2436
    :cond_8
    move-object/from16 v17, v14

    check-cast v0, Ljava/net/SocketTimeoutException;

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 2447
    :catchall_a
    move-exception v0

    goto :goto_7

    :catchall_b
    move-exception v0

    move-object/from16 v17, v14

    :goto_7
    move-object v2, v0

    .line 2448
    :goto_8
    :try_start_e
    invoke-virtual/range {p4 .. p4}, Ljava/io/OutputStream;->flush()V

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getTargetHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 2450
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2449
    invoke-static {v7, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    invoke-direct {v1, v11}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 2456
    goto :goto_9

    .line 2454
    :catchall_c
    move-exception v0

    .line 2458
    :goto_9
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    if-eqz v0, :cond_a

    .line 2459
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2461
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 2463
    :cond_9
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    move-object/from16 v3, v17

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2465
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v24

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    :cond_a
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/common/transport/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 2469
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/common/transport/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 2470
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent()V

    .line 2473
    if-eqz p1, :cond_b

    .line 2474
    :try_start_f
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    goto :goto_a

    .line 2476
    :catchall_d
    move-exception v0

    goto :goto_b

    .line 2478
    :cond_b
    :goto_a
    nop

    :goto_b
    throw v2

    .line 2393
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->consumeContent()V

    .line 2394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output stream may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
