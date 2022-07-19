.class public Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;
.super Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;
.source "H5MockBridgeContext.java"


# instance fields
.field private a:Landroid/os/Messenger;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/os/Message;)V
    .locals 1
    .param p1, "h5Bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "message"    # Landroid/os/Message;

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/basebridge/H5BaseBridgeContext;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->bridge:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 32
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    .line 34
    iget-object v0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->a:Landroid/os/Messenger;

    .line 35
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 1
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "keep"    # Z

    .line 86
    const v0, 0x1312dca

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->sendBackDataWithMessageType(Lcom/alibaba/fastjson/JSONObject;ZI)Z

    move-result v0

    return v0
.end method

.method public sendBackDataWithMessageType(Lcom/alibaba/fastjson/JSONObject;ZI)Z
    .locals 8
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "keep"    # Z
    .param p3, "msgType"    # I

    .line 42
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 43
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "H5MockBridgeContext"

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    const-string/jumbo v4, "native_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ignore native fired event "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return v2

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 54
    const-string v4, "callback"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v1

    .line 57
    .local v1, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onGetResult :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 60
    .local v4, "message":Landroid/os/Message;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    .line 61
    .local v6, "bundle":Landroid/os/Bundle;
    move-object v6, v5

    const-string/jumbo v7, "msg_type"

    invoke-virtual {v5, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v4, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v5

    .line 67
    .local v5, "h5EventHandler":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->b:Landroid/app/Activity;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_2

    .line 69
    :try_start_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v7

    .line 71
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 76
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->a:Landroid/os/Messenger;

    const-string/jumbo v7, "nebulaApp"

    invoke-interface {v5, v3, v7, v4}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 80
    :cond_3
    return v2

    .line 44
    .end local v1    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "h5EventHandler":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "client id not specified "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v2
.end method

.method public sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lcom/alipay/mobile/h5container/api/H5CallBack;

    .line 91
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 92
    .local v0, "builder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "H5MockBridgeContext"

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    const-string/jumbo v3, "native_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ignore native fired event "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v1

    .line 103
    const-string v3, "callback"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 104
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v1

    .line 106
    .local v1, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendToWeb..onGetResult :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 109
    .local v3, "message":Landroid/os/Message;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->H5EventToBundle(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 110
    .local v5, "bundle":Landroid/os/Bundle;
    move-object v5, v4

    const v6, 0x1312dcb

    const-string/jumbo v7, "msg_type"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/handler/H5ProcessUtil;->getH5EventHandler()Lcom/alipay/mobile/nebula/process/H5EventHandler;

    move-result-object v4

    .line 116
    .local v4, "h5EventHandler":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->b:Landroid/app/Activity;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 125
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->a:Landroid/os/Messenger;

    const-string/jumbo v6, "nebulaApp"

    invoke-interface {v4, v2, v6, v3}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 128
    :cond_3
    return-void

    .line 93
    .end local v1    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "h5EventHandler":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "client id not specified "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setMainTransActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockBridgeContext;->b:Landroid/app/Activity;

    .line 39
    return-void
.end method
