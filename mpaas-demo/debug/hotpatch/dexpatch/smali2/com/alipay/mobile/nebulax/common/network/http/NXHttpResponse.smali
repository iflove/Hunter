.class public Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;
.super Ljava/lang/Object;
.source "NXHttpResponse.java"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getResStream()Ljava/io/InputStream;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->statusCode:I

    return v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->headers:Ljava/util/Map;

    .line 29
    return-void
.end method

.method public setResStream(Ljava/io/InputStream;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->inputStream:Ljava/io/InputStream;

    .line 37
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpResponse;->statusCode:I

    .line 21
    return-void
.end method
