.class final Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;
.super Ljava/lang/Object;
.source "FgBgMonitorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->sendMessage(Landroid/content/Context;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$connectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    iput-object p2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 200
    const-string v0, "FgBgMonitorService"

    const/4 v1, 0x0

    .line 202
    .local v1, "serviceMessenger":Landroid/os/Messenger;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$connectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;->get(JLjava/util/concurrent/TimeUnit;)Landroid/os/Messenger;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 205
    goto :goto_1

    .line 203
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "bind service first times failed !"

    invoke-interface {v3, v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->doBindService(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService;->access$900(Landroid/content/Context;)V

    .line 209
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$connectServiceFuture:Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$ConnectServiceFuture;->get(JLjava/util/concurrent/TimeUnit;)Landroid/os/Messenger;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 212
    goto :goto_3

    .line 210
    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    .line 211
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "bind service second times failed !"

    invoke-interface {v3, v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    if-nez v1, :cond_1

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "serviceMessenger get failed, send message abort!, msg:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$message:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorService$2;->val$message:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_6

    .line 221
    return-void

    .line 219
    :catch_6
    move-exception v2

    .line 220
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "serviceMessenger send message failed!, exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v2    # "e":Landroid/os/RemoteException;
    return-void
.end method
