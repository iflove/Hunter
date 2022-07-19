.class Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer$1;
.super Ljava/lang/Object;
.source "SignJsonSerializer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/http/message/BasicNameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer$1;->this$0:Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Lorg/apache/http/message/BasicNameValuePair;

    check-cast p2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/json/SignJsonSerializer$1;->compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/http/message/BasicNameValuePair;Lorg/apache/http/message/BasicNameValuePair;)I
    .locals 2
    .param p1, "lhs"    # Lorg/apache/http/message/BasicNameValuePair;
    .param p2, "rhs"    # Lorg/apache/http/message/BasicNameValuePair;

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const/4 v0, 0x0

    return v0
.end method
