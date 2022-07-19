.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;
.super Ljava/lang/Object;
.source "DynamicReleaseObserver.java"


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

.field private c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    .line 16
    return-void
.end method


# virtual methods
.method bind(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "requester"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

    .line 96
    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->a:I

    .line 97
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

    .line 98
    return-void
.end method

.method public cancelDownload()Z
    .locals 2

    .line 54
    :try_start_0
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->a:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;->cancel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDownloadCancelled(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->onCancelled()V

    .line 26
    :cond_0
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->onFailed(ILjava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onDownloadProgressUpdate(Ljava/lang/String;DD)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "percent"    # D
    .param p4, "totalPercent"    # D

    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p4, p5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->onProgressUpdate(D)V

    .line 44
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->onFailed(ILjava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onFinish(Z)V
    .locals 1
    .param p1, "needRestart"    # Z

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->onFinish()V

    .line 79
    :cond_0
    return-void
.end method

.method public onPostDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->onPostExecute()V

    .line 38
    :cond_0
    return-void
.end method

.method public onPreDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;->onPreExecute()V

    .line 32
    :cond_0
    return-void
.end method

.method public onStart(IJ)V
    .locals 0
    .param p1, "bundleCount"    # I
    .param p2, "totalSize"    # J

    .line 70
    return-void
.end method
