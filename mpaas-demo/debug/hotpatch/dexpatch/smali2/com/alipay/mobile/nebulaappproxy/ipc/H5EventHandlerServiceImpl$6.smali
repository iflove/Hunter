.class Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$6;
.super Ljava/lang/Object;
.source "H5EventHandlerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->preLoadInTinyProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;

    .line 922
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$6;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 926
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 927
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 929
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-nez v0, :cond_5

    .line 930
    const/4 v0, 0x1

    .line 931
    .local v0, "canInitProvider":Z
    const/4 v3, 0x1

    .line 932
    .local v3, "canInitConfig":Z
    const/4 v4, 0x1

    .line 933
    .local v4, "initCookie":Z
    const/4 v5, 0x1

    .line 934
    .local v5, "initServicePlugin":Z
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 935
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    move-object v7, v1

    .line 936
    .local v7, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v7, v6

    if-eqz v6, :cond_0

    .line 938
    const-string v6, "h5_preLoadInTinyProcess"

    invoke-interface {v7, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 939
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 940
    const-string v6, "canInitProvider"

    const/4 v8, 0x1

    invoke-static {v1, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 941
    const-string v6, "canInitConfig"

    invoke-static {v1, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 942
    const-string v6, "initCookie"

    invoke-static {v1, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    .line 943
    const-string v6, "initServicePlugin"

    invoke-static {v1, v6, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 946
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    if-eqz v3, :cond_1

    .line 947
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl$6;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a(Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;)V

    .line 950
    :cond_1
    if-eqz v0, :cond_2

    .line 951
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->a()V

    .line 954
    :cond_2
    if-eqz v5, :cond_3

    .line 955
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->b()V

    .line 958
    :cond_3
    if-eqz v4, :cond_4

    .line 959
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->c()V

    .line 962
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5EventHandlerServiceImpl;->d()V

    .line 964
    .end local v0    # "canInitProvider":Z
    .end local v3    # "canInitConfig":Z
    .end local v4    # "initCookie":Z
    .end local v5    # "initServicePlugin":Z
    .end local v7    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    return-void

    .line 966
    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EventHandlerImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return-void
.end method
