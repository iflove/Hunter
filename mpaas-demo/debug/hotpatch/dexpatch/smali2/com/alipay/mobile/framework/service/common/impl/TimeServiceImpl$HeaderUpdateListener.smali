.class public Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;
.super Ljava/lang/Object;
.source "TimeServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcHeaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeaderUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;


# direct methods
.method protected constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    .line 199
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRpcHeaderUpdateEvent(Lcom/alipay/mobile/common/rpc/RpcHeader;)V
    .locals 12
    .param p1, "rpcHeader"    # Lcom/alipay/mobile/common/rpc/RpcHeader;

    .line 203
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    const/4 v2, 0x1

    # setter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->c:Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$102(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;Z)Z

    .line 205
    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/alipay/mobile/common/rpc/RpcHeader;->httpUrlHeader:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    if-eqz v1, :cond_5

    .line 207
    iget-object v1, p1, Lcom/alipay/mobile/common/rpc/RpcHeader;->httpUrlHeader:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    const-string v2, "Server-Time"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "serverTimeString":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 209
    .local v2, "serverTime":J
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 211
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v4

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v4

    .line 213
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "TimeService"

    invoke-interface {v5, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 217
    monitor-exit v0

    return-void

    .line 220
    :cond_1
    const/4 v4, 0x0

    .line 221
    .local v4, "shouldUpdate":Z
    const/4 v5, 0x0

    .line 223
    .local v5, "shouldBroadcast":Z
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a()Z
    invoke-static {v6}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$200(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 225
    const/4 v4, 0x1

    .line 226
    const/4 v5, 0x1

    goto :goto_1

    .line 227
    :cond_2
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J
    invoke-static {v6}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$300(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J
    invoke-static {v10}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$400(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v8, v2, v6

    if-lez v8, :cond_3

    .line 231
    const/4 v4, 0x1

    goto :goto_1

    .line 232
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J
    invoke-static {v6}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$300(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J
    invoke-static {v10}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$400(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    sub-long/2addr v6, v2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 234
    const/4 v4, 0x1

    .line 236
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 237
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "TimeService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stored serverTime:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J
    invoke-static {v9}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$300(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " stored updateTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J
    invoke-static {v9}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$400(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " new serverTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " new updateTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # setter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a:J
    invoke-static {v6, v2, v3}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$302(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;J)J

    .line 240
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    # setter for: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b:J
    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$402(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;J)J

    .line 241
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$HeaderUpdateListener;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->a()Z
    invoke-static {v6}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$200(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 242
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.alipay.mobile.timeservice.SERVER_TIME_UPDATED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v6, "serverTimeUpdateIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string v8, "TimeService"

    const-string v9, "com.alipay.mobile.timeservice.SERVER_TIME_UPDATED is sent."

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v1    # "serverTimeString":Ljava/lang/String;
    .end local v2    # "serverTime":J
    .end local v4    # "shouldUpdate":Z
    .end local v5    # "shouldBroadcast":Z
    .end local v6    # "serverTimeUpdateIntent":Landroid/content/Intent;
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
