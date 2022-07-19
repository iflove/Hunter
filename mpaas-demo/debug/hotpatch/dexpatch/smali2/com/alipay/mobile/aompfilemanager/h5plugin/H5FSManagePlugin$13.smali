.class Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin$13;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "H5FSManagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin;->getSavedFileList(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin;

.field final synthetic val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin$13;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin$13;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 6

    .line 576
    # invokes: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin;->normalizeErrorCode(Lcom/alibaba/fastjson/JSONObject;)V
    invoke-static {p1}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin;->access$1000(Lcom/alibaba/fastjson/JSONObject;)V

    .line 577
    const-string/jumbo p2, "success"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 578
    new-instance p2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    const-string v1, "fileList"

    invoke-static {p1, v1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    .line 579
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 581
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 582
    if-eqz v3, :cond_0

    .line 583
    const-string v4, "apFilePath"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "filePath"

    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    :cond_1
    iget-object p2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FSManagePlugin$13;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {p2, p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 589
    return v0
.end method
