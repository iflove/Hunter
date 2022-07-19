.class public final Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;
.super Lcom/squareup/wire/Message;
.source "ClientCheckWifiReq.java"


# static fields
.field public static final DEFAULT_BSSID:Ljava/lang/String; = ""

.field public static final DEFAULT_SSID:Ljava/lang/String; = ""

.field public static final TAG_BSSID:I = 0x2

.field public static final TAG_SSID:I = 0x1


# instance fields
.field public bssid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ssid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 32
    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->ssid:Ljava/lang/String;

    .line 34
    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->bssid:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->bssid:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 55
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 57
    :cond_1
    check-cast p1, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;

    .line 58
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->bssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->bssid:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;
    .locals 1

    .line 41
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->bssid:Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 43
    :cond_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->ssid:Ljava/lang/String;

    .line 44
    nop

    .line 50
    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 64
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->hashCode:I

    .line 65
    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->ssid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->bssid:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 68
    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/checkwifi/model/ClientCheckWifiReq;->hashCode:I

    .line 70
    :cond_2
    return v0
.end method
