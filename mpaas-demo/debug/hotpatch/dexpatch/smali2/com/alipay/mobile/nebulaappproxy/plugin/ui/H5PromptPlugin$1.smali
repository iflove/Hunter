.class Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;
.super Ljava/lang/Object;
.source "H5PromptPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic b:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic d:Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/antui/dialog/AUInputDialog;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->b:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 56
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 57
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "ok"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->b:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->dismiss()V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;->b:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 61
    return-void
.end method
