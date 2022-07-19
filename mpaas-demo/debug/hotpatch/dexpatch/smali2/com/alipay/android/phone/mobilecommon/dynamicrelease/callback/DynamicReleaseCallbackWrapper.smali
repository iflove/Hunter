.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;
.super Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback$Stub;
.source "DynamicReleaseCallbackWrapper.java"


# instance fields
.field private a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

.field private b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:D

.field private g:D

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback$Stub;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->c:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->d:Ljava/util/Map;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    .line 27
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->f:D

    .line 28
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->g:D

    .line 30
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->h:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    .line 36
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback$Stub;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->c:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->d:Ljava/util/Map;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    .line 27
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->f:D

    .line 28
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->g:D

    .line 30
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->h:Z

    .line 37
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;)V
    .locals 3
    .param p1, "dynamicReleaseObserver"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    .line 40
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback$Stub;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->c:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->d:Ljava/util/Map;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    .line 27
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->f:D

    .line 28
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->g:D

    .line 30
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->h:Z

    .line 41
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    .line 42
    return-void
.end method


# virtual methods
.method public bind(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "connection"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

    .line 162
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->getDynamicRequestProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->bind(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onDownloadCancelled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "isDiff"    # Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDownloadCancelled, bundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicReleaseCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onDownloadCancelled(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "isDiff"    # Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDownloadFailed, bundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicReleaseCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->h:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onDownloadFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    :cond_2
    return-void
.end method

.method public onDownloadProgressUpdate(Ljava/lang/String;DZ)V
    .locals 10
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "percent"    # D
    .param p4, "isDiff"    # Z

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 83
    .local v1, "bundleSize":Ljava/lang/Integer;
    move-object v1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->d:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, p2

    iget v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    const-wide/16 v2, 0x0

    .line 88
    .local v2, "totalPercent":D
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 89
    .local v4, "p":D
    add-double/2addr v2, v4

    .line 90
    .end local v4    # "p":D
    goto :goto_0

    .line 92
    :cond_1
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->g:D

    sub-double v4, v2, v4

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2

    .line 93
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->g:D

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDownloadProgressUpdate, bundle="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isDiff="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", percent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", totalPercent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DynamicReleaseCallbackWrapper"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->f:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    .line 99
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->f:D

    .line 102
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v4, :cond_4

    .line 103
    iget-wide v8, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->f:D

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onDownloadProgressUpdate(Ljava/lang/String;DD)V

    .line 105
    :cond_4
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onError, errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicReleaseCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onError(ILjava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    .line 146
    :cond_1
    return-void
.end method

.method public onFinish(Z)V
    .locals 2
    .param p1, "needRestart"    # Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFinish, needRestart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicReleaseCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onFinish(Z)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    .line 159
    :cond_1
    return-void
.end method

.method public onPostDownload(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "isDiff"    # Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPostDownload, bundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicReleaseCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->h:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onPostDownload(Ljava/lang/String;)V

    .line 78
    :cond_2
    return-void
.end method

.method public onPreDownload(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "isDiff"    # Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreDownload, bundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicReleaseCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->h:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->h:Z

    .line 61
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onPreDownload(Ljava/lang/String;)V

    .line 66
    :cond_2
    return-void
.end method

.method public onStart(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "applyEntities"    # Ljava/util/List;
    .param p2, "rollbackEntities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 123
    .local v1, "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object v1, v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->c:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget v4, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    iget v3, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    .line 127
    .end local v1    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStart, totalSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bundleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicReleaseCallbackWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->onStart(IJ)V

    .line 133
    :cond_2
    return-void
.end method
