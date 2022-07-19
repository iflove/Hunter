.class public Lcom/alipay/mobile/nebulaappproxy/api/download2/H5ExternalDownloadManagerProxy;
.super Ljava/lang/Object;
.source "H5ExternalDownloadManagerProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;


# instance fields
.field private a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5ExternalDownloadManagerProxy;->a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5AppDownloadManagerV2;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5ExternalDownloadManagerProxy;->a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5ExternalDownloadManagerProxy;->a:Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
    .locals 1
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "h5DownloadCallback"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5ExternalDownloadManagerProxy;->a()Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V

    .line 31
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5ExternalDownloadManagerProxy;->a()Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->cancel(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/api/download2/H5ExternalDownloadManagerProxy;->a()Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
