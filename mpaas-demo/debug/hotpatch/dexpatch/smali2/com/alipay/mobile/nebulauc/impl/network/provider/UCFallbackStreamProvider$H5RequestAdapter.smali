.class Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$H5RequestAdapter;
.super Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;
.source "UCFallbackStreamProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H5RequestAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$1;

    .line 129
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$H5RequestAdapter;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;)V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 133
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    .line 134
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 147
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 148
    .local v0, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncRequest onFailed code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5UCFallbackStreamProvider"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 143
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 138
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 139
    return-void
.end method
