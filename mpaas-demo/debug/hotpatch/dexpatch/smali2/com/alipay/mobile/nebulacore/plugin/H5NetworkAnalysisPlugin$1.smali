.class Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;
.super Ljava/lang/Object;
.source "H5NetworkAnalysisPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic e:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->e:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->b:I

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->c:Lcom/alibaba/fastjson/JSONObject;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "result":Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->b:I

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->ping(Ljava/lang/String;I)Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "globalException":Ljava/lang/Exception;
    const-string v2, "H5NetworkAnalysisPlugin"

    const-string v3, "exception detail."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v1    # "globalException":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->c:Lcom/alibaba/fastjson/JSONObject;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->a(Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->a()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-void
.end method
