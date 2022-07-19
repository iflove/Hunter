.class Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection$ImmutableIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static sEmptyIterator:Ljava/util/Iterator;


# instance fields
.field protected immutableCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->sEmptyIterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    .line 53
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->sEmptyIterator:Ljava/util/Iterator;

    return-object v0

    .line 75
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection$ImmutableIterator;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection$ImmutableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableCollection;->immutableCollection:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
