.class public final Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;
.super Lcom/squareup/wire/Message;
.source "MiniappProxyRequestPB.java"


# static fields
.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_URL:Ljava/lang/String; = ""

.field public static final TAG_APPID:I = 0x1

.field public static final TAG_DATA:I = 0x3

.field public static final TAG_URL:I = 0x2


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;

    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 30
    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->appId:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->url:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    .line 34
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 59
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;

    .line 60
    .local v1, "o":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->appId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->appId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->url:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->url:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    .line 62
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 60
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 40
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    goto :goto_0

    .line 45
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->url:Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 42
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->appId:Ljava/lang/String;

    .line 43
    nop

    .line 52
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 67
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 68
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->url:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 71
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->data:Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->hashCode()I

    move-result v1

    :cond_2
    add-int v2, v0, v1

    .line 72
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MiniappProxyRequestPB;->hashCode:I

    .line 74
    :cond_3
    return v2
.end method
