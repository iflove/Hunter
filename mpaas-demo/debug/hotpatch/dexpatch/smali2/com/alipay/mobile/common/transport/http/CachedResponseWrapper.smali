.class public Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;
.super Ljava/lang/Object;
.source "CachedResponseWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeHeader()Lorg/apache/http/Header;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "temp":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    const/4 v2, 0x0

    .line 54
    .local v2, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    move-object v2, v1

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 57
    return-object v1
.end method

.method public getValue()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->b:[B

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTypeHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "typeHeader"    # Lorg/apache/http/Header;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->c:Ljava/lang/String;

    .line 66
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->d:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public setValue([B)V
    .locals 0
    .param p1, "value"    # [B

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->b:[B

    .line 46
    return-void
.end method
