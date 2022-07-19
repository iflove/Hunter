.class Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$2;
.super Ljava/lang/Object;
.source "TinyAppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    .line 183
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$2;->b:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$2;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "TinyAppHandler"

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$2;->a:Landroid/os/Bundle;

    const-string v2, "IPC_ID"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 187
    .local v3, "taskId":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->removeIpcTaskFromCache(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    move-result-object v1

    .line 191
    .local v2, "task":Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler$2;->a:Landroid/os/Bundle;

    const-string v4, "IPC_RESULT"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setResult(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 194
    :catchall_1
    move-exception v1

    .line 195
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    .end local v1    # "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    return-void

    .line 197
    :catchall_2
    move-exception v1

    .line 198
    :try_start_4
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 201
    goto :goto_0

    .line 199
    :catchall_3
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    throw v1

    .line 204
    :cond_1
    return-void
.end method
