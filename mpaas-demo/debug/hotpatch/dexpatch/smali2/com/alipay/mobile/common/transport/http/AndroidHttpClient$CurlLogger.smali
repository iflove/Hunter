.class Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .param p2, "x1"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;

    .line 516
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    # getter for: Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->e:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->access$300(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    .line 520
    .local v1, "configuration":Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;
    move-object v1, v0

    if-eqz v0, :cond_0

    # invokes: Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a()Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 524
    move-object v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v2, 0x1

    # invokes: Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->a(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 526
    :cond_0
    return-void
.end method
