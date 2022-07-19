.class public Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;
.super Lorg/apache/http/client/methods/HttpPost;
.source "HttpPostExt.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "method"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 21
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;->a:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;->a:Ljava/lang/String;

    .line 31
    return-void
.end method
