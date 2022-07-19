.class public Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;
.super Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;
.source "HttpCaller.java"


# static fields
.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/Config;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 9
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "id"    # I
    .param p4, "op"    # Ljava/lang/String;
    .param p5, "reqData"    # [B
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 136
    move-object v7, p0

    move-object/from16 v8, p8

    iget-object v0, v8, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    .line 108
    const-string v0, ""

    iput-object v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->i:Ljava/lang/String;

    .line 110
    iput-object v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->j:Ljava/lang/String;

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->l:J

    .line 117
    iput-wide v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->m:J

    .line 119
    iput-wide v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->n:J

    .line 121
    iput-wide v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->o:J

    .line 124
    const/4 v0, 0x0

    iput v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->p:I

    .line 137
    move-object v0, p1

    iput-object v0, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    .line 138
    move-object/from16 v1, p7

    iput-object v1, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    .line 139
    iput-object v8, v7, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 140
    return-void
.end method

.method private static a(I)I
    .locals 2
    .param p0, "code"    # I

    const/4 v0, 0x0

    .line 386
    .local v0, "ret":I
    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0x32

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 421
    const/16 v0, 0x9

    goto :goto_0

    .line 409
    :pswitch_0
    const/16 v0, 0x10

    .line 410
    goto :goto_0

    .line 412
    :pswitch_1
    const/16 v0, 0xf

    .line 413
    goto :goto_0

    .line 394
    :pswitch_2
    const/16 v0, 0x8

    .line 395
    goto :goto_0

    .line 391
    :pswitch_3
    const/4 v0, 0x7

    .line 392
    goto :goto_0

    .line 397
    :pswitch_4
    const/4 v0, 0x6

    .line 398
    goto :goto_0

    .line 400
    :pswitch_5
    const/4 v0, 0x5

    .line 401
    goto :goto_0

    .line 388
    :pswitch_6
    const/4 v0, 0x4

    .line 389
    goto :goto_0

    .line 403
    :pswitch_7
    const/4 v0, 0x3

    .line 404
    goto :goto_0

    .line 406
    :pswitch_8
    const/4 v0, 0x2

    .line 407
    goto :goto_0

    .line 418
    :cond_0
    const/16 v0, 0x18

    .line 419
    goto :goto_0

    .line 415
    :cond_1
    const/16 v0, 0x12

    .line 416
    nop

    .line 424
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->j:Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 261
    .local v1, "gwUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->i:Ljava/lang/String;

    .end local v1    # "gwUrl":Ljava/lang/String;
    .local v0, "gwUrl":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v0    # "gwUrl":Ljava/lang/String;
    .restart local v1    # "gwUrl":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->j:Ljava/lang/String;

    .line 266
    .end local v1    # "gwUrl":Ljava/lang/String;
    .restart local v0    # "gwUrl":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->getExtParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setExtParams(Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 363
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->m:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-RPC-REQ-TICK"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->n:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-RPC-RESP-TICK"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseAllHeaders:[Lorg/apache/http/Header;

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/Config;->giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V

    .line 375
    return-void

    .line 364
    :cond_1
    :goto_0
    const-string v0, "HttpCaller"

    const-string v1, "[setResponseHeaders] response or header is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "rpcSuc"    # Z

    .line 247
    if-eqz p1, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    if-eqz v0, :cond_1

    .line 251
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseAllHeaders:[Lorg/apache/http/Header;

    .line 254
    :cond_1
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    return-object v0

    .line 275
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MOBILEGW_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 276
    .local v2, "confiGwUrl":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "HttpCaller"

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRequestUrl.   config gw url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v2

    .line 282
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRequestUrl.   Not alipay url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v1, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 289
    :cond_2
    nop

    .line 292
    :try_start_1
    new-instance v0, Ljava/net/URI;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, "uri":Ljava/net/URI;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v4, "https"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v4, "alipay.net"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "gwUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRequestUrl.   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " replace to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    return-object v0

    .line 301
    .end local v0    # "gwUrl":Ljava/lang/String;
    .end local v1    # "uri":Ljava/net/URI;
    :cond_3
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRequestUrl.  default gw url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v1, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    return-object v0

    .line 286
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v1, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    return-object v1
.end method

.method private b(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Ljava/lang/String;
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInLogBackList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 310
    .local v0, "headers":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x16b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 311
    .local v1, "headerBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/Header;

    .line 312
    .local v3, "header":Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .end local v3    # "header":Lorg/apache/http/Header;
    goto :goto_1

    .line 314
    :cond_2
    const-string v2, ",   \u6839\u636e\u76f8\u5173\u6cd5\u5f8b\u6cd5\u89c4\u548c\u653f\u7b56\uff0c\u90e8\u5206\u5185\u5bb9\u672a\u4e88\u663e\u793a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private c(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    .locals 11
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v0, "rpc_second_half"

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->l:J

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->m:J

    .line 325
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->c()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/mobile/common/transport/Transport;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 326
    .local v1, "future":Ljava/util/concurrent/Future;
    invoke-static {}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->getInstance()Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->addFuture(Ljava/util/concurrent/Future;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 329
    .local v3, "response":Lcom/alipay/mobile/common/transport/Response;
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    const-string/jumbo v5, "rpc_network_task"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 330
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    const-string/jumbo v6, "rpc_first_half"

    invoke-static {v4, v6, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 332
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-wide v6, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 333
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-wide v6, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, v7, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/Response;

    move-object v3, v4

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v4

    sget-object v6, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_TOTAL_TIMEOUT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v4

    int-to-long v6, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v6, v7, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 340
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 341
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-static {v4, v0, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->getInstance()Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->removeFuture(Ljava/util/concurrent/Future;)V

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->n:J

    .line 346
    iget-wide v6, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->l:J

    iget-wide v8, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->m:J

    sub-long/2addr v4, v8

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->o:J

    .line 347
    nop

    .line 349
    if-eqz v3, :cond_1

    .line 358
    return-object v3

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "threadid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; Response fail: [response is null]. mOperationType=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v2, "HttpCaller"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x9

    .line 354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "response is null"

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 340
    :catchall_0
    move-exception v4

    iget-object v6, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-static {v6, v5, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 341
    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    invoke-static {v5, v0, v2}, Lcom/alipay/mobile/common/netsdkextdependapi/monitorinfo/MonitorInfoUtil;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->getInstance()Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/impl/RpcLifeManagerImpl;->removeFuture(Ljava/util/concurrent/Future;)V

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->n:J

    .line 346
    iget-wide v7, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->l:J

    iget-wide v9, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->m:J

    sub-long/2addr v5, v9

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->o:J

    throw v4
.end method

.method private c()Lcom/alipay/mobile/common/transport/Transport;
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getTransport()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getTransport()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    return-object v0

    .line 611
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/4 v1, 0x1

    .line 612
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not find this type Transport"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 10

    const-string v0, "HttpCaller"

    const-string v1, ""

    .line 691
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 692
    return-object v1

    .line 694
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v3

    .line 695
    .local v4, "operationType":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    return-object v1

    .line 698
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v5, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CDN_APIS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    .line 699
    .local v5, "cdnApis":Ljava/lang/String;
    move-object v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 700
    return-object v1

    .line 702
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v6, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CDN_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v3, "cdnUrl":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 704
    return-object v1

    .line 706
    :cond_3
    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 707
    array-length v6, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v2, v7

    .line 708
    .local v8, "api":Ljava/lang/String;
    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Modify gw url to cdn url. operationType=["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], cdnUrl=["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    return-object v3

    .line 707
    .end local v8    # "api":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 716
    .end local v3    # "cdnUrl":Ljava/lang/String;
    .end local v4    # "operationType":Ljava/lang/String;
    .end local v5    # "cdnApis":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 714
    :catch_0
    move-exception v2

    .line 715
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 717
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private d(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 435
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->i(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/rpc/Config;->addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->e(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 444
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->f(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 447
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->isRpcVersion2()Z

    move-result v0

    const-string/jumbo v1, "signType"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 448
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "did"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 449
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getClientId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "clientId"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 450
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getTrackerID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRACKERID"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 452
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getSignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v0

    .line 453
    .local v3, "lSignData":Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    move-object v3, v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->signType:I

    if-eq v0, v2, :cond_0

    .line 454
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget v2, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->signType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 456
    .end local v3    # "lSignData":Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    :cond_0
    goto/16 :goto_0

    .line 459
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 461
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Version"

    const-string v5, "2"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 462
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Did"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 463
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    const-string v5, "Operation-Type"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 464
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->c:Ljava/lang/String;

    const-string v5, "Ts"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 465
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    const-string v5, "Content-Type"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->f:Ljava/lang/String;

    const-string v5, "Scene"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 471
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getSignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v0

    .line 472
    .restart local v3    # "lSignData":Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    move-object v3, v0

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 473
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget-object v4, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    const-string v5, "Sign"

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 474
    iget v0, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->signType:I

    if-eq v0, v2, :cond_3

    .line 475
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget v2, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->signType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 480
    .end local v3    # "lSignData":Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->g(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->j(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 482
    invoke-static {p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->m(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 485
    return-void
.end method

.method private e(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppId"

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 497
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getMpaasProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 501
    .local v3, "mpaasProperties":Ljava/util/Map;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 503
    .local v2, "appid4MpaasProperties":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    return-void

    .line 508
    .end local v2    # "appid4MpaasProperties":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v2, v2, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "appId":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 511
    return-void
.end method

.method private f(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 515
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 517
    :try_start_1
    const-string v0, "com.alipay.android.phone.mobilesdk.rpc.BuildConfig"

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 523
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "productVersion"

    sget-object v2, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 526
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getAppKeyFromMetaData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->r:Ljava/lang/String;

    .line 529
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 530
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "productId"

    sget-object v2, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 535
    :cond_3
    return-void

    .line 533
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    const-string v0, "HttpCaller"

    const-string v1, "Add mpaas product info to header failed."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method private g(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4

    .line 541
    const-string v0, "T"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    return-void

    .line 546
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ALIPAY_CLIENT_VERSION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v1

    .line 547
    if-eqz v1, :cond_1

    .line 548
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "clientVersion"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 554
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ALIPAY_USER_ID:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    .line 555
    if-eqz v0, :cond_2

    .line 556
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/userinfo/UserInfoUtil;->getLastUserId()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 558
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "userId"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_2
    return-void

    .line 561
    :catchall_0
    move-exception p1

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add ext header exception. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpCaller"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private h(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 574
    .local v1, "entity":Ljava/util/Map$Entry;
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 575
    .end local v1    # "entity":Ljava/util/Map$Entry;
    goto :goto_0

    .line 577
    :cond_0
    return-void
.end method

.method private i(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 587
    .local v1, "reqHeaderEntry":Ljava/util/Map$Entry;
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 588
    .end local v1    # "reqHeaderEntry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 591
    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mobilegw.alipay.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    return-void

    .line 594
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MpaasPropertiesUtil;->getMpaasProperties(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 595
    .local v0, "mpaasProperties":Ljava/util/Map;
    move-object v0, v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 596
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 597
    .local v2, "entry":Ljava/util/Map$Entry;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 598
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 600
    :cond_3
    return-void
.end method

.method private j(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string v0, "backend"

    .line 729
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    return-void

    .line 734
    :cond_0
    const-string v1, "force_http"

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 738
    .local v2, "url":Ljava/net/URL;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 741
    nop

    .line 744
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getIpInfoByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v3

    move-object v4, v1

    .line 745
    .local v4, "ipInfoByHost":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    move-object v4, v3

    if-eqz v3, :cond_1

    .line 746
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v1, "ip":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 748
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 749
    return-void

    .line 754
    .end local v1    # "ip":Ljava/lang/String;
    .end local v4    # "ipInfoByHost":Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    :cond_1
    goto :goto_0

    .line 752
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HttpCaller"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 755
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 756
    return-void

    .line 739
    :catch_1
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "originGwUrl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static k(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4
    .param p0, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 760
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnabledShadowSwitch(Landroid/content/Context;)Z

    move-result v0

    .line 761
    .local v0, "shadow":Z
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 762
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "load-test"

    const-string v3, "Y"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 764
    :cond_0
    return-void
.end method

.method private l(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 767
    iget v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mOperationType:Ljava/lang/String;

    const-string/jumbo v1, "operationType"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getReqDataDigest()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reqDataDigest"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->e:Ljava/lang/String;

    const-string/jumbo v1, "rpcVersion"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->loggerLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->loggerLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loggerLevel"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getSignCost()I

    move-result v0

    const/4 v1, 0x0

    .line 778
    .local v1, "signCost":I
    move v1, v0

    if-eqz v0, :cond_1

    .line 779
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sign_time"

    invoke-virtual {p1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->getSignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v0

    const/4 v2, 0x0

    .line 784
    .local v2, "signData":Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    move-object v2, v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 785
    iget-object v0, v2, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->errorCode:Ljava/lang/String;

    const-string/jumbo v3, "sign_error_code"

    invoke-virtual {p1, v3, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_2
    return-void
.end method

.method private m(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->shortOnly:Z

    const-string v1, "1"

    if-eqz v0, :cond_0

    .line 793
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "SHORTONLY"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->getShortLinkIPList()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->getShortLinkIPList()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHORT_IPLIST"

    invoke-direct {v0, v3, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->useMultiplexLink:Z

    if-eqz v0, :cond_1

    .line 799
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "USE_MULIPLEX_LINK"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setHeader(Lorg/apache/http/Header;)V

    .line 801
    :cond_1
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 14

    const-string v0, "TimeoutException"

    const-string v1, "CancellationException"

    const-string v2, "InterruptedException"

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "gwUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isGetMethod:Z

    if-eqz v4, :cond_0

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mReqData:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    :cond_0
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v4, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v6, v5

    .line 154
    .local v6, "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    move-object v6, v4

    iget-object v7, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mReqData:[B

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setReqData([B)V

    .line 155
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setContentType(Ljava/lang/String;)V

    .line 156
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setResetCookie(Z)V

    .line 157
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setCompress(Z)V

    .line 158
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setBgRpc(Z)V

    .line 159
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isUrgent:Z

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setUrgentFlag(Z)V

    .line 160
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v6, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->allowRetry:Z

    .line 161
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-wide v7, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTimeout(J)V

    .line 162
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowNonNet:Z

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setAllowNonNet(Z)V

    .line 163
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->switchUserLoginRpc:Z

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setSwitchLoginRpc(Z)V

    .line 164
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->disableEnctypt:Z

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setDisableEncrypt(Z)V

    .line 165
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->enableEncrypt:Z

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setEnableEncrypt(Z)V

    .line 166
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bizLog:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setBizLog(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 169
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->l(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 171
    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->k:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-boolean v4, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isGetMethod:Z

    if-eqz v4, :cond_1

    .line 172
    const-string v4, "GET"

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setReqData([B)V

    goto :goto_0

    .line 176
    :cond_1
    const-string v4, "POST"

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 179
    :goto_0
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->d(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "threadid = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; Request info: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->b(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v7, "HttpCaller"

    invoke-static {v7, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v4, 0x0

    .line 187
    .local v4, "rpcSuc":Z
    const/16 v8, 0x9

    const/16 v9, 0xd

    :try_start_0
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->c(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v10

    .line 188
    .local v5, "response":Lcom/alipay/mobile/common/transport/Response;
    move-object v5, v10

    check-cast v10, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 189
    .local v10, "httpUrlResponse":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "threadid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " Response success."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v10}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v0, 0x1

    .line 192
    .end local v4    # "rpcSuc":Z
    .local v0, "rpcSuc":Z
    nop

    .line 228
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a(Z)V

    .line 192
    return-object v5

    .line 221
    .end local v0    # "rpcSuc":Z
    .end local v5    # "response":Lcom/alipay/mobile/common/transport/Response;
    .end local v10    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    .restart local v4    # "rpcSuc":Z
    :catchall_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "Throwable"

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 224
    .local v1, "rootCause":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Throwable: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 226
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v7, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "gwUrl":Ljava/lang/String;
    .end local v4    # "rpcSuc":Z
    .end local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    throw v2

    .line 216
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "rootCause":Ljava/lang/Throwable;
    .restart local v3    # "gwUrl":Ljava/lang/String;
    .restart local v4    # "rpcSuc":Z
    .restart local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "TimeoutException: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 220
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "gwUrl":Ljava/lang/String;
    .end local v4    # "rpcSuc":Z
    .end local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    throw v2

    .line 211
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v3    # "gwUrl":Ljava/lang/String;
    .restart local v4    # "rpcSuc":Z
    .restart local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "CancellationException:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 215
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5, v1, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "gwUrl":Ljava/lang/String;
    .end local v4    # "rpcSuc":Z
    .end local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    throw v2

    .line 198
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v3    # "gwUrl":Ljava/lang/String;
    .restart local v4    # "rpcSuc":Z
    .restart local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :catch_2
    move-exception v0

    .line 199
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "ExecutionException"

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 202
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ExecutionException:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v2, :cond_2

    .line 204
    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->httpException2RpcException(Lcom/alipay/mobile/common/transport/http/HttpException;)V

    .line 206
    :cond_2
    invoke-static {v7, v1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    const-string v7, ""

    :goto_1
    invoke-direct {v2, v5, v7, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "gwUrl":Ljava/lang/String;
    .end local v4    # "rpcSuc":Z
    .end local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    throw v2

    .line 228
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v3    # "gwUrl":Ljava/lang/String;
    .restart local v4    # "rpcSuc":Z
    .restart local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 193
    :catch_3
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->cancel(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "InterruptedException:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v5, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "gwUrl":Ljava/lang/String;
    .end local v4    # "rpcSuc":Z
    .end local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "gwUrl":Ljava/lang/String;
    .restart local v4    # "rpcSuc":Z
    .restart local v6    # "request":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    :goto_2
    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a(Z)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getReqDataDigest()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRpcVersion()Ljava/lang/String;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSignCost()I
    .locals 1

    .line 721
    iget v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->p:I

    return v0
.end method

.method public getSignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->d:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected httpException2RpcException(Lcom/alipay/mobile/common/transport/http/HttpException;)V
    .locals 5
    .param p1, "throwable"    # Lcom/alipay/mobile/common/transport/http/HttpException;

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "httpException":Lcom/alipay/mobile/common/transport/http/HttpException;
    move-object v0, p1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a(I)I

    move-result v1

    .line 239
    .local v1, "code":I
    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 240
    .local v2, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_0

    .line 241
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/rpc/RpcException;->setAlert(I)V

    .line 243
    :cond_0
    throw v2
.end method

.method public isRpcVersion2()Z
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->e:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x1

    return v0

    .line 662
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 631
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mContentType:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public setExtObjectParam(Ljava/util/Map;)V
    .locals 6
    .param p1, "extParam"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "stringObjectMap":Ljava/util/Map;
    move-object v0, p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 681
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 682
    .local v1, "extParamMap":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 683
    .local v3, "stringObjectEntry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .end local v3    # "stringObjectEntry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 685
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->g:Ljava/util/Map;

    .line 687
    .end local v1    # "extParamMap":Ljava/util/Map;
    :cond_1
    return-void
.end method

.method public setExtParam(Ljava/util/Map;)V
    .locals 0
    .param p1, "extParam"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->g:Ljava/util/Map;

    .line 676
    return-void
.end method

.method public setReqDataDigest(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqDataDigest"    # Ljava/lang/String;

    .line 619
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->b:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public setRpcVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "rpcVersion"    # Ljava/lang/String;

    .line 655
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->e:Ljava/lang/String;

    .line 656
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .line 666
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->f:Ljava/lang/String;

    .line 667
    return-void
.end method

.method public setSignCost(I)V
    .locals 0
    .param p1, "signCost"    # I

    .line 725
    iput p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->p:I

    .line 726
    return-void
.end method

.method public setSignData(Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;)V
    .locals 0
    .param p1, "signData"    # Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    .line 643
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->d:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    .line 644
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeStamp"    # Ljava/lang/String;

    .line 639
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->c:Ljava/lang/String;

    .line 640
    return-void
.end method
