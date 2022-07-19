.class public Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;
.super Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;
.source "StrategyRequest.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;-><init>()V

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->e:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "domains"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;-><init>()V

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->e:I

    .line 60
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;->setUid(Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->a:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "domains"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequestItem;-><init>()V

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->e:I

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->a:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public getDg()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDomains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->a:Ljava/util/List;

    return-object v0
.end method

.method public getIpType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->e:I

    return v0
.end method

.method public getLat_lng()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDg(Ljava/lang/String;)V
    .locals 0
    .param p1, "dg"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->d:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDomains(Ljava/util/List;)V
    .locals 0
    .param p1, "domains"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->a:Ljava/util/List;

    .line 70
    return-void
.end method

.method public setIpType(I)V
    .locals 0
    .param p1, "ipType"    # I

    .line 96
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->e:I

    .line 97
    return-void
.end method

.method public setLat_lng(Ljava/lang/String;)V
    .locals 0
    .param p1, "lat_lng"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setS(I)V
    .locals 1
    .param p1, "s"    # I

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/StrategyRequest;->b:Ljava/lang/String;

    .line 78
    return-void
.end method
