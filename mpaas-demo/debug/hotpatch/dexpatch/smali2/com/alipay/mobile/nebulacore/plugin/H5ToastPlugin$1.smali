.class Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;
.super Ljava/lang/Object;
.source "H5ToastPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->b:Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    const-string v0, "H5ToastPlugin"

    const-string v1, "toast show call back"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 101
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "toastCallBack"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;->b:Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;)V

    .line 104
    return-void
.end method
