.class Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;
.super Ljava/lang/Object;
.source "XNNDetector.java"

# interfaces
.implements Lcom/ant/phone/xmedia/XMediaEngine$XMediaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->initXMediaEngine(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/ant/phone/xmedia/XMediaEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/ant/phone/xmedia/params/XMediaResponse;)Z
    .locals 4
    .param p1, "xMediaResponse"    # Lcom/ant/phone/xmedia/params/XMediaResponse;

    .line 234
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/ant/phone/xmedia/params/XMediaResponse;->mResult:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    sget-object v2, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->START:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    # setter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$402(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;)Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    # getter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$300(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 239
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 240
    .local v1, "rsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "type"

    const-string v3, "resignResult"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    # getter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$300(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/uc/webview/export/extension/IARDetector$ResultListener;->onResult(Ljava/lang/String;)V

    .line 244
    .end local v1    # "rsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return v0

    .line 235
    :cond_2
    :goto_0
    return v0
.end method

.method public onTrack(Lcom/ant/phone/xmedia/params/XMediaResponse;)Z
    .locals 4
    .param p1, "xMediaResponse"    # Lcom/ant/phone/xmedia/params/XMediaResponse;

    .line 248
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/ant/phone/xmedia/params/XMediaResponse;->mResult:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    sget-object v2, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;->START:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    # setter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mStatus:Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$402(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;)Lcom/alipay/mobile/nebulauc/webar/XNNDetector$STATUS;

    .line 252
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    # getter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$300(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 253
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 254
    .local v1, "rsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "type"

    const-string v3, "resignResult"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$2;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    # getter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$300(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/uc/webview/export/extension/IARDetector$ResultListener;->onResult(Ljava/lang/String;)V

    .line 258
    .end local v1    # "rsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return v0

    .line 249
    :cond_2
    :goto_0
    return v0
.end method
