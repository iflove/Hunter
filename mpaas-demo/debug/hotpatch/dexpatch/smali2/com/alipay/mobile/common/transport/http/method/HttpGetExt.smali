.class public Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;
.super Lorg/apache/http/client/methods/HttpGet;
.source "HttpGetExt.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "method"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;->a:Ljava/lang/String;

    .line 32
    return-void
.end method
