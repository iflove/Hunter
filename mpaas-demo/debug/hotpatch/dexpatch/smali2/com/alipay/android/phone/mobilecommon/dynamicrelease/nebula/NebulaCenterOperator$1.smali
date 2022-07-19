.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;
.super Ljava/lang/Object;
.source "NebulaCenterOperator.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->getDefaultRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

.field private final b:Lcom/alipay/mobile/common/transport/http/HttpManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    .line 57
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;
    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->b:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;)Lcom/alipay/mobile/common/transport/http/HttpManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->b:Lcom/alipay/mobile/common/transport/http/HttpManager;

    return-object v0
.end method


# virtual methods
.method public final addExtHeaders(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 0
    .param p1, "arg0"    # Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 83
    return-void
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 1

    .line 75
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;)V

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "mpaas_url":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mpaas_url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public final giveResponseHeader(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    .line 86
    return-void
.end method

.method public final isCompress()Z
    .locals 1

    .line 89
    const/4 v0, 0x1

    return v0
.end method
