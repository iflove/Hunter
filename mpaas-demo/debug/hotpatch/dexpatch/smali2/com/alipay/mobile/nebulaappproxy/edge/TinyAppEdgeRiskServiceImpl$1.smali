.class final Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl$1;
.super Ljava/lang/Object;
.source "TinyAppEdgeRiskServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->checkTextRiskNow(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl$1;->a:Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 93
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "TinyAppEdgeRiskService"

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "checkTextRisk success"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    const-string v0, "checkTextRisk failed"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public final synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl$1;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
