.class final Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$1;
.super Landroid/os/Handler;
.source "FgBgMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .line 106
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    move-object/from16 v1, p1

    if-eqz v1, :cond_d

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 112
    .local v0, "topActivity":Ljava/lang/String;
    const/4 v3, 0x0

    .line 113
    .local v3, "processName":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 114
    .local v4, "eventTime":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 115
    .local v6, "callingPid":I
    const/4 v7, 0x0

    .line 116
    .local v7, "isLiteProcess":Z
    const-string v8, "key_process_name"

    const-string v9, "key_activity"

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v2, v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    const-wide/16 v11, 0x0

    const-string v13, "key_event_time"

    invoke-virtual {v2, v13, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 120
    const/4 v11, 0x0

    const-string v12, "key_is_lite_process"

    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 121
    const-string v11, "key_calling_pid"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v11, v7

    move v7, v6

    move-wide v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_0

    .line 116
    :cond_0
    move v11, v7

    move v7, v6

    move-wide v5, v4

    move-object v4, v3

    move-object v3, v0

    .line 123
    .end local v0    # "topActivity":Ljava/lang/String;
    .end local v6    # "callingPid":I
    .local v3, "topActivity":Ljava/lang/String;
    .local v4, "processName":Ljava/lang/String;
    .local v5, "eventTime":J
    .local v7, "callingPid":I
    .local v11, "isLiteProcess":Z
    :goto_0
    iget v0, v1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_c

    const/4 v12, 0x1

    if-eq v0, v12, :cond_b

    const/4 v12, 0x2

    if-eq v0, v12, :cond_8

    const/4 v12, 0x3

    const-string v13, "FgBgMonitorService"

    if-eq v0, v12, :cond_1

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unknown message:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v13, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 141
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 142
    .local v14, "replayMsg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v15, v10

    .line 143
    .local v15, "replyData":Landroid/os/Bundle;
    move-object v15, v0

    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingFgProcessName:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$400()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingFgProcessName:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$400()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_2
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$500()Ljava/lang/String;

    move-result-object v16

    :goto_1
    move-object/from16 v10, v16

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingTopActivity:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$600()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sComingTopActivity:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$600()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sTopActivity:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$700()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v15, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/alipay/mobile/common/fgbg/ProcessFgBgWatcher;->mAppContext:Landroid/content/Context;

    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sFgProcessName:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$500()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->getProcessTypeByName(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    invoke-static {v0, v8}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$800(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v8, "key_process_type"

    invoke-virtual {v15, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput v12, v14, Landroid/os/Message;->what:I

    .line 147
    invoke-virtual {v14, v15}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 148
    if-eqz v11, :cond_6

    .line 149
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->findProcessByPid(I)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 150
    .local v8, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    move-object v8, v0

    if-nez v0, :cond_4

    move-object/from16 v0, v17

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lcom/alipay/mobile/liteprocess/LiteProcess;->getReplyTo()Landroid/os/Messenger;

    move-result-object v0

    :goto_3
    move-object/from16 v9, v17

    .line 151
    .local v9, "messenger":Landroid/os/Messenger;
    move-object v9, v0

    if-eqz v0, :cond_5

    .line 152
    invoke-static {v9, v13, v14}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgServer;->reply(Landroid/os/Messenger;Ljava/lang/String;Landroid/os/Message;)V

    .line 154
    .end local v8    # "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    .end local v9    # "messenger":Landroid/os/Messenger;
    :cond_5
    return-void

    .line 155
    :cond_6
    iget-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_7

    .line 157
    :try_start_0
    iget-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v14}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MSG_WHAT_GET_FOREGROUND_PROCESS send message failed! "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v13, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    return-void

    .line 162
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v8, "MSG_WHAT_GET_FOREGROUND_PROCESS send message failed!, message.replayTo is null!"

    invoke-interface {v0, v13, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 131
    .end local v14    # "replayMsg":Landroid/os/Message;
    .end local v15    # "replyData":Landroid/os/Bundle;
    :cond_8
    if-eqz v11, :cond_9

    .line 132
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sLiteCallbacks:Ljava/util/Set;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$200()Ljava/util/Set;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 134
    :cond_9
    iget-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v8, 0x0

    .line 135
    .local v8, "messenger":Landroid/os/Messenger;
    move-object v8, v0

    if-eqz v0, :cond_a

    .line 136
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sCallbacks:Ljava/util/Set;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$300()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v8    # "messenger":Landroid/os/Messenger;
    :cond_a
    return-void

    .line 125
    :cond_b
    # invokes: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->onNotifyMoveToBackground(Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static {v4, v3, v5, v6}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$000(Ljava/lang/String;Ljava/lang/String;J)V

    .line 126
    return-void

    .line 128
    :cond_c
    # invokes: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->onNotifyMoveToForeground(Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static {v4, v3, v5, v6}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$100(Ljava/lang/String;Ljava/lang/String;J)V

    .line 129
    return-void

    .line 171
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "topActivity":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "eventTime":J
    .end local v7    # "callingPid":I
    .end local v11    # "isLiteProcess":Z
    :cond_d
    :goto_4
    return-void
.end method
