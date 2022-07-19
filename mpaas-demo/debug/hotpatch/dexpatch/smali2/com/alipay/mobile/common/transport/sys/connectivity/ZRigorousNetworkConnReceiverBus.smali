.class public Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;
.super Landroid/content/BroadcastReceiver;
.source "ZRigorousNetworkConnReceiverBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Boolean;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->a:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->b:I

    .line 39
    iput v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->c:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->d:Ljava/lang/Boolean;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->f:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->e:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->d:Ljava/lang/Boolean;

    .line 64
    iput v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->b:I

    .line 65
    iput v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->c:I

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->registerEvent()V

    .line 68
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    const-string v0, "ZRigorousNetworkConnReceiverBus"

    .line 142
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 143
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 145
    .local v2, "activeNetworkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 148
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getActiveNetworkInfo exception. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 151
    const-string/jumbo v4, "\u5f53\u524d\u65e0\u7f51\u7edc!"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->d:Ljava/lang/Boolean;

    .line 153
    return v3

    .line 156
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    .line 157
    .local v4, "available":Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 158
    .local v5, "connected":Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 159
    .local v6, "type":I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 160
    .local v7, "subType":I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "extraInfo":Ljava/lang/String;
    iget v9, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->b:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->c:I

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->d:Ljava/lang/Boolean;

    if-nez v9, :cond_1

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v5, :cond_3

    iget v9, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->b:I

    if-ne v9, v6, :cond_3

    iget v9, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->c:I

    if-ne v9, v7, :cond_3

    .line 166
    const-string v3, " Old contivity broadcast\uff01"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x2

    return v0

    .line 163
    :cond_2
    :goto_1
    const-string v9, " New contivity broadcast\uff01"

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->d:Ljava/lang/Boolean;

    .line 172
    iput v6, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->b:I

    .line 173
    iput v7, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->c:I

    .line 175
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " type=["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] subType=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]  available=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "] connected=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "] detailedState=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "] extraInfo=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " activeNetworkInfo hashcode="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  activeNetworkInfo = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]\n\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 179
    return v3

    .line 181
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;
    .param p1, "x1"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->f:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;
    .locals 3

    .line 48
    sget-object v0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->a:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->a:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    if-eqz v1, :cond_1

    .line 53
    monitor-exit v0

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->a:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    .line 56
    monitor-exit v0

    .line 57
    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .line 89
    const-string v0, "ZRigorousNetworkConnReceiverBus"

    if-nez p1, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[addReceiver] broadcastReceiver = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[addReceiver] exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 121
    const-string v0, "ZRigorousNetworkConnReceiverBus"

    if-nez p2, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    :try_start_0
    const-string/jumbo v1, "monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[onReceive] Illegal action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 133
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;-><init>(Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeSerial(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "onReceive exception:"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public registerEvent()V
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->e:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ZRigorousNetworkConnReceiverBus"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public removeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .line 106
    const-string v0, "ZRigorousNetworkConnReceiverBus"

    if-nez p1, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[removeReceiver] broadcastReceiver = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[removeReceiver] exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public unregisterEvent()V
    .locals 2

    .line 81
    const-string v0, "ZRigorousNetworkConnReceiverBus"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->e:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    const-string v1, "[unregisterEvent] Unregister finished."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method
