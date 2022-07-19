.class Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;
.super Ljava/lang/Object;
.source "H5UCPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;->appendUcCorePerformanceData(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;

    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->this$0:Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "content"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x66

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v3, "content is empty"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 139
    return-void

    .line 141
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 142
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_6

    .line 143
    const-string v3, "h5_ucCorePerfConfig"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 144
    .local v3, "config":Lcom/alibaba/fastjson/JSONObject;
    const-string v4, "enable"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "enable":Ljava/lang/String;
    const-string v5, "yes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v5, 0x67

    const-string v6, "config is not available"

    invoke-static {v2, v5, v6}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_1
    const/4 v5, 0x0

    const-string v6, "domainList"

    invoke-static {v3, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 150
    .local v5, "whiteList":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 151
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    .line 152
    .local v6, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-nez v6, :cond_2

    .line 153
    return-void

    .line 155
    :cond_2
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 156
    .local v7, "uri":Landroid/net/Uri;
    if-nez v7, :cond_3

    .line 157
    return-void

    .line 159
    :cond_3
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isUrlMatch(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Z

    move-result v8

    .line 160
    .local v8, "isMatch":Z
    if-eqz v8, :cond_5

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 161
    const/4 v9, 0x0

    const-string v10, "limitKB"

    invoke-static {v3, v10, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v9

    .line 162
    .local v9, "limit":I
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v10

    invoke-virtual {v10, v0, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->appendUCCorePerfExtra(Ljava/lang/String;I)Z

    move-result v10

    .line 163
    .local v10, "success":Z
    if-nez v10, :cond_4

    .line 164
    iget-object v11, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v12, "content is too long"

    invoke-static {v11, v2, v12}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 166
    .end local v9    # "limit":I
    .end local v10    # "success":Z
    :cond_4
    goto :goto_0

    .line 167
    :cond_5
    iget-object v9, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v10, "url is not match"

    invoke-static {v9, v2, v10}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->sendError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 168
    return-void

    .line 172
    .end local v3    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "enable":Ljava/lang/String;
    .end local v5    # "whiteList":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "isMatch":Z
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/plugin/H5UCPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v2, :cond_7

    .line 173
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 175
    :cond_7
    return-void
.end method
