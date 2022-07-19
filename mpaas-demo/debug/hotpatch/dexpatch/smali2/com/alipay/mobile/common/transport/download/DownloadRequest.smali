.class public Lcom/alipay/mobile/common/transport/download/DownloadRequest;
.super Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
.source "DownloadRequest.java"


# static fields
.field public static final OPERATION_TYPE:Ljava/lang/String; = "download_request"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->c:Z

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->d:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->e:Z

    .line 40
    const-string/jumbo v0, "operationType"

    const-string v1, "download_request"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "reqData"    # [B
    .param p4, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->c:Z

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->d:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->e:Z

    .line 58
    const-string/jumbo v0, "operationType"

    const-string v1, "download_request"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqData"    # [B
    .param p3, "headers"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->c:Z

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->d:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->e:Z

    .line 46
    const-string/jumbo v0, "operationType"

    const-string v1, "download_request"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 107
    .local v1, "callback":Lcom/alipay/mobile/common/transport/TransportCallback;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 108
    return-object v1

    .line 110
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;->getInstance()Lcom/alipay/mobile/common/transport/GlobalTransportCallbackObservable;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowRetryForErrorHttpStatusCode()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->d:Z

    return v0
.end method

.method public isOnlyWifiRequest()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->e:Z

    return v0
.end method

.method public isRedownload()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    return v0
.end method

.method public isUrgentResource()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->c:Z

    return v0
.end method

.method public setAllowRetryForErrorHttpStatusCode(Z)V
    .locals 0
    .param p1, "allowRetryForErrorHttpStatusCode"    # Z

    .line 118
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->d:Z

    .line 119
    return-void
.end method

.method public setOnlyWifiRequest(Z)V
    .locals 0
    .param p1, "onlyWifiRequest"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->e:Z

    .line 128
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 77
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->a:Ljava/lang/String;

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not set valid path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRedownload(Z)V
    .locals 0
    .param p1, "redownload"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->b:Z

    .line 88
    return-void
.end method

.method public setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 101
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadTransportCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadTransportCallbackWrapper;-><init>(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 102
    return-void
.end method

.method public setUrgentResource(Z)V
    .locals 0
    .param p1, "urgentResource"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->c:Z

    .line 96
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setUrgentFlag(Z)V

    .line 97
    return-void
.end method
