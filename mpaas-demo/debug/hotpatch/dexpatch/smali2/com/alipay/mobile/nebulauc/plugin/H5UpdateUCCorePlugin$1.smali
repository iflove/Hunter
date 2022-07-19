.class Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;
.super Ljava/lang/Object;
.source "H5UpdateUCCorePlugin.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin;->updateUCCore(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$coreVersion:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin;

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->this$0:Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->val$coreVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 77
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_ucsdkLocalUpdatePath"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->val$fileName:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->val$coreVersion:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UpdateUCCorePlugin$1;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "result"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 82
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "v"    # D

    .line 99
    return-void
.end method
