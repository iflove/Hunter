.class public Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransportNetInfoReceiver.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->a:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;
    .locals 2

    .line 19
    sget-object v0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->a:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    if-eqz v0, :cond_0

    .line 20
    return-object v0

    .line 22
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->a:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    if-nez v1, :cond_1

    .line 24
    new-instance v1, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->a:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    .line 26
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    sget-object v0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->a:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    return-object v0

    .line 26
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpClientConnChangedListener;->notifyNetworkChangedEvent()V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->getInstance()Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadConnChangedListener;->notifyNetworkChangedEvent()V

    .line 44
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    new-instance v0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;-><init>(Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeLowPri(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
