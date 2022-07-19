.class public Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;
.super Ljava/lang/Object;
.source "SignJsonSerializer.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/protocol/Serializer;


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

.field private f:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 2
    .param p1, "jsonSerializer"    # Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "outAppKey"    # Ljava/lang/String;
    .param p4, "online"    # Z
    .param p5, "innerRpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->g:J

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->a:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    .line 45
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->b:Landroid/content/Context;

    .line 46
    iput-boolean p4, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->c:Z

    .line 47
    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->d:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->f:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 49
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .param p1, "nvPairList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->getSignTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ts"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->b(Ljava/util/List;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 75
    .local v2, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .end local v2    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->f:Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    iget-object v1, v1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAlipayGW(Ljava/lang/String;)Z

    move-result v1

    .line 80
    .local v1, "useSignAtlas":Z
    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->c:Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil;->signature(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Z)Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->e:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    .line 83
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->e:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;->sign:Ljava/lang/String;

    const-string/jumbo v4, "sign"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .param p1, "nvPairList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer$1;-><init>(Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getRequestDataDigest()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->a:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->getRequestDataDigest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignData()Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->e:Lcom/alipay/mobile/common/transport/utils/RpcSignUtil$SignData;

    return-object v0
.end method

.method public getSignTimestamp()J
    .locals 5

    .line 111
    iget-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 112
    return-wide v0

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->g:J

    .line 115
    return-wide v0
.end method

.method public packet()[B
    .locals 2

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "nvPairList":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->a:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->buildNameValuePairs(Ljava/util/List;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->a(Ljava/util/List;)V

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->a:Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;->nvpairs2Bytes(Ljava/util/List;)[B

    move-result-object v1

    return-object v1
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    return-void
.end method
