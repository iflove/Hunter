.class public Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "H5UcInitReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UcInitReceiver"


# instance fields
.field private callBackPageReady:Z

.field private h5BundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private h5ContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Context;",
            ">;"
        }
    .end annotation
.end field

.field private h5PageReadyListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5PageReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private h5UcReadyCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "callBackPage"    # Z

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z

    .line 44
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z

    .line 45
    return-void
.end method


# virtual methods
.method public addH5Bundle(Lcom/alipay/mobile/h5container/api/H5Bundle;)V
    .locals 1
    .param p1, "h5Bundle"    # Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public addH5Context(Lcom/alipay/mobile/h5container/api/H5Context;)V
    .locals 1
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public addH5PageReadyListener(Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
    .locals 1
    .param p1, "h5PageReadyListener"    # Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addH5UcReadyCallBack(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;)V
    .locals 1
    .param p1, "h5UcReadyCallBack"    # Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 65
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h5_action_uc_init_finish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "receive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UcInitReceiver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "result"

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 76
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    .local v0, "result":Z
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 79
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;

    .line 81
    .local v3, "h5UcReadyCallBack":Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "!callBackPageReady uc init result "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v4, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver$1;

    invoke-direct {v4, p0, v3, v0}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver$1;-><init>(Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;Z)V

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 90
    .end local v3    # "h5UcReadyCallBack":Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;
    goto :goto_0

    .line 92
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 95
    .end local v0    # "result":Z
    :cond_3
    return-void

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 98
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 99
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .restart local v0    # "result":Z
    const/4 v2, 0x0

    .line 102
    .local v2, "i":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    const/4 v5, 0x0

    move-object v6, v5

    .line 103
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Context;

    .line 105
    .local v5, "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    move-object v5, v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_7

    .line 106
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 107
    .local v6, "activity":Landroid/app/Activity;
    move-object v6, v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    .line 110
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "callBackPageReady uc init result "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    .line 112
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    .line 113
    .local v7, "h5PageReadyListener":Lcom/alipay/mobile/h5container/api/H5PageReadyListener;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/h5container/api/H5Bundle;

    .line 114
    .local v8, "h5Bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 115
    invoke-virtual {v8, v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setNeedCheckUc(Z)V

    .line 116
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v9

    invoke-interface {v9, v5, v8, v7}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->createPageAsync(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V

    goto :goto_3

    .line 108
    .end local v7    # "h5PageReadyListener":Lcom/alipay/mobile/h5container/api/H5PageReadyListener;
    .end local v8    # "h5Bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    :cond_6
    :goto_2
    return-void

    .line 119
    .end local v6    # "activity":Landroid/app/Activity;
    :cond_7
    :goto_3
    nop

    .end local v5    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    add-int/lit8 v2, v2, 0x1

    .line 120
    goto :goto_1

    .line 122
    .end local v0    # "result":Z
    .end local v2    # "i":I
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_b
    return-void

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void

    .line 66
    :cond_c
    :goto_4
    return-void
.end method
