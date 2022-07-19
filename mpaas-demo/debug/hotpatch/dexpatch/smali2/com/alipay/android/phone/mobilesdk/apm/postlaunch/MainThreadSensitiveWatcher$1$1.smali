.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;
.super Ljava/lang/Object;
.source "MainThreadSensitiveWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

.field final synthetic b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;

    .line 38
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->b()J

    move-result-wide v0

    .line 43
    .local v0, "hungerDuration":J
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;)J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;-><init>(JJ)V

    .line 44
    .local v2, "data":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;

    iget-object v3, v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1$1;->b:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;

    iget-object v3, v3, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;->b(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    nop

    .end local v0    # "hungerDuration":J
    .end local v2    # "data":Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "IAutoStopWatcher"

    const-string/jumbo v3, "post runnable failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
