.class public Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;
.super Ljava/lang/Object;
.source "CoreHttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;
    }
.end annotation


# static fields
.field public static DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager; = null

.field public static final TAG:Ljava/lang/String; = "HttpManager"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

.field private b:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

.field private c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

.field private d:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

.field private e:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

.field private f:Ljava/util/concurrent/CountDownLatch;

.field private g:J

.field private h:J

.field private i:J

.field private j:I

.field protected mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:Ljava/util/concurrent/CountDownLatch;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a()V

    .line 93
    return-void
.end method

.method private static a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)I
    .locals 5
    .param p0, "urlHttpRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 220
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x4

    return v0

    .line 237
    :cond_0
    const-string/jumbo v0, "operationType"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 239
    .local v2, "operationType":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "download_request"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "urlStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "url":Ljava/net/URL;
    move-object v1, v3

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 252
    .end local v1    # "url":Ljava/net/URL;
    :cond_1
    nop

    .line 253
    const/4 v1, 0x2

    return v1

    .line 244
    .restart local v1    # "url":Ljava/net/URL;
    :cond_2
    :goto_0
    move-object v3, p0

    check-cast v3, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    .line 245
    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->isUrgentResource()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 246
    const/16 v3, 0x8

    return v3

    .line 248
    :cond_3
    const/4 v3, 0x3

    return v3

    .line 250
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 256
    .end local v0    # "urlStr":Ljava/lang/String;
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_4
    const-string v0, "h5_http_request"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    const/4 v0, 0x6

    return v0

    .line 260
    :cond_5
    const-string v0, "django_http_request"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    const/4 v0, 0x5

    return v0

    .line 264
    :cond_6
    const-string v0, "log_http_request"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    const/4 v0, 0x7

    return v0

    .line 268
    :cond_7
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private a()V
    .locals 2

    .line 100
    const-string v0, "HttpManager"

    const-string v1, "Transport start init .."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->setContext(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e()V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f()V

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->g()V

    .line 119
    const-string v1, "Transport init finish."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 132
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    .line 133
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getFlag(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsInitRunnable;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper;->runOnAppStart(Ljava/lang/Runnable;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "runOnAppStart exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpManager"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z
    .locals 5
    .param p0, "urlHttpRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 287
    const-string/jumbo v0, "operationType"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    .local v1, "operationType":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 290
    return v2

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isBgRpc()Z

    move-result v0

    const-string v3, "BgRpc"

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Background RPC\uff1a "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return v2

    .line 298
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isBgRpc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setBgRpc(Z)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Warning: Force bg RPC :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return v2

    .line 304
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 145
    const-string v0, "HttpManager"

    const-string v1, "initConfigWithStrategy. mContext is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->firstUpdateConfig(Landroid/content/Context;)Z

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private static c(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Z
    .locals 3
    .param p0, "urlHttpRequest"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 308
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrgentFlag()Z

    move-result v0

    const/4 v1, 0x0

    .line 309
    .local v1, "isUrgent":Z
    move v1, v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Request is Urgent RPC: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HttpManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->USE_URGENT_RPC_POOL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 314
    .local v2, "openSwitch":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "T"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    :cond_1
    const/4 v1, 0x0

    .line 317
    :cond_2
    return v1
.end method

.method private d()V
    .locals 3

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    const/4 v1, 0x0

    .line 161
    .local v1, "extTransOffice":Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->setContext(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->init(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method private static e()V
    .locals 2

    .line 179
    const-string/jumbo v0, "networkaddress.cache.ttl"

    const-string v1, "-1"

    invoke-static {v0, v1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "java.net.preferIPv4Stack"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    return-void
.end method

.method private static f()V
    .locals 1

    .line 321
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 322
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 323
    return-void
.end method

.method private g()V
    .locals 4

    .line 521
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;-><init>(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 523
    .local v0, "networkInitThread":Ljava/lang/Thread;
    :try_start_0
    const-string v1, "TransportInitThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    goto :goto_0

    .line 524
    :catchall_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[init] current thread cannot modify this thread. Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpManager"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 529
    invoke-static {}, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;->getInstance()Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transport/zfeatures/ThreadsWatchDog;->watch(Ljava/lang/Thread;J)V

    .line 530
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    sget-object v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    if-eqz v0, :cond_0

    .line 75
    return-object v0

    .line 78
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    if-eqz v1, :cond_1

    .line 80
    monitor-exit v0

    return-object v1

    .line 83
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 84
    monitor-exit v0

    .line 86
    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addConnectTime(J)V
    .locals 2
    .param p1, "time"    # J

    .line 426
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->h:J

    .line 427
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->j:I

    .line 428
    return-void
.end method

.method public addDataSize(J)V
    .locals 2
    .param p1, "size"    # J

    .line 416
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->g:J

    .line 417
    return-void
.end method

.method public addSocketTime(J)V
    .locals 2
    .param p1, "time"    # J

    .line 437
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->i:J

    .line 438
    return-void
.end method

.method public close()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->closeAllSingleThreadPool()V

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->close()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 495
    :cond_0
    return-void
.end method

.method protected createTask(Lcom/alipay/mobile/common/transport/http/HttpWorker;I)Lcom/alipay/mobile/common/transport/http/HttpTask;
    .locals 1
    .param p1, "httpWorke"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;
    .param p2, "taskType"    # I

    .line 516
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpTask;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpTask;-><init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;I)V

    return-object v0
.end method

.method public dumpPerf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 470
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 475
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getAverageSpeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 476
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getAverageConnectTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->h:J

    .line 477
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 471
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    const-string v0, "HttpManager"

    const-string v1, "dumpPerf exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, ""

    return-object v0
.end method

.method public execute(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "httpManager"    # Lcom/alipay/mobile/common/transport/http/HttpManager;
    .param p2, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/http/HttpManager;",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .line 188
    const-string v0, "HttpManager"

    instance-of v1, p2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    if-nez v1, :cond_1

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request not instanceof HttpUrlRequest. request=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, " is null. "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 195
    const-string/jumbo v1, "waiting for transport init complete!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_1

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "countDownLatch await exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->dumpPerf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_3
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 208
    .local v0, "urlHttpRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->generateWorker(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/http/HttpWorker;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->createTask(Lcom/alipay/mobile/common/transport/http/HttpWorker;I)Lcom/alipay/mobile/common/transport/http/HttpTask;

    move-result-object v1

    .line 209
    .local v1, "task":Lcom/alipay/mobile/common/transport/http/HttpTask;
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->e:Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/concurrent/TaskExecutorManager;->execute(Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;)Ljava/util/concurrent/FutureTask;

    move-result-object v2

    return-object v2
.end method

.method public getAverageConnectTime()J
    .locals 5

    .line 458
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->j:I

    if-nez v0, :cond_0

    .line 459
    const-wide/16 v0, 0x0

    return-wide v0

    .line 460
    :cond_0
    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->h:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    .line 461
    return-wide v1
.end method

.method public getAverageSpeed()J
    .locals 6

    .line 446
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 447
    return-wide v2

    .line 448
    :cond_0
    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->g:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    .line 449
    const/16 v0, 0xa

    shr-long v0, v2, v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDjgHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 374
    return-object v0

    .line 377
    :cond_0
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 379
    monitor-exit p0

    return-object v0

    .line 381
    :cond_1
    if-nez v0, :cond_2

    .line 382
    const-string v0, "Android_MWallet_DJango"

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->newInstanceOfBigConn(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 384
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object v0

    .line 384
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getH5HttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 354
    return-object v0

    .line 357
    :cond_0
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 360
    monitor-exit p0

    return-object v0

    .line 363
    :cond_1
    if-nez v0, :cond_2

    .line 364
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->newDefaultInstance()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 366
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object v0

    .line 366
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 334
    return-object v0

    .line 337
    :cond_0
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 339
    monitor-exit p0

    return-object v0

    .line 341
    :cond_1
    if-nez v0, :cond_2

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->newDefaultInstance()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 345
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLogHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 392
    return-object v0

    .line 395
    :cond_0
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 397
    monitor-exit p0

    return-object v0

    .line 399
    :cond_1
    if-nez v0, :cond_2

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->newDefaultInstance()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 402
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected notifyFirstTunnelChanged()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->notifyFirstTunnelChanged()V

    .line 128
    return-void
.end method

.method public setDjgHttpClient(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V
    .locals 0
    .param p1, "djgHttpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 512
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 513
    return-void
.end method

.method public setH5HttpClient(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V
    .locals 1
    .param p1, "mH5HttpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 504
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHttpClient(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 508
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    .line 509
    return-void
.end method
