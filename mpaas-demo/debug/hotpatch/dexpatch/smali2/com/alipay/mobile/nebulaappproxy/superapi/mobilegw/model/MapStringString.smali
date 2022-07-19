.class public final Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
.super Lcom/squareup/wire/Message;
.source "MapStringString.java"


# static fields
.field public static final DEFAULT_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_ENTRIES:I = 0x1


# instance fields
.field public entries:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/EntryStringString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->DEFAULT_ENTRIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    .line 23
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 24
    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 43
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    .line 38
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 50
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->hashCode:I

    const/4 v1, 0x0

    .line 51
    .local v1, "result":I
    move v1, v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->entries:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/superapi/mobilegw/model/MapStringString;->hashCode:I

    return v0
.end method
