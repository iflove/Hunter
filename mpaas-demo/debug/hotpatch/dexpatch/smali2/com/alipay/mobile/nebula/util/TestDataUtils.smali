.class public Lcom/alipay/mobile/nebula/util/TestDataUtils;
.super Ljava/lang/Object;
.source "TestDataUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5TestDataUtils"

.field private static bridgeParams:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized injectJSParams(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 3
    .param p0, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    const-class v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const-string v1, "H5TestDataUtils"

    const-string/jumbo v2, "will be inject into AlipayJSBridge.devPerformance"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function(){if(typeof AlipayJSBridge === \'object\'){AlipayJSBridge.devPerformance4Test=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    .line 40
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\';}})();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-interface {p0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit v0

    return-void

    .line 35
    .end local p0    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TestDataUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 18
    .local v2, "keys":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 19
    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 21
    .local v1, "subObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 22
    aget-object v0, v2, v4

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .end local v1    # "subObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 26
    .restart local v1    # "subObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    aget-object v4, v2, v4

    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    aget-object v3, v2, v3

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .end local v1    # "subObj":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 30
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v2    # "keys":[Ljava/lang/String;
    :cond_3
    return-void
.end method
