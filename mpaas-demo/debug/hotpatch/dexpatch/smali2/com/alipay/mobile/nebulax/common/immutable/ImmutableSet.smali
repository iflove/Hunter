.class public Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;
.super Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;
.source "ImmutableSet.java"

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
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;-><init>(Ljava/util/Collection;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mutable()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;->mutable()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mutable()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;->immutableCollection:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
