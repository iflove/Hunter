.class public final Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;
.super Ljava/lang/Object;
.source "TinyAppErrorUtils.java"


# static fields
.field public static final ERROR_FORBIDDEN:I = 0x4

.field public static final ERROR_INVALID_PARAM:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_FOUND:I = 0x1

.field public static final ERROR_UNKNOWN_ERROR:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V
    .locals 2
    .param p0, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "errorCode"    # I

    .line 56
    if-nez p0, :cond_0

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 77
    const-string v0, ""

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "\u65e0\u6743\u8c03\u7528"

    .line 69
    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    .line 66
    goto :goto_0

    .line 62
    :cond_3
    const-string v0, "\u65e0\u6548\u53c2\u6570"

    .line 63
    goto :goto_0

    .line 71
    :cond_4
    const-string v0, "\u672a\u5b9e\u73b0"

    .line 72
    goto :goto_0

    .line 74
    :cond_5
    const-string v0, ""

    .line 75
    nop

    .line 80
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public static sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 84
    if-nez p0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 88
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {p0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 91
    return-void
.end method

.method public static sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)V
    .locals 5
    .param p0, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "error"    # Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 28
    if-eqz p0, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " [action] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinyAppErrorUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils$1;->a:[I

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v4, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v4, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 50
    invoke-static {p0, v3}, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    .line 53
    return-void

    .line 47
    :cond_2
    invoke-static {p0, v3}, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    .line 48
    return-void

    .line 44
    :cond_3
    invoke-static {p0, v3}, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    .line 45
    return-void

    .line 41
    :cond_4
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    .line 42
    return-void

    .line 38
    :cond_5
    invoke-static {p0, v4}, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    .line 39
    return-void

    .line 35
    :cond_6
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulacore/util/error/TinyAppErrorUtils;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;I)V

    .line 36
    return-void

    .line 29
    .end local v0    # "action":Ljava/lang/String;
    :cond_7
    :goto_1
    return-void
.end method
