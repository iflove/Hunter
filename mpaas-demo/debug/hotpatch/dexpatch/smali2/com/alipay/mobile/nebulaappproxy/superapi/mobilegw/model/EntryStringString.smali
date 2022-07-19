.class public final Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
.super Lcom/squareup/wire/Message;
.source "EntryStringString.java"


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final TAG_KEY:I = 0x1

.field public static final TAG_VALUE:I = 0x2


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;

    .line 25
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 26
    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 51
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;

    .line 52
    .local v1, "o":Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 52
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    .line 38
    nop

    .line 44
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 58
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 59
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int v2, v0, v1

    .line 62
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;->hashCode:I

    .line 64
    :cond_2
    return v2
.end method
