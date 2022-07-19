.class public Lcom/alipay/mobile/nebulax/engine/cube/a;
.super Lcom/alipay/mobile/nebulax/engine/common/a;
.source "CubeEngineProxy.java"


# instance fields
.field private c:Ljava/util/concurrent/CountDownLatch;

.field private volatile d:Z

.field private e:Lcom/antfin/cube/cubecore/api/CKApp;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

.field private h:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/a;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 67
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 69
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->d:Z

    .line 86
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->f:Ljava/lang/String;

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cube engineProxy constructed,appId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NebulaXEngine.CubeEngineProxy"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->h:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/antfin/cube/cubecore/api/CKApp;)Lcom/antfin/cube/cubecore/api/CKApp;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->e:Lcom/antfin/cube/cubecore/api/CKApp;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 311
    const-string v0, "NebulaXEngine.CubeEngineProxy"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 312
    const-class v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-static {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 313
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-interface {v4, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->loadGlobalResource(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object p1

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadGlobalResource, cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    .line 317
    invoke-virtual {v2}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 318
    :cond_1
    :goto_0
    return-object v1

    .line 321
    :catch_0
    move-exception p1

    .line 322
    const-string v2, "load script string exception "

    invoke-static {v0, v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    return-object v1
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 330
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    .line 331
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->newBuilder()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->uri(Landroid/net/Uri;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->isMainDoc(Z)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->originUrl(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->sourceNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    move-result-object p1

    .line 330
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->load(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object p1

    .line 333
    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    .line 334
    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 335
    :cond_1
    :goto_0
    return-object v0

    .line 338
    :catch_0
    move-exception p1

    .line 339
    const-string p2, "NebulaXEngine.CubeEngineProxy"

    const-string v1, "load script string exception "

    invoke-static {p2, v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->c:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a;Ljava/lang/String;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupCube:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeEngineProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->isSetuped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_jsfm_load:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 208
    const-string v0, "https://cube/native-jsfm.js"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-string p1, "frameworkScript is null"

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFail(Ljava/lang/String;)V

    .line 211
    return-void

    .line 214
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_setup_start:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 215
    new-instance v2, Lcom/alipay/mobile/nebulax/engine/cube/a$4;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/nebulax/engine/cube/a$4;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V

    invoke-static {p1, v0, v2}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->setup(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    goto :goto_0

    .line 238
    :catchall_0
    move-exception p1

    .line 239
    const-string v0, "cube setup exception "

    invoke-static {v1, v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    const-string p1, "cube setup fail"

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFail(Ljava/lang/String;)V

    .line 243
    :goto_0
    goto :goto_1

    .line 244
    :cond_1
    const-string p1, "cube has setuped,return "

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFinish()V

    .line 247
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/cube/a;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulax/engine/cube/a;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulax/engine/cube/a;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->h:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    return-object p0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulax/engine/cube/a;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->d:Z

    return p0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulax/engine/cube/a;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic k(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic l(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/antfin/cube/cubecore/api/CKApp;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->e:Lcom/antfin/cube/cubecore/api/CKApp;

    return-object p0
.end method

.method static synthetic m(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method

.method static synthetic n(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object p0
.end method


# virtual methods
.method public create(Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 10

    .line 253
    const-string v0, "NebulaXEngine.CubeEngineProxy"

    const-string v1, "start create cube NXView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->e:Lcom/antfin/cube/cubecore/api/CKApp;

    iget-object v7, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->g:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget v8, p3, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->containerWidth:I

    iget v9, p3, Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;->containerHeight:I

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/antfin/cube/cubecore/api/CKApp;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;II)V

    .line 258
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    .line 259
    const-string p1, "finish create cube NXView"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-object v1
.end method

.method public destroy()V
    .locals 2

    .line 265
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/engine/common/a;->destroy()V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cube engineProxy  destroy,appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeEngineProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a()V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->e:Lcom/antfin/cube/cubecore/api/CKApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lcom/antfin/cube/cubecore/api/CKApp;->onDestroy()V

    .line 275
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->e:Lcom/antfin/cube/cubecore/api/CKApp;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->h:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->b()V

    .line 280
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->h:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    .line 282
    :cond_1
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->e:Lcom/antfin/cube/cubecore/api/CKApp;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0}, Lcom/antfin/cube/cubecore/api/CKApp;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->g:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWorkerProxy()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;
    .locals 1

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
    .locals 2

    .line 152
    const-string v0, "NebulaXEngine.CubeEngineProxy"

    const-string v1, "cube engine start init "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->g:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    .line 154
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/cube/a$3;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V

    const-string p1, "URGENT_DISPLAY"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 0

    .line 95
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/cube/a$1;

    invoke-direct {p2, p0, p3}, Lcom/alipay/mobile/nebulax/engine/cube/a$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V

    .line 121
    iget-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/a;->b:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-static {p3}, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->preLoad(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 123
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/cube/a$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/alipay/mobile/nebulax/engine/cube/a$2;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;Landroid/os/Bundle;)V

    const-string p1, "URGENT_DISPLAY"

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method
