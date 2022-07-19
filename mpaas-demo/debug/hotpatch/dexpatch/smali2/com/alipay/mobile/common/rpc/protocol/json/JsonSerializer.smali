.class public Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;
.source "JsonSerializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JsonSerializer"

.field public static final VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field protected mRequestDataJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "operationType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/Object;

    .line 49
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->a:I

    .line 51
    return-void
.end method


# virtual methods
.method public buildNameValuePairs(Ljava/util/List;)V
    .locals 3
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extParam"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mOperationType:Ljava/lang/String;

    const-string/jumbo v2, "operationType"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->scene:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->scene:Ljava/lang/String;

    const-string/jumbo v2, "scene"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mParams = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mParams:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " scene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonSerializer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public buildReqDataNVPair()Lorg/apache/http/message/BasicNameValuePair;
    .locals 3

    .line 103
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestData"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->a:I

    return v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDataDigest()Ljava/lang/String;
    .locals 4

    .line 173
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 174
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 175
    .local v0, "md5Digest":[B
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 176
    .end local v0    # "md5Digest":[B
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JsonSerializer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getRequestDataJson()Ljava/lang/String;
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mParams:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "[]"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mParams:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v1, v2

    .line 164
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->mRequestDataJson:Ljava/lang/String;

    .line 167
    return-object v0
.end method

.method public nvpairs2Bytes(Ljava/util/List;)[B
    .locals 3
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)[B"
        }
    .end annotation

    .line 74
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JsonSerializer"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public packet()[B
    .locals 2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "list":Ljava/util/List;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->prePacket(Ljava/util/List;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->postPacket(Ljava/util/List;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v1

    return-object v1
.end method

.method public postPacket(Ljava/util/List;)V
    .locals 0
    .param p1, "nameValuePairs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 127
    return-void
.end method

.method public prePacket(Ljava/util/List;)V
    .locals 0
    .param p1, "nameValuePairs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 116
    return-void
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->b:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 145
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->a:I

    .line 146
    return-void
.end method
