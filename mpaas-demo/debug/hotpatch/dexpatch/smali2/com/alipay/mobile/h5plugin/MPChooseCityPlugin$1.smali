.class Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "MPChooseCityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;->this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mpaas.internal.location.complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;->this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    # getter for: Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->bridge:Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    invoke-static {v1}, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->access$000(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 50
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 51
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;->this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    const-string v4, "id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->lastSavedCityId:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->access$102(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;->this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    # getter for: Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->lastSavedCityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->access$100(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "locatedCityId"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "longitude"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "latitude"

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, p0, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin$1;->this$0:Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;

    # getter for: Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->bridge:Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    invoke-static {v3}, Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;->access$000(Lcom/alipay/mobile/h5plugin/MPChooseCityPlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "locatedComplete"

    invoke-interface {v3, v5, v1, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 59
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method
