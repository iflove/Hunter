.class public Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;
.super Ljava/lang/Object;
.source "H5ProcessProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .line 27
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;)V
    .locals 2
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "listener"    # Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5Event;",
            "Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 146
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;

    const/4 v1, 0x0

    .line 149
    .local v1, "h5ListPopDialogProvider":Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->createDialog(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 152
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->showDialog()V

    .line 153
    invoke-interface {v1, p2}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->setOnItemClickListener(Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;)V

    .line 156
    :cond_0
    return-void
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 133
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "message":Landroid/os/Message;
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    .line 135
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v1

    const-string/jumbo v3, "msg_type"

    const v4, 0x1312d43

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageId()I

    move-result v1

    const-string/jumbo v3, "msg_lite_process_page_id"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v1

    const-string/jumbo v3, "nebulaApp"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->clientSenMsg(Ljava/lang/String;Landroid/os/Message;)V

    .line 141
    return-void
.end method

.method public static getLoginId()Ljava/lang/String;
    .locals 3

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v2, v0

    .line 232
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getLoginId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 237
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    .line 236
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5ProcessProxy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static getNick()Ljava/lang/String;
    .locals 3

    .line 203
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v2, v0

    .line 204
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 205
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getNick()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 209
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    .line 208
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5ProcessProxy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static getStringArr(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "ret":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    .local v2, "arr":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 163
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 167
    .end local v2    # "arr":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    return-object v0
.end method

.method public static getUserAvatar()Ljava/lang/String;
    .locals 3

    .line 189
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v2, v0

    .line 190
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getUserAvatar()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 195
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    .line 194
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5ProcessProxy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .line 217
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    move-object v2, v0

    .line 218
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 223
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v1

    .line 222
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5ProcessProxy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static handlerBizInTinyProcess(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chooseImage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "chooseVideo"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_7

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startApp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "closeCurrentApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 92
    .local v0, "closeCurrentApp":Z
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 93
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 96
    .local v3, "activity":Landroid/app/Activity;
    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 101
    .end local v3    # "activity":Landroid/app/Activity;
    :cond_1
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    .line 102
    return v4

    .line 103
    .end local v0    # "closeCurrentApp":Z
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "configService.getConfig"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "configKey"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "tinyApLogLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 108
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 109
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string v5, ""

    .line 110
    .local v5, "value":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 111
    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    :cond_3
    invoke-virtual {v2, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {p1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 115
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    .line 118
    :goto_0
    return v4

    .line 119
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getCities"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v2, v3

    .line 121
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_6

    const-string v0, "isTinyApp"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 122
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    .line 124
    return v4

    .line 127
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    return v1

    .line 42
    :cond_7
    :goto_1
    nop

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v5, "sourceType"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->getStringArr(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v3, "sourceType":[Ljava/lang/String;
    move-object v3, v0

    if-eqz v0, :cond_9

    array-length v0, v3

    if-le v0, v4, :cond_8

    goto :goto_2

    .line 87
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_5

    .line 46
    :cond_9
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "list":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->h5_choose_album:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "strSelectFromAlbum":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/alipay/mobile/nebulaappproxy/R$string;->h5_photo:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "strTakePicture":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "strSelectFromAlbum":Ljava/lang/String;
    .end local v2    # "strTakePicture":Ljava/lang/String;
    goto :goto_3

    .line 53
    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 55
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->h5_choose_album:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .restart local v1    # "strSelectFromAlbum":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/alipay/mobile/nebulaappproxy/R$string;->h5_video:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .restart local v2    # "strTakePicture":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 53
    .end local v1    # "strSelectFromAlbum":Ljava/lang/String;
    .end local v2    # "strTakePicture":Ljava/lang/String;
    :cond_b
    :goto_3
    nop

    .line 61
    :goto_4
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy$1;-><init>(Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->a(Ljava/util/ArrayList;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;)V

    .line 86
    .end local v0    # "list":Ljava/util/ArrayList;
    nop

    .line 89
    :goto_5
    return v4
.end method

.method public static isLogin()Z
    .locals 2

    .line 174
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    const/4 v1, 0x0

    .line 175
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->isLogin()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 180
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5ProcessProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
