.class public Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;
.super Landroid/os/Handler;
.source "ManagerToastLikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog$Messages;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManagerToastLikeDialog"

.field private static mManagerDialog:Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;


# instance fields
.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    .line 46
    return-void
.end method

.method private displayToastLikeDialog(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)V
    .locals 3
    .param p1, "h5ToastLikeDialog"    # Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 114
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->show()V

    .line 119
    const v0, 0x475354

    .line 120
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->getDuration()I

    move-result v1

    int-to-long v1, v1

    .line 119
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->sendMessageDelayed(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ManagerToastLikeDialog"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private getDuration(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)J
    .locals 2
    .param p1, "toastLikeDialog"    # Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 88
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;
    .locals 2

    const-class v0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mManagerDialog:Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 51
    monitor-exit v0

    return-object v1

    .line 53
    :cond_0
    :try_start_1
    new-instance v1, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;-><init>()V

    .line 54
    sput-object v1, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mManagerDialog:Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hasManagerInstance()Z
    .locals 1

    .line 139
    sget-object v0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mManagerDialog:Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendMessageDelayed(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;IJ)V
    .locals 2
    .param p1, "h5ToastLikeDialog"    # Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;
    .param p2, "messageId"    # I
    .param p3, "delay"    # J

    .line 81
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    .local v1, "message":Landroid/os/Message;
    move-object v1, v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, v1, p3, p4}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    return-void
.end method

.method private showNextSuperToast()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    const/4 v1, 0x0

    move-object v2, v1

    .line 69
    .local v2, "h5ToastLikeDialog":Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const v0, 0x465354

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v1, "message":Landroid/os/Message;
    move-object v1, v0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->sendMessage(Landroid/os/Message;)Z

    .line 73
    .end local v1    # "message":Landroid/os/Message;
    return-void

    .line 74
    :cond_1
    const v0, 0x455354

    .line 75
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->getDuration(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)J

    move-result-wide v3

    .line 74
    invoke-direct {p0, v2, v0, v3, v4}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->sendMessageDelayed(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;IJ)V

    .line 77
    return-void
.end method


# virtual methods
.method protected add(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->showNextSuperToast()V

    .line 61
    return-void
.end method

.method public cancelAllToastLikeDialogs()V
    .locals 3

    .line 143
    const v0, 0x465354

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->removeMessages(I)V

    .line 144
    const v0, 0x455354

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->removeMessages(I)V

    .line 145
    const v0, 0x475354

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 148
    .local v1, "h5ToastLikeDialog":Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;
    move-object v1, v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->dismiss()V

    .line 151
    .end local v1    # "h5ToastLikeDialog":Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 153
    return-void
.end method

.method protected confirmRemoveDialog(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)V
    .locals 3
    .param p1, "h5ToastLikeDialog"    # Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 132
    const-string v0, "ManagerToastLikeDialog"

    const-string/jumbo v1, "remove dialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 134
    const v0, 0x455354

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->sendMessageDelayed(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;IJ)V

    .line 136
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 96
    .local v0, "h5ToastLikeDialog":Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x455354

    if-eq v1, v2, :cond_2

    const v2, 0x465354

    if-eq v1, v2, :cond_1

    const v2, 0x475354

    if-eq v1, v2, :cond_0

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->removeToastLikeDialog(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)V

    .line 105
    return-void

    .line 101
    :cond_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->displayToastLikeDialog(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)V

    .line 102
    return-void

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->showNextSuperToast()V

    .line 99
    return-void
.end method

.method protected removeToastLikeDialog(Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;)V
    .locals 0
    .param p1, "h5ToastLikeDialog"    # Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 127
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->dismiss()V

    .line 128
    return-void
.end method
