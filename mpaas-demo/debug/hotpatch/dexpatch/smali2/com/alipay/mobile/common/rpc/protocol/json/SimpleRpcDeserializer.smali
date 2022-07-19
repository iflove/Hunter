.class public Lcom/alipay/mobile/common/rpc/protocol/json/SimpleRpcDeserializer;
.super Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;
.source "SimpleRpcDeserializer.java"


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "data"    # [B

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;[B)V

    .line 17
    return-void
.end method
