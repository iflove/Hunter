.class public Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
.super Ljava/lang/Object;
.source "NXHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;-><init>(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    .line 67
    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->headers:Ljava/util/Map;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->access$302(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Ljava/util/Map;)Ljava/util/Map;

    .line 81
    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->method:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->access$202(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public requestData([B)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->requestData:[B
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->access$402(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;[B)[B

    .line 86
    return-object p0
.end method

.method public timeout(J)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->timeout:J
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->access$502(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;J)J

    .line 91
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->url:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->access$102(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public useCache(Z)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->useCache:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->access$702(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Z)Z

    .line 101
    return-object p0
.end method

.method public useSpdy(Z)Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;->httpRequest:Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;

    # setter for: Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->useSpdy:Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->access$602(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Z)Z

    .line 96
    return-object p0
.end method
