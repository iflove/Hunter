.class public final Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;
.super Ljava/lang/Object;
.source "TinyAppIpcUtils.java"


# static fields
.field public static final KEY_IPC_ASYNC:Ljava/lang/String; = "IPC_ASYNC"

.field public static final KEY_IPC_CALL_FROM_LITE_PROCESS:Ljava/lang/String; = "IPC_CALL_FROM_LP"

.field public static final KEY_IPC_ID:Ljava/lang/String; = "IPC_ID"

.field public static final KEY_IPC_PARAM:Ljava/lang/String; = "IPC_PARAM"

.field public static final KEY_IPC_RESULT:Ljava/lang/String; = "IPC_RESULT"

.field public static final KEY_IPC_TASK:Ljava/lang/String; = "IPC_TASK"

.field public static final WHAT_TINY_APP_IPC_REQUEST:I = 0x7

.field public static final WHAT_TINY_APP_IPC_RESPONSE:I = 0x8

.field private static volatile a:J

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 15
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getIpcTaskFromCache(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 1
    .param p0, "taskId"    # Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    return-object v0
.end method

.method public static isLiteProcess()Z
    .locals 2

    .line 31
    const/4 v0, 0x0

    .local v0, "service":Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getLiteProcessService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;

    move-result-object v1

    .line 32
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;->isLiteProcess()Z

    move-result v1

    return v1

    .line 35
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static removeIpcTaskFromCache(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .locals 1
    .param p0, "taskId"    # Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    return-object v0
.end method

.method public static runOnMainProcess(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)V
    .locals 2
    .param p0, "task"    # Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 39
    if-nez p0, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)V

    .line 83
    .local v0, "subThreadTask":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "IO"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method

.method public static taskToBundleForCall(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)Landroid/os/Bundle;
    .locals 1
    .param p0, "task"    # Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 91
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->taskToBundleForCall(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static taskToBundleForCall(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;Z)Landroid/os/Bundle;
    .locals 7
    .param p0, "task"    # Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;
    .param p1, "callFromLiteProcess"    # Z

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 96
    return-object v0

    .line 98
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "bundle":Landroid/os/Bundle;
    const-class v2, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;

    monitor-enter v2

    .line 100
    :try_start_0
    sget-wide v3, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->a:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->a:J

    .line 101
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "7_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcUtils;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "ipcId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setIpcId(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 104
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->setCallFromLiteProcess(Z)Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 105
    const-string v3, "IPC_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "IPC_PARAM"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "IPC_TASK"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "IPC_ASYNC"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->isAsync()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    const-string v0, "IPC_CALL_FROM_LP"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->isCallFromLiteProcess()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    return-object v1

    .line 101
    .end local v2    # "ipcId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static taskToBundleForReply(Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;)Landroid/os/Bundle;
    .locals 5
    .param p0, "task"    # Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;

    .line 114
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 115
    return-object v0

    .line 117
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 118
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getIpcId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IPC_ID"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppIpcTask;->getResult()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "IPC_RESULT"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v2
.end method
