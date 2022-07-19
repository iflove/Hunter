.class public Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlResponse;
.super Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;
.source "LogHttpUrlResponse.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "header"    # Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inputStream"    # Ljava/io/InputStream;

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;Ljava/io/InputStream;)V

    .line 20
    return-void
.end method
