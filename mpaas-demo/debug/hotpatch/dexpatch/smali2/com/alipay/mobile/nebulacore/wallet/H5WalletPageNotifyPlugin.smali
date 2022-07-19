.class public Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WalletPageNotifyPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WalletPageNotifyPlugin"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/alipay/mobile/h5container/api/H5Page;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->b:Z

    .line 97
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 82
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->b:Z

    const-string v1, "H5WalletPageNotifyPlugin"

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "hasRegistered not register"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->b:Z

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 89
    .local v0, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const/4 v3, 0x0

    .line 90
    .local v3, "filter":Landroid/content/IntentFilter;
    move-object v3, v2

    const-string v4, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v2, "com.alipay.mobile.framework.ACTIVITY_PAUSE"

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "registerFrameWorkListen"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 94
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b()Z
    .locals 2

    .line 133
    const-string v0, "H5_createPage_listen"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private c()Z
    .locals 7

    const-string v0, "H5WalletPageNotifyPlugin"

    .line 143
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 144
    return v2

    .line 149
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    .line 151
    .local v3, "currentTop":Landroid/app/Activity;
    move-object v3, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 153
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "top":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "page":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "top "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " page:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    return v2

    .line 159
    .end local v1    # "top":Ljava/lang/String;
    .end local v4    # "page":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 160
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not match: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", weakRef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v3    # "currentTop":Landroid/app/Activity;
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v1

    .line 164
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->c()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->e:Landroid/content/BroadcastReceiver;

    .line 177
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 61
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->d:Ljava/lang/ref/WeakReference;

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "H5WalletPageNotifyPlugin"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->d:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "current activity is H5Activity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "current activity is not H5Activity registerListen"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->a()V

    .line 73
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 43
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 48
    const-string v0, "H5WalletPageNotifyPlugin"

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 49
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->b:Z

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    const-string v1, "unregister broadcastreceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    .local v1, "r":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v1    # "r":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
