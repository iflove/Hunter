.class Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;
.super Ljava/lang/Object;
.source "H5ContactPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;->selectContact(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountReturned(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;)V
    .locals 6
    .param p1, "account"    # Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;

    .line 46
    const-string v0, "H5ContactPlugin"

    const-string/jumbo v1, "onAccountReturned"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->getName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 50
    .local v4, "phoneNumber":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v2, 0xa

    const-string/jumbo v3, "\u6ca1\u6709\u6743\u9650\u83b7\u53d6\u624b\u673a\u53f7\u7801"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    return-void

    .line 53
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ContactAccount name"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " phoneNumber"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v2, v3

    .line 55
    .local v2, "contact":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v0, "mobile"

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 59
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "contact":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "phoneNumber":Ljava/lang/String;
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactPlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v1, 0xb

    const-string/jumbo v2, "\u7528\u6237\u53d6\u6d88\u64cd\u4f5c\uff08\u6216\u8bbe\u5907\u672a\u6388\u6743\u4f7f\u7528\u901a\u8baf\u5f55\uff09"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 63
    return-void
.end method
