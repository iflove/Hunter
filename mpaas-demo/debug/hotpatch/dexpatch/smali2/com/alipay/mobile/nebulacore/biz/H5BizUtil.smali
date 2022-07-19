.class public Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;
.super Ljava/lang/Object;
.source "H5BizUtil.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/h5container/api/H5BridgeContext;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->a:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->b:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStartedBizService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static popResult(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 57
    .local v0, "bridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->unregisterServicePointCut(Ljava/lang/String;)V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    sget-object v1, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    .line 61
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 62
    const-string v1, "6001"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->sendErrorCode(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 68
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v1, 0x1

    return v1
.end method

.method public static registerServicePointCut(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 23
    sget-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 24
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "advice":Lcom/alipay/mobile/nebulacore/biz/H5BizServiceAdvice;
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v2

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    const-string/jumbo v4, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 38
    sget-object v2, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v2, 0x1

    return v2
.end method

.method public static saveResult(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 50
    const-string v0, "funcName"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public static sendErrorCode(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 3
    .param p0, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 82
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string/jumbo v2, "resultStatus"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {p0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 84
    return-void
.end method

.method public static unregisterServicePointCut(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebulacore/biz/H5BizUtil;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 44
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aspect/Advice;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->unRegisterPointCutAdvice(Lcom/alipay/mobile/aspect/Advice;)V

    .line 47
    :cond_0
    return-void
.end method
