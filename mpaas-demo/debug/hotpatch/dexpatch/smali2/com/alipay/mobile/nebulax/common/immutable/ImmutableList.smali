.class public Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;
.super Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/common/immutable/Immutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection<",
        "TE;>;",
        "Lcom/alipay/mobile/nebulax/common/immutable/Immutable<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private immutableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableList:Ljava/util/List;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableList:Ljava/util/List;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableCollection:Ljava/util/Collection;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;-><init>(Ljava/util/Collection;)V

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableList:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic mutable()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->mutable()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public mutable()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableList;->immutableList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
