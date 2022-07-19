.class public Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/common/immutable/Immutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/common/immutable/Immutable<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private immutable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    .line 12
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public keySet()Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic mutable()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->mutable()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public mutable()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public values()Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableMap;->immutable:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
