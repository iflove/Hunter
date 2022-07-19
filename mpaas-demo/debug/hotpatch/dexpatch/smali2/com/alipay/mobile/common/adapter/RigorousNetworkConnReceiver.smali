.class public abstract Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;
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

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    .line 34
    iput v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 44
    iput v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    .line 45
    iput v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const-string v0, "RigorousNetworkConnReceiver"

    .line 101
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 102
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 104
    .local v2, "activeNetworkInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 107
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getActiveNetworkInfo exception. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 110
    const-string/jumbo v4, "\u5f53\u524d\u65e0\u7f51\u7edc!"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 112
    return v3

    .line 115
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    .line 116
    .local v4, "available":Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 117
    .local v5, "connected":Z
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 118
    .local v6, "type":I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 119
    .local v7, "subType":I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "extraInfo":Ljava/lang/String;
    iget v9, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    if-nez v9, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v5, :cond_3

    iget v9, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    if-ne v9, v6, :cond_3

    iget v9, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    if-ne v9, v7, :cond_3

    .line 125
    const-string v3, " Old contivity broadcast\uff01"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x2

    return v0

    .line 122
    :cond_2
    :goto_1
    const-string v9, " New contivity broadcast\uff01"

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 131
    iput v6, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a:I

    .line 132
    iput v7, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->b:I

    .line 134
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

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
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

    invoke-static {v0, v9}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    return v3

    .line 140
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    if-nez p2, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
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

    .line 71
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver$1;-><init>(Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    const-string v2, "NetworkConnReceiver"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "RigorousNetworkConnReceiver"

    const-string/jumbo v2, "onReceive exception:"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected abstract onReceivee(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register()V
    .locals 3

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RigorousNetworkConnReceiver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/adapter/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RigorousNetworkConnReceiver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
