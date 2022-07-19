.class final Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;
.super Ljava/lang/Object;
.source "TrafficMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field final synthetic e:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;IIIJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;
    .param p2, "reportRepeat"    # I
    .param p3, "overflowRepeat"    # I
    .param p4, "degradeRepeat"    # I
    .param p5, "dataReportSize"    # J

    .line 639
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->e:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput p2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->a:I

    .line 641
    iput p3, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->b:I

    .line 642
    iput p4, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->c:I

    .line 643
    iput-wide p5, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$b;->d:J

    .line 644
    return-void
.end method
