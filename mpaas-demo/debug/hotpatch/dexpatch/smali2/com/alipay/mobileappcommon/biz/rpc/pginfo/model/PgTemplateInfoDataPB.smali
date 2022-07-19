.class public final Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;
.super Lcom/squareup/wire/Message;
.source "PgTemplateInfoDataPB.java"


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = ""

.field public static final TAG_KEY:I = 0x1

.field public static final TAG_VALUE:I = 0x2


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public value:Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;

    .line 24
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 25
    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->key:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->value:Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->value:Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;

    .line 51
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->key:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->value:Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->value:Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->value:Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;

    .line 40
    goto :goto_0

    .line 36
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->key:Ljava/lang/String;

    .line 37
    nop

    .line 43
    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 57
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->hashCode:I

    .line 58
    .local v0, "result":I
    if-nez v0, :cond_2

    .line 59
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->key:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 60
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->value:Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoPB;->hashCode()I

    move-result v2

    :cond_1
    add-int v0, v1, v2

    .line 61
    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;->hashCode:I

    .line 63
    :cond_2
    return v0
.end method
