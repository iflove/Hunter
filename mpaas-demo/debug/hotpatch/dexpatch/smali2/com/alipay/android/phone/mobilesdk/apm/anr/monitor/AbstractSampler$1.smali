.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;
.super Ljava/lang/Object;
.source "AbstractSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;

    .line 23
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->c()V

    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;

    iget-object v0, v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/alipay/mobile/monitor/tools/HandlerThreadFactory;->getTimerThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;

    .line 30
    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;

    iget-wide v2, v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/AbstractSampler;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :cond_0
    return-void
.end method
