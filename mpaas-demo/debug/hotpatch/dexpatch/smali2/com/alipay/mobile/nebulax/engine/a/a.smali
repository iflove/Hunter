.class public Lcom/alipay/mobile/nebulax/engine/a/a;
.super Lcom/alipay/mobile/nebulax/engine/common/a;
.source "WebViewEngineProxy.java"


# instance fields
.field private c:Ljava/util/concurrent/CountDownLatch;

.field private d:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

.field private e:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

.field private f:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/common/a;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 40
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 66
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->g:Ljava/lang/String;

    .line 68
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/c/b/b;

    invoke-direct {p1}, Lcom/alipay/mobile/nebulax/engine/a/c/b/b;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->d:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    .line 69
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;-><init>(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V

    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->init(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V

    .line 70
    invoke-static {}, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->getInstance()Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/a/c/b;->a()Lcom/alipay/mobile/nebulax/engine/a/c/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebula/provider/ServiceWorkerControllerProviderProxy;->setNxProvider(Lcom/alipay/mobile/nebula/provider/NXServiceWorkerControllerProvider;)V

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "webview engineProxy constructed,appId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NebulaXEngine.WebViewEngineProxy"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/a;Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->e:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->c:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 1

    .line 181
    const-string v0, "NebulaXEngine.WebViewEngineProxy"

    if-eqz p1, :cond_1

    .line 185
    instance-of p1, p1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz p1, :cond_0

    .line 189
    return-void

    .line 186
    :cond_0
    const-string p1, "node is not instanceof H5Page"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    const-string p1, "node is null"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;)V
    .locals 1

    .line 240
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->d:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    .line 241
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/a/c/a/a;-><init>(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->init(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;)V

    .line 242
    return-void
.end method

.method public create(Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;)Lcom/alipay/mobile/nebulax/engine/api/NXView;
    .locals 8

    .line 160
    const-string v0, "NebulaXEngine.WebViewEngineProxy"

    const-string v1, "start create web nxView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/a;->a(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V

    .line 166
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/d/d;

    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->f:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebulax/engine/a/d/d;-><init>(Lcom/alipay/mobile/nebulax/engine/a/a;Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/CreateParams;)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulax/engine/a/a;->a(Lcom/alipay/mobile/nebulax/engine/api/NXView;)V

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finish create web nxView , webviewType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-object v1
.end method

.method public destroy()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/engine/common/a;->destroy()V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destory webview proxy ,appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.WebViewEngineProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->d:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->release()V

    .line 198
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->d:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    .line 203
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->e:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/a/a;->a()V

    .line 206
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->d:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;->getWorkerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->f:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWorkerProxy()Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->d:Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;

    return-object v0
.end method

.method public init(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
    .locals 4

    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->f:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    .line 135
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 137
    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;->initResult(Z)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/a$3;

    invoke-direct {p1, p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/a$3;-><init>(Lcom/alipay/mobile/nebulax/engine/a/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V

    const-string p2, "URGENT_DISPLAY"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 156
    :goto_0
    return-void
.end method

.method public setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 2

    .line 79
    new-instance p2, Lcom/alipay/mobile/nebulax/engine/a/a$1;

    invoke-direct {p2, p0, p3}, Lcom/alipay/mobile/nebulax/engine/a/a$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V

    .line 103
    const-string p3, "firstInitAndroidWebview"

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p3

    const-string v0, "NebulaXEngine.WebViewEngineProxy"

    if-eqz p3, :cond_0

    .line 104
    const-string p1, "allow  first setup use system webview,callback"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFinish()V

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 110
    const-string p1, "not need setup kernel,callback "

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFinish()V

    .line 112
    return-void

    .line 115
    :cond_1
    const-string p3, "async setup kernel "

    invoke-static {v0, p3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->showLoading()V

    .line 117
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->a:Landroid/content/Context;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/a/a$2;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulax/engine/a/a$2;-><init>(Lcom/alipay/mobile/nebulax/engine/a/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V

    invoke-direct {p3, v0, p1, v1}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;)V

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/a;->e:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    .line 129
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a()V

    .line 130
    return-void
.end method
