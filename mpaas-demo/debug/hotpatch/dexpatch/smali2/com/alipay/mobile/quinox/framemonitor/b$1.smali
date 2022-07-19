.class final Lcom/alipay/mobile/quinox/framemonitor/b$1;
.super Ljava/lang/Object;
.source "AbstractSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/framemonitor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/framemonitor/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/framemonitor/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/framemonitor/b;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/b$1;->a:Lcom/alipay/mobile/quinox/framemonitor/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 32
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/b$1;->a:Lcom/alipay/mobile/quinox/framemonitor/b;

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/framemonitor/b;->c()V

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 34
    .local v2, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/quinox/framemonitor/b$1;->a:Lcom/alipay/mobile/quinox/framemonitor/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".doSample cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JerkMonitor"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/b$1;->a:Lcom/alipay/mobile/quinox/framemonitor/b;

    iget-object v4, v4, Lcom/alipay/mobile/quinox/framemonitor/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    .line 38
    .local v5, "handler":Landroid/os/Handler;
    move-object v5, v4

    iget-object v6, p0, Lcom/alipay/mobile/quinox/framemonitor/b$1;->a:Lcom/alipay/mobile/quinox/framemonitor/b;

    invoke-static {v6}, Lcom/alipay/mobile/quinox/framemonitor/b;->a(Lcom/alipay/mobile/quinox/framemonitor/b;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    iget-object v4, p0, Lcom/alipay/mobile/quinox/framemonitor/b$1;->a:Lcom/alipay/mobile/quinox/framemonitor/b;

    invoke-static {v4}, Lcom/alipay/mobile/quinox/framemonitor/b;->a(Lcom/alipay/mobile/quinox/framemonitor/b;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/quinox/framemonitor/b$1;->a:Lcom/alipay/mobile/quinox/framemonitor/b;

    iget-wide v6, v6, Lcom/alipay/mobile/quinox/framemonitor/b;->c:J

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .end local v5    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
