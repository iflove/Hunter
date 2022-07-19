.class public Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;
.super Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;
.source "SafeTransportCallbackWrapper.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/TransportCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 1
    .param p1, "transportCallback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 17
    return-void
.end method


# virtual methods
.method public getWrappedTransportCallback()Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    return-object v0
.end method

.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 27
    const-string v0, "SafeTransportCallbackWrapper"

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "super.onCancelled fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-nez v1, :cond_0

    .line 33
    const-string v1, "[onCancelled] wrappedTransportCallback is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 38
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    return-void

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "onCancelled fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 108
    const-string v0, "SafeTransportCallbackWrapper"

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "super.onFailed fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-nez v1, :cond_0

    .line 114
    const-string v1, "[onFailed] wrappedTransportCallback is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 119
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    return-void

    .line 120
    :catchall_1
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "onFailed fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 67
    const-string v0, "SafeTransportCallbackWrapper"

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "super.onPostExecute fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-nez v1, :cond_0

    .line 73
    const-string v1, "[onPostExecute] wrappedTransportCallback is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 78
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    return-void

    .line 79
    :catchall_1
    move-exception v1

    .line 80
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "onPostExecute fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 47
    const-string v0, "SafeTransportCallbackWrapper"

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "super.onPreExecute fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-nez v1, :cond_0

    .line 53
    const-string v1, "[onPreExecute] wrappedTransportCallback is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 58
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    return-void

    .line 59
    :catchall_1
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "onPreExecute fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 87
    const-string v0, "SafeTransportCallbackWrapper"

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "super.onProgressUpdate fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-nez v1, :cond_0

    .line 95
    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    return-void

    .line 100
    :catchall_1
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "onProgressUpdate fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setWrappedTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 0
    .param p1, "wrappedTransportCallback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/SafeTransportCallbackWrapper;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 131
    return-void
.end method
