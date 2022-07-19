.class public Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;
.super Ljava/lang/Object;
.source "H5PreSetPkgInfo.java"


# instance fields
.field appId:Ljava/lang/String;

.field downloadUrl:Ljava/lang/String;

.field forceSync:Z

.field inputStream:Ljava/io/InputStream;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "forceSync"    # Z

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->appId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->version:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->inputStream:Ljava/io/InputStream;

    .line 24
    iput-boolean p4, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->forceSync:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "forceSync"    # Z
    .param p5, "downLoadUrl"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->appId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->version:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->inputStream:Ljava/io/InputStream;

    .line 32
    iput-boolean p4, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->forceSync:Z

    .line 33
    iput-object p5, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->downloadUrl:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getForceSync()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->forceSync:Z

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->appId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->downloadUrl:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setForceSync(Z)V
    .locals 0
    .param p1, "forceSync"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->forceSync:Z

    .line 74
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->inputStream:Ljava/io/InputStream;

    .line 46
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;->version:Ljava/lang/String;

    .line 54
    return-void
.end method
