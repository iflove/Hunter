.class public interface abstract Lcom/alipay/mobile/framework/service/ext/SimpleRpcService;
.super Ljava/lang/Object;
.source "SimpleRpcService.java"


# static fields
.field public static final OPERATION_TYPE:Ljava/lang/String; = "alipay.client.executerpc"

.field public static final OPERATION_TYPE_BYTES:Ljava/lang/String; = "alipay.client.executerpc.bytes"


# virtual methods
.method public abstract executeRPC(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.executerpc"
    .end annotation
.end method

.method public abstract executeRPC(Ljava/lang/String;[BLjava/util/Map;)[B
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.executerpc.bytes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation
.end method
