.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H5CollectJsApiHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field public exitTabScene:Z

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0

    .line 2343
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2344
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    .line 2345
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    .line 2346
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 2350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "collectJsApi param : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    const-string v0, "syncJsApis"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v2, v1

    .line 2353
    .local v2, "apiArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2354
    const/4 v0, 0x0

    move-object v3, v1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2355
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 2356
    .local v3, "jsApi":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v4

    if-eqz v4, :cond_0

    .line 2357
    const-string v4, "apiName"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2358
    .local v4, "action":Ljava/lang/String;
    const-string v5, "params"

    invoke-static {v3, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 2359
    .local v5, "actionParams":Lcom/alibaba/fastjson/JSONObject;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6, v4, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2354
    .end local v3    # "jsApi":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "actionParams":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2363
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # invokes: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h()Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$700(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2364
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    # invokes: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Z)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$800(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    return-void

    .line 2366
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 2368
    return-void
.end method
