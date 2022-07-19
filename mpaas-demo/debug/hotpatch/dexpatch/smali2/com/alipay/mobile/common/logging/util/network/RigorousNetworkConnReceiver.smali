.class public abstract Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RigorousNetworkConnReceiver.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->a:I

    .line 41
    iput v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->b:I

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    .line 49
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 50
    iput v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->a:I

    .line 51
    iput v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->b:I

    .line 52
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    const-string v0, "NetworkConnReceiver"

    .line 107
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 108
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 110
    .local v2, "activeNetworkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 113
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getActiveNetworkInfo exception. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 116
    const-string/jumbo v4, "\u5f53\u524d\u65e0\u7f51\u7edc!"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 118
    return v3

    .line 121
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    .line 122
    .local v4, "available":Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 123
    .local v5, "connected":Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 124
    .local v6, "type":I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 125
    .local v7, "subType":I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "extraInfo":Ljava/lang/String;
    iget v9, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->a:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->b:I

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    if-nez v9, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v5, :cond_3

    iget v9, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->a:I

    if-ne v9, v6, :cond_3

    iget v9, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->b:I

    if-ne v9, v7, :cond_3

    .line 131
    const-string v3, " Old contivity broadcast\uff01"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x2

    return v0

    .line 128
    :cond_2
    :goto_1
    const-string v9, " New contivity broadcast\uff01"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 137
    iput v6, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->a:I

    .line 138
    iput v7, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->b:I

    .line 140
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

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
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

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    return v3

    .line 146
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    if-nez p2, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;-><init>(Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingAsyncTaskExecutor;->executeLowPri(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkConnReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected abstract onReceivee(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register()V
    .locals 3

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkConnReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public unregister()V
    .locals 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkConnReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
