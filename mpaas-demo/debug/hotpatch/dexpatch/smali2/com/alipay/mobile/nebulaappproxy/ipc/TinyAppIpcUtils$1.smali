.class final Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;
.super Ljava/lang/Object;
.source "TinyAppIpcUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->runOnMainProcess(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "TinyAppIpcUtils"

    .line 45
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getLiteProcessService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 46
    .local v3, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;
    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;->isLiteProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->taskToBundleForCall(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;Z)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v2

    .line 48
    .local v1, "data":Landroid/os/Bundle;
    move-object v1, v0

    const-string v4, "IPC_ID"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v4, v5

    .line 49
    .local v4, "taskId":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    const/4 v0, 0x7

    :try_start_0
    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;->sendDataToMainProcess(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v0

    move-object v0, v2

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v4    # "taskId":Ljava/lang/String;
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->isAsync()Z

    move-result v1

    .line 61
    .local v1, "async":Z
    .local v5, "hasError":Z
    :try_start_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->run(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 62
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    if-nez v1, :cond_2

    .line 63
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setResult(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    if-nez v1, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    iput-boolean v4, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->a:Z

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 76
    :catchall_1
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v2    # "e":Ljava/lang/Throwable;
    return-void

    .line 78
    :cond_3
    :goto_0
    return-void

    .line 65
    :catchall_2
    move-exception v6

    .line 66
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 67
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v7

    const-string v8, "error"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v7, "errorMessage"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setResult(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 72
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_4

    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    iput-boolean v4, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->a:Z

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    :cond_4
    return-void

    .line 71
    :catchall_3
    move-exception v2

    .line 72
    if-nez v1, :cond_5

    :try_start_5
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 73
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    iput-boolean v4, v6, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->a:Z

    .line 74
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 76
    :catchall_4
    move-exception v4

    .line 77
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 78
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_1
    nop

    :goto_2
    throw v2
.end method
