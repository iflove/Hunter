.class public final Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;
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

    .line 32
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;

    .line 25
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 26
    if-nez p1, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 53
    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 55
    return v2

    .line 56
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;

    .line 57
    .local v1, "o":Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    .line 39
    nop

    .line 47
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 62
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 63
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int v2, v0, v1

    .line 66
    iput v2, p0, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->hashCode:I

    .line 68
    :cond_2
    return v2
.end method
