.class final Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor$1;
.super Ljava/lang/Object;
.source "PedometerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor$1;->a:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor$1;->a:Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;

    const-string/jumbo v1, "process_launch_by_push"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/sensor/PedometerMonitor;->a(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method
