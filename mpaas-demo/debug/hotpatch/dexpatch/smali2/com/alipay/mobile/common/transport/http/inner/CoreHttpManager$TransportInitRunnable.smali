.class Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;
.super Ljava/lang/Object;
.source "CoreHttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportInitRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    .line 535
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;->this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 541
    const-string v0, "HttpManager"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;->this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    .line 543
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->init()V

    .line 546
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;->this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    # invokes: Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->c()V
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->access$000(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V

    .line 549
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;->this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    # invokes: Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->b()V
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->access$100(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V

    .line 552
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;->this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    # invokes: Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->d()V
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->access$200(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)V

    .line 555
    invoke-static {}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->getInstance()Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->getInstance()Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->addReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;->this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->notifyFirstTunnelChanged()V

    .line 560
    const-string v1, "Transport async init finish."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    goto :goto_0

    .line 561
    :catchall_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "Network init very serious error. "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager$TransportInitRunnable;->this$0:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    # getter for: Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->f:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->access$300(Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    return-void

    .line 566
    :catchall_1
    move-exception v1

    .line 567
    .restart local v1    # "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "countDown exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
