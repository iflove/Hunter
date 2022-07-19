.class abstract Lcom/alipay/mobile/quinox/framemonitor/b;
.super Ljava/lang/Object;
.source "AbstractSampler.java"


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field protected b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected c:J

.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alipay/mobile/quinox/framemonitor/b;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "sampleInterval"    # J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/b$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/framemonitor/b$1;-><init>(Lcom/alipay/mobile/quinox/framemonitor/b;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->d:Ljava/lang/Runnable;

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 46
    const-wide/16 p1, 0x3e8

    .line 48
    :cond_0
    iput-wide p1, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->c:J

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sample interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JerkMonitor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/framemonitor/b;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/framemonitor/b;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->d:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->d:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method

.method public b()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/quinox/framemonitor/tool/a;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method abstract c()V
.end method
