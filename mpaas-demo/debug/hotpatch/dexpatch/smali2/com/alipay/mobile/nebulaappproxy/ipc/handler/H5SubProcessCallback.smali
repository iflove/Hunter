.class public Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5SubProcessCallback;
.super Ljava/lang/Object;
.source "H5SubProcessCallback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTopDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 176
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 177
    .local v1, "uri":Ljava/net/URI;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "index":I
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 179
    .end local v0    # "index":I
    .end local v1    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTopDomain ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5SubProcessCallback"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 48
    return v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 52
    .local v3, "data":Landroid/os/Bundle;
    move-object v3, v1

    const-string/jumbo v4, "msg_type"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, "what":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerReqBizHandler Process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " what "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    const-string v5, "H5SubProcessCallback"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const v4, 0x1312dca

    const/4 v6, 0x1

    if-ne v1, v4, :cond_2

    .line 59
    nop

    .line 60
    invoke-static {v3, v2, v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->toH5EventWhitExtra(Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/Context;Z)Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    .line 62
    .local v2, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    move-object v2, v0

    .line 63
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->isKeepCallback()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getSubProH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5Event;Z)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v0

    .line 64
    .local v0, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "H5BridgeContext "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz v0, :cond_1

    instance-of v4, v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;

    if-eqz v4, :cond_1

    .line 66
    move-object v4, v0

    check-cast v4, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;

    .line 67
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event;->isKeepCallback()Z

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z

    .line 69
    .end local v0    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .end local v2    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    :cond_1
    goto/16 :goto_4

    :cond_2
    const v4, 0x1312dcb

    if-ne v1, v4, :cond_4

    .line 70
    nop

    .line 71
    invoke-static {v3, v2, v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->toH5EventWhitExtra(Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/Context;Z)Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    move-object v4, v2

    .line 73
    .local v4, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    move-object v4, v0

    .line 74
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->isKeepCallback()Z

    move-result v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getSubProH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5Event;Z)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v0

    .line 75
    .restart local v0    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "JS_API_CALL_SEND_TO_WEB "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-eqz v0, :cond_3

    instance-of v5, v0, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;

    if-eqz v5, :cond_3

    .line 77
    move-object v5, v0

    check-cast v5, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;

    .line 78
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v2}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 80
    .end local v0    # "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .end local v4    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    :cond_3
    goto/16 :goto_4

    :cond_4
    const v4, 0x1312dcc

    if-ne v1, v4, :cond_9

    .line 81
    nop

    .line 82
    invoke-static {v3, v2, v2, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->toH5EventWhitExtra(Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/Context;Z)Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v4

    move-object v5, v2

    .line 83
    .local v5, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    move-object v7, v2

    .line 84
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v4

    const-string/jumbo v8, "url"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "url":Ljava/lang/String;
    const-string v8, "cookie"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "cookie":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "JS_API_CALL_SYNC_COOKIE url = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", cookie = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "H5AliAutoLoginPlugin"

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    .line 90
    :cond_5
    invoke-static {v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5SubProcessCallback;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "domain":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v10

    .line 92
    .local v2, "cm":Landroid/webkit/CookieManager;
    move-object v2, v10

    invoke-virtual {v10, v6}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 93
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 94
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 95
    array-length v11, v10

    :goto_0
    if-ge v0, v11, :cond_6

    aget-object v12, v10, v0

    .line 96
    .local v12, "cookieItem":Ljava/lang/String;
    invoke-virtual {v2, v9, v12}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v12    # "cookieItem":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_6
    goto :goto_1

    .line 99
    :cond_7
    invoke-virtual {v2, v9, v8}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 102
    .end local v2    # "cm":Landroid/webkit/CookieManager;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "cookie":Ljava/lang/String;
    .end local v9    # "domain":Ljava/lang/String;
    goto/16 :goto_4

    .line 88
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v5    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .restart local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "cookie":Ljava/lang/String;
    :cond_8
    :goto_2
    return v6

    .line 102
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "cookie":Ljava/lang/String;
    :cond_9
    const v0, 0x1312dc4

    if-ne v1, v0, :cond_b

    .line 103
    const-string v0, "func"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v4, "param"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "params":Ljava/lang/String;
    const-class v5, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/service/H5Service;

    move-object v7, v2

    .line 107
    .local v7, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v7, v5

    if-eqz v5, :cond_a

    .line 108
    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    move-object v8, v2

    .line 109
    .local v8, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v8, v5

    if-eqz v5, :cond_a

    .line 110
    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v5

    move-object v9, v2

    .line 111
    .local v9, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    move-object v9, v5

    if-eqz v5, :cond_a

    .line 112
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-interface {v9, v0, v5, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 116
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "params":Ljava/lang/String;
    .end local v7    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v8    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v9    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    :cond_a
    goto/16 :goto_4

    :cond_b
    const v0, 0xbebc9a9

    const-string v4, "downloadCallback==null"

    const-string v7, "downloadUrl"

    if-ne v1, v0, :cond_d

    .line 117
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    .line 118
    .local v7, "downloadUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getDownloadCallback(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    move-result-object v0

    move-object v8, v2

    .line 119
    .local v8, "downloadCallback":Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    move-object v8, v0

    if-eqz v0, :cond_c

    .line 120
    invoke-interface {v8, v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V

    goto/16 :goto_4

    .line 122
    :cond_c
    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v7    # "downloadUrl":Ljava/lang/String;
    .end local v8    # "downloadCallback":Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    goto/16 :goto_4

    :cond_d
    const v0, 0xbebc9aa

    if-ne v1, v0, :cond_f

    .line 128
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "downloadUrl":Ljava/lang/String;
    const-string v7, "downloadFilePath"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getDownloadCallback(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    move-result-object v8

    move-object v9, v2

    .line 131
    .local v9, "downloadCallback":Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    move-object v9, v8

    if-eqz v8, :cond_e

    .line 132
    invoke-interface {v9, v2, v7}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 134
    :cond_e
    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "downloadCallback":Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    goto/16 :goto_4

    :cond_f
    const v0, 0xbebc9ab

    if-ne v1, v0, :cond_11

    .line 140
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0    # "downloadUrl":Ljava/lang/String;
    const-string v7, "downloadFailCode"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v7

    .line 142
    .local v7, "code":I
    const-string v8, "downloadFailMsg"

    invoke-static {v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "failMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getDownloadCallback(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;

    move-result-object v9

    move-object v10, v2

    .line 144
    .local v10, "downloadCallback":Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    move-object v10, v9

    if-eqz v9, :cond_10

    .line 145
    invoke-interface {v10, v2, v7, v8}, Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;->onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 147
    :cond_10
    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v7    # "code":I
    .end local v8    # "failMsg":Ljava/lang/String;
    .end local v10    # "downloadCallback":Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;
    goto :goto_4

    :cond_11
    const v0, 0xbebf0bd

    if-ne v1, v0, :cond_12

    .line 150
    const-string/jumbo v0, "nebulaAuthCodeKey"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "key":Ljava/lang/String;
    const-string v4, "authCodeResult"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v2, "result":Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 153
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->triggerOpenAuthCallback(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 154
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_4

    :cond_12
    const v0, 0xbebc9ac

    if-ne v1, v0, :cond_13

    .line 155
    const-string v0, "fileUri"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 156
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v2, "callbackIntent":Landroid/content/Intent;
    move-object v2, v5

    const-string v7, "FILE_CHOOSER_RESULT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .end local v2    # "callbackIntent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 161
    :cond_13
    const v0, 0xbebc9ae

    if-ne v1, v0, :cond_15

    .line 162
    const-string v0, "appId"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isRemoteDebugConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->isVConsolePanelOpened()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 164
    :cond_14
    const-string/jumbo v0, "remote_debug_msg"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "remoteDebugMsg":Ljava/lang/String;
    const-string/jumbo v4, "remote_debug_content"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "remoteDebugContent":Ljava/lang/String;
    invoke-static {v2, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->sendMsgToRemoteWorkerOrVConsole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 161
    .end local v0    # "remoteDebugMsg":Ljava/lang/String;
    .end local v2    # "appId":Ljava/lang/String;
    .end local v4    # "remoteDebugContent":Ljava/lang/String;
    :cond_15
    :goto_3
    nop

    .line 169
    :cond_16
    :goto_4
    return v6
.end method
