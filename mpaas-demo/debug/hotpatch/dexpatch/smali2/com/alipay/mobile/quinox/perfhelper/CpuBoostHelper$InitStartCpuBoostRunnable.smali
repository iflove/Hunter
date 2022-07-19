.class Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$InitStartCpuBoostRunnable;
.super Ljava/lang/Object;
.source "CpuBoostHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitStartCpuBoostRunnable"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$InitStartCpuBoostRunnable;->a:Landroid/content/Context;

    .line 323
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "CpuBoostHelper"

    .line 328
    :try_start_0
    const-string v1, "init & start cpu booster"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    move-result-object v1

    .line 332
    .local v1, "helper":Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;

    move-result-object v2

    const/4 v3, 0x0

    .line 333
    .local v3, "cpuInfoPolling":Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;
    move-object v3, v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;->start()V

    .line 335
    iget-object v2, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper$InitStartCpuBoostRunnable;->a:Landroid/content/Context;

    # invokes: Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->a(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->access$100(Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;Landroid/content/Context;)V

    .line 336
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->startBoost()Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v1    # "helper":Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
    .end local v3    # "cpuInfoPolling":Lcom/alipay/mobile/quinox/perfhelper/cpu/CpuInfoPolling;
    :cond_0
    return-void

    .line 373
    :catchall_0
    move-exception v1

    .line 374
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "init cpu boost failed"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
