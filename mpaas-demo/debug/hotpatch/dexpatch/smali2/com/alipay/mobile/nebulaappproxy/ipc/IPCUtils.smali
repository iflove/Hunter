.class public Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;
.super Ljava/lang/Object;
.source "IPCUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/liteprocess/LiteProcess;ILandroid/os/Bundle;)V
    .locals 3
    .param p0, "liteProcess"    # Lcom/alipay/mobile/liteprocess/LiteProcess;
    .param p1, "what"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 93
    if-nez p0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    .local v1, "message":Landroid/os/Message;
    move-object v1, v0

    iput p1, v0, Landroid/os/Message;->what:I

    .line 97
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    const-string v2, "TINY_APP_BIZ"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 99
    return-void
.end method

.method public static replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 7
    .param p0, "replyTo"    # Landroid/os/Messenger;
    .param p1, "what"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 128
    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 131
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p2, :cond_1

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    goto :goto_0

    .line 135
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v1, v2

    .line 137
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    .local v2, "time":J
    const-string v4, "logTag"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 139
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "replyDataToLiteProcess...logTag:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 142
    .local v0, "message":Landroid/os/Message;
    move-object v0, v4

    iput p1, v4, Landroid/os/Message;->what:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    const-string v4, "TINY_APP_BIZ"

    invoke-static {p0, v4, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 145
    return-void
.end method

.method public static sendDataToAllLiteProcess(ILandroid/os/Bundle;)V
    .locals 7
    .param p0, "what"    # I
    .param p1, "data"    # Landroid/os/Bundle;

    .line 78
    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->getAllAliveProcess()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 81
    .local v2, "allLiteProcessList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 83
    .local v3, "time":J
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sendDataToAllLiteProcess..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",logTag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 85
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    const-string v5, "logTag"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 87
    invoke-static {v5, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;ILandroid/os/Bundle;)V

    .line 88
    goto :goto_0

    .line 90
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "time":J
    :cond_1
    return-void
.end method

.method public static sendDataToLiteProcess(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "what"    # I
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 33
    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 35
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 38
    .local v1, "time":J
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendDataToLiteProcess...appId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",logTag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->getAllAliveProcess()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 40
    .local v5, "liteProcessList":Ljava/util/List;
    move-object v5, v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    const-string v3, "logTag"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 46
    .local v4, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-virtual {v4}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    invoke-static {v4, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;ILandroid/os/Bundle;)V

    .line 49
    .end local v4    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    :cond_2
    goto :goto_0

    .line 52
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "time":J
    .end local v5    # "liteProcessList":Ljava/util/List;
    :cond_3
    return-void

    .line 41
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "time":J
    .restart local v5    # "liteProcessList":Ljava/util/List;
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sendDataToLiteProcess...all alive process is empty, appId "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    return-void

    .line 50
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "time":J
    .end local v5    # "liteProcessList":Ljava/util/List;
    :catchall_0
    move-exception v0

    .line 51
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendDataToLiteProcess...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 33
    :cond_5
    :goto_2
    return-void
.end method

.method public static sendDataToLiteProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "what"    # I
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 67
    .local v1, "data":Landroid/os/Bundle;
    move-object v1, v0

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, p1, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToLiteProcess(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public static sendDataToMainProcess(ILandroid/os/Bundle;)V
    .locals 6
    .param p0, "what"    # I
    .param p1, "bundle"    # Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 103
    .local v0, "data":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    .line 110
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 111
    .local v1, "time":J
    const-string v3, "logTag"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendDataToMainProcess...logTag:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    .line 115
    .local v4, "message":Landroid/os/Message;
    move-object v4, v3

    iput p0, v3, Landroid/os/Message;->what:I

    .line 116
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    const-string v3, "TINY_APP_BIZ"

    invoke-static {v3, v4}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->send(Ljava/lang/String;Landroid/os/Message;)V

    .line 118
    return-void
.end method
