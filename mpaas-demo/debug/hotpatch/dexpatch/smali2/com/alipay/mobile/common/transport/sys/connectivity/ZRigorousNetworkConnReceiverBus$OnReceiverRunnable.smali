.class Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;
.super Ljava/lang/Object;
.source "ZRigorousNetworkConnReceiverBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnReceiverRunnable"
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;->this$0:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;->a:Landroid/content/Intent;

    .line 191
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "ZRigorousNetworkConnReceiverBus"

    .line 197
    :try_start_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;->this$0:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->a(Landroid/content/Context;)I
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->access$000(Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;Landroid/content/Context;)I

    move-result v1

    .line 202
    .local v1, "networkState":I
    const/4 v2, 0x0

    .line 203
    .local v2, "isOnReceive":Z
    if-nez v1, :cond_1

    .line 204
    const-string v3, "[OnReceiverRunnable] No network "

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 207
    const-string v3, "[OnReceiverRunnable] Network changed."

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v2, 0x1

    .line 211
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 212
    const-string v3, "[OnReceiverRunnable] No need on receive!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 216
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;->this$0:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    # getter for: Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->f:Ljava/util/List;
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->access$100(Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 217
    .local v4, "size":I
    move v4, v3

    if-gtz v3, :cond_4

    .line 218
    return-void

    .line 222
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v5, 0x0

    :goto_1
    if-ge v3, v4, :cond_6

    .line 224
    :try_start_1
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;->this$0:Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;

    # getter for: Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->f:Ljava/util/List;
    invoke-static {v6}, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;->access$100(Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/BroadcastReceiver;

    .line 225
    .local v5, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    move-object v5, v6

    if-nez v6, :cond_5

    .line 226
    return-void

    .line 228
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/sys/connectivity/ZRigorousNetworkConnReceiverBus$OnReceiverRunnable;->a:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .end local v5    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    goto :goto_2

    .line 229
    :catchall_0
    move-exception v5

    .line 230
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[OnReceiverRunnable] onReceive exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    .end local v1    # "networkState":I
    .end local v2    # "isOnReceive":Z
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_6
    return-void

    .line 233
    :catchall_1
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[OnReceiverRunnable] Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
