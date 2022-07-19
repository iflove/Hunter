.class public Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;
.super Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;
.source "GlobalTransportCallbackObservable.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 1
    .param p0, "callbackList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/TransportCallback;",
            ">;)Z"
        }
    .end annotation

    .line 176
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;
    .locals 2

    .line 20
    sget-object v0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    if-eqz v0, :cond_0

    .line 21
    return-object v0

    .line 24
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    if-eqz v1, :cond_1

    .line 26
    monitor-exit v0

    return-object v1

    .line 28
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a:Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    .line 29
    monitor-exit v0

    .line 31
    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 7
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    const-string v0, "GlobalTransportCallbackObservable"

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->refCallbackList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 41
    .local v3, "callbackList":Ljava/util/List;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    return-void

    .line 47
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 48
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/TransportCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    .local v2, "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v2, v4

    if-eqz v4, :cond_1

    .line 53
    :try_start_1
    invoke-interface {v2, p1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[onCancelled] Biz exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .end local v2    # "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 58
    :catchall_1
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[onCancelled] Exception = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 7
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    const-string v0, "GlobalTransportCallbackObservable"

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->refCallbackList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 153
    .local v3, "callbackList":Ljava/util/List;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    return-void

    .line 159
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 160
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/TransportCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    .local v2, "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v2, v4

    if-eqz v4, :cond_1

    .line 165
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    goto :goto_1

    .line 166
    :catchall_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[onFailed] Biz exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .end local v2    # "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 170
    :catchall_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[onFailed] Exception = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 7
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    const-string v0, "GlobalTransportCallbackObservable"

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->refCallbackList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 102
    .local v3, "callbackList":Ljava/util/List;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 109
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/TransportCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    .local v2, "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v2, v4

    if-eqz v4, :cond_1

    .line 114
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v4

    .line 116
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[onPostExecute] Biz exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .end local v2    # "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 119
    :catchall_1
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[onPostExecute] Exception = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 13

    .line 67
    const-string v0, ", cost = "

    const-string v1, "[onPreExecute] Callback class name = "

    const-string v2, "GlobalTransportCallbackObservable"

    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->refCallbackList()Ljava/util/List;

    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    return-void

    .line 74
    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 75
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 76
    if-eqz v5, :cond_3

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    const-wide/16 v8, 0x14

    :try_start_1
    invoke-interface {v5, p1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 86
    cmp-long v6, v10, v8

    if-lez v6, :cond_1

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    :cond_1
    :goto_1
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v10

    .line 83
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[onPreExecute] Biz exception = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11, v10}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 86
    cmp-long v6, v10, v8

    if-lez v6, :cond_1

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static {v2, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :catchall_1
    move-exception p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    .line 86
    cmp-long v6, v3, v8

    if-lez v6, :cond_2

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 74
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 95
    :cond_4
    return-void

    .line 93
    :catchall_2
    move-exception p1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onPreExecute] Exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 7
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    const-string v0, "GlobalTransportCallbackObservable"

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackRegistrar;->refCallbackList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 128
    .local v3, "callbackList":Ljava/util/List;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 135
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/TransportCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    .local v2, "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v2, v4

    if-eqz v4, :cond_1

    .line 140
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[onProgressUpdate] Biz exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    .end local v2    # "transportCallback":Lcom/alipay/mobile/common/transport/TransportCallback;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 145
    :catchall_1
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[onProgressUpdate] Exception = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
