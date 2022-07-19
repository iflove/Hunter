.class Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;
.super Ljava/lang/Object;
.source "TinyAppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a(Landroid/os/Bundle;Landroid/os/Messenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/os/Messenger;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->c:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->b:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "IPC_RESULT"

    const-string v1, "TinyAppHandler"

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "async":Z
    const/4 v3, 0x0

    .line 142
    .local v3, "hasError":Z
    const/16 v4, 0x8

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    const-string v7, "IPC_ASYNC"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    move v2, v6

    .line 143
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    const-string v7, "IPC_TASK"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    .line 144
    .local v7, "taskClass":Ljava/lang/String;
    move-object v7, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 145
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v8, v5

    .line 146
    .local v8, "taskObj":Ljava/lang/Object;
    move-object v8, v6

    :try_start_1
    instance-of v6, v6, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    if-eqz v6, :cond_2

    .line 147
    move-object v6, v8

    check-cast v6, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    move-object v9, v5

    .line 148
    .local v9, "task":Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    move-object v9, v6

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setAsync(Z)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 149
    if-eqz v2, :cond_0

    .line 150
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->b:Landroid/os/Messenger;

    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setReplyMessenger(Landroid/os/Messenger;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 152
    .end local v8    # "taskObj":Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    const-string v10, "IPC_ID"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setIpcId(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 153
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    const-string v10, "IPC_CALL_FROM_LP"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setCallFromLiteProcess(Z)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 154
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    const-string v10, "IPC_PARAM"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setParam(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 155
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->run(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 156
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_2

    .line 157
    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setResult(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 158
    iget-object v10, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    .line 159
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    :cond_1
    invoke-virtual {v10, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "taskClass":Ljava/lang/String;
    .end local v9    # "task":Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 170
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 172
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->b:Landroid/os/Messenger;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    return-void

    .line 173
    :catchall_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 178
    :cond_3
    return-void

    .line 163
    :catchall_2
    move-exception v6

    move-object v8, v5

    move-object v5, v6

    .line 164
    .local v5, "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v3, 0x1

    .line 165
    :try_start_3
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v8

    .line 166
    .local v7, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v6

    const-string v8, "error"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v6, "errorMessage"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 172
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v7    # "result":Lcom/alibaba/fastjson/JSONObject;
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->b:Landroid/os/Messenger;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    return-void

    .line 170
    :catchall_3
    move-exception v0

    if-eqz v2, :cond_4

    if-eqz v3, :cond_5

    .line 172
    :cond_4
    :try_start_5
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->b:Landroid/os/Messenger;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$1;->a:Landroid/os/Bundle;

    invoke-static {v5, v4, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 175
    goto :goto_2

    .line 173
    :catchall_4
    move-exception v4

    .line 174
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    throw v0
.end method
