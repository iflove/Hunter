.class Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;
.super Ljava/lang/Object;
.source "XNNDetector.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->setOption(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$info:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$modelUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->val$info:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->val$modelUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mIsDownloadingModel:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$002(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Z)Z

    .line 162
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 184
    const-string v0, "XNNDetector"

    const-string v1, "download model failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    # getter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$300(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 187
    .local v0, "rsObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "type"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "value"

    const-string v2, "model download failed"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->val$modelUrl:Ljava/lang/String;

    const-string v2, "fileUrl"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    # getter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mResultListener:Lcom/uc/webview/export/extension/IARDetector$ResultListener;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$300(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;)Lcom/uc/webview/export/extension/IARDetector$ResultListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/uc/webview/export/extension/IARDetector$ResultListener;->onResult(Ljava/lang/String;)V

    .line 192
    .end local v0    # "rsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mIsDownloadingModel:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$002(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Z)Z

    .line 193
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 171
    const-string v0, "XNNDetector"

    const-string v1, "download model success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->val$info:Lcom/alibaba/fastjson/JSONObject;

    # invokes: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->initXMediaEngine(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/ant/phone/xmedia/XMediaEngine;
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$100(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/ant/phone/xmedia/XMediaEngine;

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->val$modelUrl:Ljava/lang/String;

    # setter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mModelUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$202(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/webar/XNNDetector$1;->this$0:Lcom/alipay/mobile/nebulauc/webar/XNNDetector;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->mIsDownloadingModel:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/webar/XNNDetector;->access$002(Lcom/alipay/mobile/nebulauc/webar/XNNDetector;Z)Z

    .line 175
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 167
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "v"    # D

    .line 180
    return-void
.end method
