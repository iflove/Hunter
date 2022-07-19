.class Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper$1;
.super Landroidx/localbroadcastmanager/content/LocalBroadcastManager$Callback;
.source "LocalBroadcastManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper$1;->this$0:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-direct {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public checkReceivers(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 288
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, "num":I
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/DescriptionManager;->findBroadcastReceiverDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 296
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 297
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->hasRegisted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 301
    goto :goto_0

    .line 316
    :cond_2
    return v1

    .line 289
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "num":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public createReceivers(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 210
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/DescriptionManager;->findBroadcastReceiverDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 219
    .local v2, "description":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 220
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    .line 222
    .local v3, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 224
    .local v8, "msgCode":Ljava/lang/String;
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    .end local v8    # "msgCode":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 227
    :cond_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->hasRegisted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    monitor-exit v2

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->isRunInSubThread()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    iget-object v5, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper$1;->this$0:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerSubThreadReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_2

    .line 235
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper$1;->this$0:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 237
    :goto_2
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setHasRegisted(Z)V

    .line 238
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "description":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    .end local p1    # "intent":Landroid/content/Intent;
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    .end local v3    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "description":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v3

    .line 241
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alipay/mobile/framework/FrameworkMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/framework/FrameworkMonitor;->handleDescriptionInitFail(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/Throwable;)V

    .line 242
    sget-object v4, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to create receiver: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .end local v2    # "description":Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 284
    :cond_4
    return-void

    .line 211
    .end local v0    # "action":Ljava/lang/String;
    :cond_5
    :goto_3
    return-void
.end method
