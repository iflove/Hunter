.class public Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
.super Ljava/lang/Object;
.source "H5NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;,
        Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$1;-><init>(Lcom/alipay/mobile/nebula/util/H5NetworkUtil;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    .line 39
    return-void
.end method

.method public static TransferNetworkType(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)Ljava/lang/String;
    .locals 2
    .param p0, "network"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 116
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$2;->$SwitchMap$com$alipay$mobile$nebula$util$H5NetworkUtil$Network:[I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 128
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 118
    :cond_0
    const-string/jumbo v0, "none"

    return-object v0

    .line 120
    :cond_1
    const-string v0, "2g"

    return-object v0

    .line 122
    :cond_2
    const-string v0, "3g"

    return-object v0

    .line 124
    :cond_3
    const-string v0, "4g"

    return-object v0

    .line 126
    :cond_4
    const-string/jumbo v0, "wifi"

    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/util/H5NetworkUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->updateNetwork()V

    return-void
.end method

.method private final detectNetwork(Landroid/net/NetworkInfo;)Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 164
    const-string v0, "NetworkUtil"

    if-nez p1, :cond_0

    .line 165
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 171
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 172
    .local v2, "subType":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/16 v4, 0x9

    if-ne v1, v4, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    if-nez v1, :cond_6

    .line 177
    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    const/16 v3, 0xb

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    .line 192
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0

    .line 186
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0

    .line 183
    :cond_4
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0

    .line 189
    :cond_5
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0

    .line 196
    :cond_6
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0

    .line 175
    :cond_7
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 197
    .end local v1    # "type":I
    .end local v2    # "subType":I
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
    .locals 2

    .line 42
    const-class v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->instance:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    return-object v0

    .line 46
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final updateNetwork()V
    .locals 7

    .line 133
    const/4 v0, 0x0

    .line 136
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    .line 138
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 141
    .end local v2    # "manager":Landroid/net/ConnectivityManager;
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    .line 140
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "NetworkUtil"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 144
    .local v1, "lastNetwork":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->detectNetwork(Landroid/net/NetworkInfo;)Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 146
    if-eqz v1, :cond_3

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_2

    .line 150
    :cond_0
    monitor-enter v2

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 152
    .local v4, "listener":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;
    const-string v5, "NetworkUtil"

    const-string/jumbo v6, "onNetworkChanged"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz v4, :cond_1

    .line 154
    iget-object v5, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;->onNetworkChanged(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)V

    .line 156
    .end local v4    # "listener":Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;
    :cond_1
    goto :goto_1

    .line 157
    :cond_2
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 147
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 102
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void

    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized getNetworkString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "UNKNOWN"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 87
    .end local p0    # "this":Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$2;->$SwitchMap$com$alipay$mobile$nebula$util$H5NetworkUtil$Network:[I

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 97
    const-string v0, "UNKNOWN"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    :cond_1
    :try_start_2
    const-string v0, "2G"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 93
    :cond_2
    :try_start_3
    const-string v0, "3G"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 91
    :cond_3
    :try_start_4
    const-string v0, "4G"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89
    :cond_4
    :try_start_5
    const-string v0, "WIFI"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getNetworkType()Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->network:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    .end local p0    # "this":Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->registerReceiver()V

    .line 56
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 60
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 61
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    nop

    .end local v1    # "filter":Landroid/content/IntentFilter;
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "NetworkUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 109
    if-nez p1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "NetworkUtil"

    const-string v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
