.class final Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "MemoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    .line 268
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 273
    :try_start_0
    const-string/jumbo v0, "max"

    invoke-static {v0}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->updateMemoryUsage(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    # invokes: Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d()V
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->access$000(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;)V

    .line 275
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    # invokes: Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f()V
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->access$100(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    return-void

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MemoryMonitor"

    const-string/jumbo v3, "run"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
