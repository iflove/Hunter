.class public final Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;
.super Lcom/squareup/wire/Message;
.source "ClientCheckWifiRes.java"


# static fields
.field public static final DEFAULT_ISWIFI:Ljava/lang/String; = ""

.field public static final TAG_ISWIFI:I = 0x1


# instance fields
.field public isWIFI:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 24
    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->isWIFI:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->isWIFI:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 43
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->isWIFI:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;

    iget-object p1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->isWIFI:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;
    .locals 1

    .line 32
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->isWIFI:Ljava/lang/String;

    .line 35
    nop

    .line 38
    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->hashCode:I

    .line 51
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->isWIFI:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/client/checkwifi/model/ClientCheckWifiRes;->hashCode:I

    :goto_1
    return v0
.end method
