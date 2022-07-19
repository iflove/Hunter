.class public final Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;
.super Lcom/squareup/wire/Message;
.source "SwitchInfoEntryPb.java"


# static fields
.field public static final DEFAULT_EXPVERSIONID:Ljava/lang/String; = ""

.field public static final DEFAULT_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final TAG_EXPVERSIONID:I = 0x3

.field public static final TAG_KEY:I = 0x1

.field public static final TAG_VALUE:I = 0x2


# instance fields
.field public expVersionId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

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

    .line 37
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;

    .line 30
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 31
    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 60
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;

    .line 61
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    .line 50
    goto :goto_0

    .line 46
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 43
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    .line 44
    nop

    .line 53
    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 68
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->hashCode:I

    .line 69
    .local v0, "result":I
    if-nez v0, :cond_3

    .line 70
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->key:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 71
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    .line 72
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->expVersionId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 73
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoEntryPb;->hashCode:I

    .line 75
    :cond_3
    return v0
.end method
