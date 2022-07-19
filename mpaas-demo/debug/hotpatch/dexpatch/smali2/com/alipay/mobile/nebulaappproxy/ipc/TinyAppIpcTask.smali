.class public abstract Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
.super Ljava/lang/Object;
.source "TinyAppIpcTask.java"


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/fastjson/JSONObject;

.field private d:Lcom/alibaba/fastjson/JSONObject;

.field private e:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->e:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    return-object v0
.end method

.method public getIpcId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->c:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getReplyMessenger()Landroid/os/Messenger;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->h:Landroid/os/Messenger;

    return-object v0
.end method

.method public getResult()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->d:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public isAsync()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->f:Z

    return v0
.end method

.method public isCallFromLiteProcess()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->g:Z

    return v0
.end method

.method public replyResult()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->f:Z

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->h:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getLiteProcessService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    .local v1, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;->isLiteProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->h:Landroid/os/Messenger;

    const/16 v2, 0x8

    .line 104
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->taskToBundleForReply(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)Landroid/os/Bundle;

    move-result-object v3

    .line 102
    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;->replyDataToLiteProcess(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 106
    .end local v1    # "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;
    :cond_1
    return-void

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->a:Z

    if-nez v0, :cond_4

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->a:Z

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->e:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    if-eqz v0, :cond_3

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_3
    return-void

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "TinyAppIpcTask"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    return-void
.end method

.method public replyResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 90
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setResult(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->replyResult()V

    .line 92
    return-void
.end method

.method public abstract run(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
.end method

.method public setAsync(Z)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 0
    .param p1, "async"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->f:Z

    .line 66
    return-object p0
.end method

.method public setCallFromLiteProcess(Z)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 0
    .param p1, "callFromLiteProcess"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->g:Z

    .line 75
    return-object p0
.end method

.method public setCallback(Lcom/alipay/mobile/nebulaappproxy/utils/Callback;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)",
            "Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->e:Lcom/alipay/mobile/nebulaappproxy/utils/Callback;

    .line 57
    return-object p0
.end method

.method public setIpcId(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 0
    .param p1, "ipcId"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->b:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public setParam(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 0
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 43
    return-object p0
.end method

.method public setReplyMessenger(Landroid/os/Messenger;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->h:Landroid/os/Messenger;

    .line 84
    return-object p0
.end method

.method public setResult(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 0
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 48
    return-object p0
.end method
