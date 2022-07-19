.class public final Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;
.super Lcom/squareup/wire/Message;
.source "MapStringString.java"


# static fields
.field public static final DEFAULT_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;",
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
            "Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->DEFAULT_ENTRIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;

    .line 22
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 23
    if-nez p1, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .local v2, "entry":Ljava/util/Map$Entry;
    new-instance v3, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;-><init>()V

    .line 37
    .local v1, "entryStringString":Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;
    move-object v1, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .end local v1    # "entryStringString":Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 57
    if-ne p1, p0, :cond_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    .line 52
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 66
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->hashCode:I

    const/4 v1, 0x0

    .line 67
    .local v1, "result":I
    move v1, v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->hashCode:I

    return v0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v0, "map":Ljava/util/Map;
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/commpb/MapStringString;->entries:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;

    .line 74
    .local v2, "entry":Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;
    iget-object v3, v2, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->key:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;->value:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v2    # "entry":Lcom/alipay/mobile/framework/service/ext/commpb/EntryStringString;
    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method
