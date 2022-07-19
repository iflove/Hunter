.class public Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;
.super Ljava/lang/Object;
.source "StrategyRequestItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "Android"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->c:Ljava/lang/String;

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->e:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->h:I

    return-void
.end method


# virtual methods
.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigVersion()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->i:I

    return v0
.end method

.method public getOsType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->h:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->e:I

    return v0
.end method

.method public getWsid()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientVersion"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setConfigVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "configVersion"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->g:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setNetType(I)V
    .locals 0
    .param p1, "netType"    # I

    .line 100
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->i:I

    .line 101
    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0
    .param p1, "sdkVersion"    # I

    .line 92
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->h:I

    .line 93
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "utdid"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVer(I)V
    .locals 0
    .param p1, "ver"    # I

    .line 68
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->e:I

    .line 69
    return-void
.end method

.method public setWsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "wsid"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->f:Ljava/lang/String;

    .line 77
    return-void
.end method
