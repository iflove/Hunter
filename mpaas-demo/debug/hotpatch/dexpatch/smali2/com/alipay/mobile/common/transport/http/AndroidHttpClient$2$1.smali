.class Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$1;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;->createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;

    .line 260
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$1;->this$1:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 263
    const-wide/16 v0, 0x7530

    return-wide v0
.end method
