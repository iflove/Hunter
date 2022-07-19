.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;
.super Ljava/lang/Object;
.source "DynamicReleaseCallback.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/TransportCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 0
    .param p1, "downloadCallback"    # Lcom/alipay/mobile/common/transport/TransportCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 25
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 30
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 70
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 96
    return-void
.end method

.method public onInstall()V
    .locals 0

    .line 89
    return-void
.end method

.method public onPostExecute()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 50
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, v1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onProgressUpdate(D)V
    .locals 2
    .param p1, "percent"    # D

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->a:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onStart(Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .param p1, "bundleNames"    # Ljava/util/List;
    .param p2, "bundleSize"    # Ljava/util/List;
    .param p3, "totalSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 82
    return-void
.end method
