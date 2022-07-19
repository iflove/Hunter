.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "Android"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->a:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->i:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static getDeviceInfo()Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;
    .locals 3

    .line 7
    const/4 v0, 0x0

    .local v0, "info":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;-><init>()V

    .line 8
    move-object v0, v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->setDevName(Ljava/lang/String;)V

    .line 9
    return-object v0
.end method


# virtual methods
.method public getAppHome()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .line 96
    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDevBrand()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "Android"

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAppHome(Ljava/lang/String;)V
    .locals 0
    .param p1, "appHome"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->g:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->e:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->f:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientVersion"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->j:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDevBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "devBrand"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDevName(Ljava/lang/String;)V
    .locals 0
    .param p1, "devName"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSystemVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemVersion"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/DeviceInfo;->h:Ljava/lang/String;

    .line 93
    return-void
.end method
