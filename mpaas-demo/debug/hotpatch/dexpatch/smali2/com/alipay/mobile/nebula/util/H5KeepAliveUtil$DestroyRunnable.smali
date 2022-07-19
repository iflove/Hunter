.class public Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;
.super Ljava/lang/Object;
.source "H5KeepAliveUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestroyRunnable"
.end annotation


# instance fields
.field private invalid:Z

.field private session:Lcom/alipay/mobile/h5container/api/H5Session;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 1
    .param p1, "session"    # Lcom/alipay/mobile/h5container/api/H5Session;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->invalid:Z

    .line 317
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->session:Lcom/alipay/mobile/h5container/api/H5Session;

    .line 318
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "H5KeepAliveUtil"

    .line 328
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DestroyRunnable run for session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->invalid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " session exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->session:Lcom/alipay/mobile/h5container/api/H5Session;

    .line 330
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->isExited()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->invalid:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->isExited()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getRunningActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5TaskUtils;->getTaskInfoMatchTopActivity(Landroid/app/Activity;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 336
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get taskInfo for activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-nez v1, :cond_1

    .line 338
    return-void

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->exitSession()Z

    .line 341
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->removeRunningTinyActivity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v1    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    return-void

    .line 342
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 332
    :cond_2
    :goto_0
    return-void

    .line 342
    :catchall_1
    move-exception v1

    const/4 v1, 0x0

    .line 343
    .local v1, "t":Ljava/lang/Throwable;
    :goto_1
    const-string/jumbo v2, "remove delay error"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public setInvalid()V
    .locals 2

    .line 321
    const-string v0, "H5KeepAliveUtil"

    const-string v1, "DestroyRunnable set invalid"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil$DestroyRunnable;->invalid:Z

    .line 323
    return-void
.end method
