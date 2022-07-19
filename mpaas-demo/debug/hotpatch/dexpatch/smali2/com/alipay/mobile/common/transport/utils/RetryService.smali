.class public Lcom/alipay/mobile/common/transport/utils/RetryService;
.super Ljava/lang/Object;
.source "RetryService.java"


# static fields
.field private static c:Lcom/alipay/mobile/common/transport/utils/RetryService;

.field private static d:J


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/RetryService;->c:Lcom/alipay/mobile/common/transport/utils/RetryService;

    .line 45
    const-wide/32 v0, -0x65813800

    sput-wide v0, Lcom/alipay/mobile/common/transport/utils/RetryService;->d:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->b:Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/utils/RetryService;->b()V

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/RetryService;->c()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    .local v1, "tmpMap":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/utils/RetryService;->a()V

    .line 75
    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 80
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isOtherProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/utils/RetryService$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/utils/RetryService$1;-><init>(Lcom/alipay/mobile/common/transport/utils/RetryService;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "RetryService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/alipay/mobile/common/transport/utils/RetryService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/transport/utils/RetryService$2;-><init>(Lcom/alipay/mobile/common/transport/utils/RetryService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkAsyncTaskExecutor;->executeIO(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "allowRetry"    # Z

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 168
    return v1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 172
    return v2

    .line 175
    :cond_1
    if-eqz p2, :cond_2

    .line 176
    return v1

    .line 179
    :cond_2
    return v2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/utils/RetryService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/transport/utils/RetryService;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->b:Ljava/util/ArrayList;

    const-string v1, "alipay.client.getRSAKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->b:Ljava/util/ArrayList;

    const-string v1, "alipay.mobile.transfer.queryHistoryRecord"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->b:Ljava/util/ArrayList;

    const-string v2, "alipay.mobile.transfer.checkCertify"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method private static c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    .line 190
    .local v2, "context":Landroid/content/Context;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 191
    return-object v0

    .line 193
    :cond_0
    const-string/jumbo v1, "net_retry"

    const/4 v3, 0x0

    .line 194
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 196
    .end local v2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    .line 197
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "RetryService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .end local v1    # "ex":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/transport/utils/RetryService;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/transport/utils/RetryService;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/RetryService;->c:Lcom/alipay/mobile/common/transport/utils/RetryService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 51
    monitor-exit v0

    return-object v1

    .line 53
    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/RetryService;->c:Lcom/alipay/mobile/common/transport/utils/RetryService;

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Lcom/alipay/mobile/common/transport/utils/RetryService;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/utils/RetryService;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/RetryService;->c:Lcom/alipay/mobile/common/transport/utils/RetryService;

    .line 57
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/RetryService;->c:Lcom/alipay/mobile/common/transport/utils/RetryService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addOperationTypeToRetryList(Ljava/lang/String;)V
    .locals 2
    .param p1, "operationType"    # Ljava/lang/String;

    .line 209
    const-string v0, "1"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/utils/RetryService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "RetryService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public isSupportResend(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "allowRetry"    # Z

    const-string v0, "RetryService"

    .line 129
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RETRY_CAPTAIN:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 130
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 131
    .local v3, "retryCaptain":Ljava/lang/String;
    const-string v4, "T"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const-string v2, "captain don\'t allow retry"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return v1

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/strategy/StrategyUtil;->isSwitchRpc(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 136
    return v4

    .line 138
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isLoginRpc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    return v4

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    return v4

    .line 144
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/utils/RetryService;->a(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 145
    return v4

    .line 147
    :cond_4
    return v1

    .line 148
    .end local v3    # "retryCaptain":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 149
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v2    # "ex":Ljava/lang/Throwable;
    return v1
.end method

.method public removeOpetationTypeFromRetryList(Ljava/lang/String;)V
    .locals 2
    .param p1, "operationType"    # Ljava/lang/String;

    .line 222
    const-string v0, "0"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/utils/RetryService;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/transport/utils/RetryService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    return-void

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "RetryService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method
