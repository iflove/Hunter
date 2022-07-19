.class public Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.super Ljava/lang/Object;
.source "H5DownloadCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DownloadCallback"


# instance fields
.field private callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

.field private needInstall:Z

.field private urgentInstall:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>(ZZLcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ZZLcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
    .locals 0
    .param p1, "needInstall"    # Z
    .param p2, "urgentInstall"    # Z
    .param p3, "installCallback"    # Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->needInstall:Z

    .line 41
    iput-boolean p2, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->urgentInstall:Z

    .line 42
    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->callback:Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;

    return-object v0
.end method


# virtual methods
.method public onCancel(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 2
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCancel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5DownloadCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
    .locals 2
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFinish: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5DownloadCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "savePath"    # Ljava/lang/String;

    .line 76
    if-eqz p1, :cond_1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFinish: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", savePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5DownloadCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->needInstall:Z

    if-eqz v0, :cond_1

    .line 79
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    .line 80
    .local v1, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "version":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->urgentInstall:Z

    if-eqz v3, :cond_0

    const-string v3, "URGENT_DISPLAY"

    goto :goto_0

    :cond_0
    const-string v3, "IO"

    .line 85
    :goto_0
    new-instance v4, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback$1;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 94
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v2    # "version":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;)V
    .locals 2
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 49
    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPrepare: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5DownloadCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;I)V
    .locals 0
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "progress"    # I

    .line 61
    return-void
.end method
