.class public Lcom/alipay/mobile/liteprocess/LiteProcessApi;
.super Ljava/lang/Object;
.source "LiteProcessApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findProcessByAppId(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    return-object v0
.end method

.method public static findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 1
    .param p0, "lpid"    # I

    .line 120
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByLpid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    return-object v0
.end method

.method public static findProcessByPid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;
    .locals 1
    .param p0, "pid"    # I

    .line 129
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByPid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllAliveProcess()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/liteprocess/LiteProcess;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->getAllAliveProcess()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 66
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLpid()I
    .locals 1

    .line 70
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getLpid()I

    move-result v0

    return v0
.end method

.method public static getProcessInfo()Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    .locals 1

    .line 74
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->a()Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public static hasPreloadProcess()Z
    .locals 1

    .line 133
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->hasPreloadProcess()Z

    move-result v0

    return v0
.end method

.method public static isAllLiteProcessHide()Z
    .locals 1

    .line 110
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->isAllLiteProcessHide()Z

    move-result v0

    return v0
.end method

.method public static isLiteProcess()Z
    .locals 1

    .line 86
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isLiteProcess()Z

    move-result v0

    return v0
.end method

.method public static isMainProcess()Z
    .locals 1

    .line 82
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->isMainProcess()Z

    move-result v0

    return v0
.end method

.method public static isTaskRoot(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "activity"    # Ljava/lang/Object;

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/advice/ActivityBackAdvice;->isTaskRoot(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static moveTaskToBack(Ljava/lang/Object;)V
    .locals 0
    .param p0, "activity"    # Ljava/lang/Object;

    .line 58
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/advice/ActivityBackAdvice;->moveTaskToBack(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static notifyBundleUpdate(Landroid/os/Bundle;)V
    .locals 9
    .param p0, "params"    # Landroid/os/Bundle;

    .line 147
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isMainProcess()Z

    move-result v0

    const-string v1, "LiteProcess"

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "notifyBundleUpdate not call in main process!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 152
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v2, 0x0

    move-object v3, v2

    .line 153
    .local v3, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    const-string v4, "bundle_update_notify_lite_process"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "configInfo":Ljava/lang/String;
    const-string v4, "enable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "notifyBundleUpdate disable by server!"

    invoke-interface {v2, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->getAllAliveProcess()Ljava/util/List;

    move-result-object v4

    .line 159
    .local v2, "aliveProcesses":Ljava/util/List;
    move-object v2, v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 160
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 161
    .local v5, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "notifyBundleUpdate to liteProcess pid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v6, v5, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    if-eqz v6, :cond_2

    iget v6, v5, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    if-eqz v6, :cond_2

    .line 165
    iget-object v6, v5, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    invoke-interface {v6, p0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService;->notifyBundleUpdate(Landroid/os/Bundle;)V

    .line 166
    .end local v5    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    goto :goto_0

    :cond_3
    return-void

    .line 168
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "notifyBundleUpdate but no alive processes!"

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v0    # "configInfo":Ljava/lang/String;
    .end local v2    # "aliveProcesses":Ljava/util/List;
    .end local v3    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    return-void

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static notifyUcInitSuccess()V
    .locals 5

    .line 137
    const/4 v0, 0x0

    .local v0, "readyProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->getReadyLiteProcess()Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v1

    .line 138
    move-object v0, v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 140
    .local v2, "msg":Landroid/os/Message;
    move-object v2, v1

    const/16 v3, 0x13

    iput v3, v1, Landroid/os/Message;->what:I

    .line 141
    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v1

    const-string v3, "LiteProcess"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 142
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "notifyUcInitSuccess"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static onSchemeStart(Ljava/lang/String;)V
    .locals 2
    .param p0, "schemeUri"    # Ljava/lang/String;

    .line 209
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/Config;->s:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->hasPreloadProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "2018030502317859"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2018032302435038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c:Z

    .line 215
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startLiteProcessAsync(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public static pauseProfileInLite()V
    .locals 10

    .line 177
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isMainProcess()Z

    move-result v0

    const-string v1, "LiteProcess"

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "pauseProfileInLite not call in main process!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 182
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v2, 0x0

    move-object v3, v2

    .line 183
    .local v3, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    const-string/jumbo v4, "nougat_full_compile_pause_profile_lite"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "configInfo":Ljava/lang/String;
    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "pauseProfileInLite disable by server!"

    invoke-interface {v2, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->getAllAliveProcess()Ljava/util/List;

    move-result-object v4

    move-object v5, v2

    .line 189
    .local v5, "aliveProcesses":Ljava/util/List;
    move-object v5, v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 190
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/liteprocess/LiteProcess;

    .line 191
    .local v6, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pauseProfileInLite to liteProcess pid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v6, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v6}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v7, v6, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    if-eqz v7, :cond_2

    .line 195
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 196
    .local v2, "msg":Landroid/os/Message;
    move-object v2, v7

    const/16 v8, 0x18

    iput v8, v7, Landroid/os/Message;->what:I

    .line 197
    invoke-virtual {v6}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v7

    invoke-static {v7, v1, v2}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "pauseProfileInLite notify success!"

    invoke-interface {v7, v1, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v2    # "msg":Landroid/os/Message;
    .end local v6    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    goto :goto_0

    :cond_3
    return-void

    .line 201
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "pauseProfileInLite but no alive processes!"

    invoke-interface {v2, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v0    # "configInfo":Ljava/lang/String;
    .end local v3    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    .end local v5    # "aliveProcesses":Ljava/util/List;
    return-void

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static registerLiteClient(Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;)V
    .locals 1
    .param p0, "liteClient"    # Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static registerLiteProcessActivityClass(Ljava/lang/Class;IZ)V
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "lpid"    # I
    .param p2, "needHookBackKey"    # Z

    .line 37
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/Class;I)V

    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p0, p1}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a(Ljava/lang/Class;I)V

    .line 41
    if-nez p2, :cond_1

    .line 42
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a(Ljava/lang/Class;)V

    .line 45
    :cond_1
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    invoke-static {p0}, Lcom/alipay/mobile/liteprocess/Util;->setContext(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public static stopAllLiteProcessInServer()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a()V

    .line 102
    return-void
.end method

.method public static stopLiteProcessByAppIdInServer(Ljava/lang/String;)V
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->b(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static stopLiteProcessByLpidInServer(I)V
    .locals 3
    .param p0, "lpid"    # I

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(I)V

    .line 97
    return-void
.end method

.method public static stopSelfInClient()V
    .locals 3

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->b()V

    .line 107
    return-void
.end method
