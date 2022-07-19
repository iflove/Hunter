.class Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;
.super Landroid/os/Handler;
.source "FgBgMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 263
    iput-object p1, p0, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;->this$0:Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;

    .line 264
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 265
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 269
    if-nez p1, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 274
    .local v1, "data":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 275
    const-string v0, "key_process_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "processName":Ljava/lang/String;
    const-string v2, "key_process_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "processType":Ljava/lang/String;
    const-string v3, "key_activity"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "activity":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 279
    new-instance v4, Lcom/alipay/mobile/common/fgbg/ProcessInfo;

    invoke-static {v2}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lcom/alipay/mobile/common/fgbg/ProcessInfo;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;Ljava/lang/String;)V

    .local v4, "processInfo":Lcom/alipay/mobile/common/fgbg/ProcessInfo;
    goto :goto_0

    .line 281
    .end local v4    # "processInfo":Lcom/alipay/mobile/common/fgbg/ProcessInfo;
    :cond_1
    const/4 v4, 0x0

    .line 283
    .end local v0    # "processName":Ljava/lang/String;
    .end local v2    # "processType":Ljava/lang/String;
    .end local v3    # "activity":Ljava/lang/String;
    .restart local v4    # "processInfo":Lcom/alipay/mobile/common/fgbg/ProcessInfo;
    goto :goto_0

    .line 284
    .end local v4    # "processInfo":Lcom/alipay/mobile/common/fgbg/ProcessInfo;
    :cond_2
    const/4 v4, 0x0

    .line 286
    .restart local v4    # "processInfo":Lcom/alipay/mobile/common/fgbg/ProcessInfo;
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 310
    :cond_3
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$600()[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    move-result-object v0

    monitor-enter v0

    .line 311
    :try_start_0
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$600()[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 312
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->GET_FOREGROUND_PROCESS_LOCK:[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$600()[Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 313
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 299
    :cond_4
    if-eqz v4, :cond_6

    .line 300
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler$2;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler$2;-><init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;Lcom/alipay/mobile/common/fgbg/ProcessInfo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 288
    :cond_5
    if-eqz v4, :cond_6

    .line 289
    # getter for: Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler$1;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler$1;-><init>(Lcom/alipay/mobile/common/fgbg/FgBgMonitorImpl$ClientHandler;Lcom/alipay/mobile/common/fgbg/ProcessInfo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 316
    :cond_6
    :goto_1
    return-void
.end method
