.class final Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;
.super Ljava/lang/Object;
.source "H5ProcessProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->handlerBizInTinyProcess(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 6
    .param p1, "index"    # I

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "sourceType"

    if-nez p1, :cond_0

    .line 67
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    move-object v4, v1

    .line 68
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v3

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 70
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v3

    const-string v5, "album"

    invoke-virtual {v3, v0, v5}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    .line 71
    invoke-virtual {v4, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    .line 74
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    move-object v4, v1

    .line 77
    .restart local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v3

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 79
    .restart local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v3

    const-string v5, "camera"

    invoke-virtual {v3, v0, v5}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    .line 80
    invoke-virtual {v4, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    .line 83
    .end local v1    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void
.end method
