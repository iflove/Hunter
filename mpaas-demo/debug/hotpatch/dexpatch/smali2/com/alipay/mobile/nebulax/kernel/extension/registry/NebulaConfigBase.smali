.class public abstract Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
.super Ljava/lang/Object;
.source "NebulaConfigBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mFormatVersion:B


# direct methods
.method public constructor <init>(B)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;->mFormatVersion:B

    .line 14
    iput-byte p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;->mFormatVersion:B

    .line 15
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedInputStream;",
            ")TT;"
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->readByte(Ljava/io/BufferedInputStream;)B

    move-result p1

    iput-byte p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;->mFormatVersion:B

    .line 24
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;->hashCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 29
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedOutputStream;",
            ")TT;"
        }
    .end annotation

    .line 18
    iget-byte v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/NebulaConfigBase;->mFormatVersion:B

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/util/bytedata/ByteOrderDataUtil;->writeByte(Ljava/io/BufferedOutputStream;B)V

    .line 19
    return-object p0
.end method
