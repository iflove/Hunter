.class public Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;
.super Ljava/lang/Object;
.source "NXHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    }
.end annotation


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

.field private method:Ljava/lang/String;

.field private requestData:[B

.field private timeout:J

.field private url:Ljava/lang/String;

.field private useCache:Z

.field private useSpdy:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->method:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->headers:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;[B)[B
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->requestData:[B

    return-object p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;J)J
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->timeout:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->useSpdy:Z

    return p1
.end method

.method static synthetic access$702(Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->useCache:Z

    return p1
.end method

.method public static newBuilder()Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;
    .locals 1

    .line 23
    new-instance v0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest$Builder;-><init>()V

    return-object v0
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

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->method:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "GET"

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestData()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->requestData:[B

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->timeout:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isUseCache()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->useCache:Z

    return v0
.end method

.method public isUseSpdy()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/network/http/NXHttpRequest;->useSpdy:Z

    return v0
.end method
