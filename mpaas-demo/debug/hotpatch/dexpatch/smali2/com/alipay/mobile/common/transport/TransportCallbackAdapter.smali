.class public Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;
.super Ljava/lang/Object;
.source "TransportCallbackAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 11
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 21
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 16
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "percent"    # D

    .line 26
    return-void
.end method
