.class public Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;
.super Landroid/content/BroadcastReceiver;
.source "UCSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;
    }
.end annotation


# instance fields
.field private transient a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Bundle;

.field private d:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;

.field private e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->e:Ljava/util/concurrent/CountDownLatch;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->b:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->c:Landroid/os/Bundle;

    .line 59
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->d:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;

    .line 60
    iget-boolean p2, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a:Z

    if-nez p2, :cond_0

    .line 61
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "h5_action_uc_init_finish"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 63
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a:Z

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->e:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)I
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->c()I

    move-result p0

    return p0
.end method

.method private c()I
    .locals 3

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->useSysWebWillCrash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, -0x1

    return v0

    .line 137
    :cond_0
    const v0, 0xafc8

    .line 139
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 140
    if-eqz v1, :cond_1

    .line 141
    nop

    .line 142
    const-string v2, "h5WaitUCConfig"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    const/16 v0, 0x2ee0

    const-string v2, "waitTime"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeout final "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NebulaXEngine.UCSetup"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return v0
.end method

.method private d()V
    .locals 3

    .line 166
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a:Z

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "NebulaXEngine.UCSetup"

    const-string v2, "multi unregisterReceiver  "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a:Z

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 74
    const-string v0, "NebulaXEngine.UCSetup"

    const-string v1, "fire urgent uc Init "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->fireUrgentUcInit()V

    .line 79
    const-class v0, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/common/service/NXExecutorService;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;-><init>(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 113
    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 119
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->d()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySetupResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.UCSetup"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->d:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;->a(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->d()V

    .line 178
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 153
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "h5_action_uc_init_finish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 157
    return-void

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->c:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    .line 160
    const/4 v0, 0x1

    const-string v1, "ucInitLoadingShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "result"

    invoke-static {p1, v0, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a(Z)V

    .line 163
    return-void

    .line 154
    :cond_3
    :goto_0
    return-void
.end method
