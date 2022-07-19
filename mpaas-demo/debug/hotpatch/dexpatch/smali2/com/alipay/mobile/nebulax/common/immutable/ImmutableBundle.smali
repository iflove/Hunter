.class public Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;
.super Ljava/lang/Object;
.source "ImmutableBundle.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/common/immutable/Immutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/common/immutable/Immutable<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private immutable:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    .line 11
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public mutable()Landroid/os/Bundle;
    .locals 2

    .line 51
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic mutable()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->mutable()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "ImmutableBundle{NULL}"

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmutableBundle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/immutable/ImmutableBundle;->immutable:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
