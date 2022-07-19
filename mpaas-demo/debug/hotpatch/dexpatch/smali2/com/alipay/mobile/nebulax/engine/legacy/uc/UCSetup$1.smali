.class Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;
.super Ljava/lang/Object;
.source "UCSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 84
    return-void

    .line 88
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/NXUcService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, "NebulaXEngine.UCSetup"

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getServiceDownGradeMode()Ljava/lang/String;

    move-result-object v0

    const-string v5, "none"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, " ucservice not found,use system webview"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a(Z)V

    .line 92
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->b(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)I

    move-result v0

    .line 97
    if-lez v0, :cond_2

    .line 99
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-static {v5}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    int-to-long v6, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uc init timeout, latch count: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-static {v5}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a(Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 107
    const-string v0, "h5_wait_uc_init_timeout"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$1;->a:Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a(Z)V

    .line 111
    :cond_2
    return-void
.end method
