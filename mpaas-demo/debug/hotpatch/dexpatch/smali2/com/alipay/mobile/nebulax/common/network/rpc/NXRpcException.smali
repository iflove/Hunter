.class public Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcException;
.super Ljava/lang/Throwable;
.source "NXRpcException.java"


# static fields
.field public static CODE_UNKNOWN_FATAL:I


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcException;->CODE_UNKNOWN_FATAL:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcException;->code:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 19
    invoke-direct {p0, p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput p1, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcException;->code:I

    .line 21
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/alipay/mobile/nebulax/common/network/rpc/NXRpcException;->code:I

    return v0
.end method
