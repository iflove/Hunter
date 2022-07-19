.class abstract Lcom/alipay/mobile/quinox/framemonitor/i;
.super Ljava/lang/Object;
.source "TimeOuter.java"


# instance fields
.field private a:Ljava/lang/Runnable;

.field protected b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/i$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/framemonitor/i$1;-><init>(Lcom/alipay/mobile/quinox/framemonitor/i;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/i;->a:Ljava/lang/Runnable;

    .line 23
    nop

    .line 26
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/framemonitor/i;->b:J

    .line 27
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method public b()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/i;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public c()V
    .locals 4

    .line 30
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/i;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/i;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/framemonitor/i;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method
