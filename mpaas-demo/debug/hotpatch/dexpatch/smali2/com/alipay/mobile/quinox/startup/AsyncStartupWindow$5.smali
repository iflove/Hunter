.class final Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;
.super Ljava/lang/Object;
.source "AsyncStartupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->hideIfNot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 168
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x4

    # invokes: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b(I)V
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$300(I)V

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "view":Landroid/view/View;
    :try_start_0
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->c:Ljava/util/concurrent/FutureTask;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$100()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 178
    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "AsyncStartupWindow"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    .line 180
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$200()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    const-wide/16 v1, 0x96

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 187
    :goto_1
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$200()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 190
    :cond_1
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->d:Landroid/os/Handler;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$500()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5$1;-><init>(Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method
