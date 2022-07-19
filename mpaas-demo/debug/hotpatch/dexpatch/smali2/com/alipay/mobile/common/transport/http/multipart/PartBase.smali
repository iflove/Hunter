.class public abstract Lcom/alipay/mobile/common/transport/http/multipart/PartBase;
.super Lcom/alipay/mobile/common/transport/http/multipart/Part;
.source "PartBase.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charSet"    # Ljava/lang/String;
    .param p4, "transferEncoding"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/multipart/Part;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->a:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->b:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->c:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->d:Ljava/lang/String;

    .line 71
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->c:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->b:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->a:Ljava/lang/String;

    .line 139
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "transferEncoding"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/multipart/PartBase;->d:Ljava/lang/String;

    .line 149
    return-void
.end method
