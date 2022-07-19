.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor$1;
.super Ljava/lang/Object;
.source "DumpInfoProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    .line 57
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 61
    const-string v0, "DumpInfoProcessor"

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "!isDoingDiagnose return"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/monitor/DumpInfoProcessor;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
