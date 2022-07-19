.class abstract Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;
.super Ljava/lang/Object;
.source "AbstractWatcher.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher;
.implements Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/b;


# static fields
.field private static final a:J


# instance fields
.field private b:J

.field private volatile c:Z

.field private d:I

.field private e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->a:J

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b:J

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c:Z

    .line 20
    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d:I

    .line 29
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->f:Ljava/lang/Runnable;

    .line 24
    nop

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 13
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 13
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 13
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c:Z

    return v0
.end method

.method protected static d()Landroid/os/Handler;
    .locals 1

    .line 89
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 13
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;

    .line 13
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 50
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c:Z

    if-eqz v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c:Z

    .line 54
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->f:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method

.method public a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;

    .line 81
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 60
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c:Z

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stopped."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IAutoStopWatcher"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->c:Z

    .line 65
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/a;->e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/IAutoStopWatcher$OnStopListener;->onStopped()V

    .line 69
    :cond_1
    return-void
.end method

.method abstract c()V
.end method
