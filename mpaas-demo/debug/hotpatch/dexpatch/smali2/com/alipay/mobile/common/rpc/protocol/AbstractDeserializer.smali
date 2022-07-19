.class public abstract Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.super Ljava/lang/Object;
.source "AbstractDeserializer.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/protocol/Deserializer;


# instance fields
.field protected mData:[B

.field protected mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;->mType:Ljava/lang/reflect/Type;

    .line 26
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;->mData:[B

    .line 27
    return-void
.end method
