.class final Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;
.super Ljava/lang/Object;
.source "TrafficMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:J

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:J

.field final synthetic l:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;JJJIIIJIIIJ)V
    .locals 16
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;
    .param p2, "reportSize"    # J
    .param p4, "overflowSize"    # J
    .param p6, "degradeSize"    # J
    .param p8, "reportRepeat"    # I
    .param p9, "overflowRepeat"    # I
    .param p10, "degradeRepeat"    # I
    .param p11, "chunkSizeThreshold"    # J
    .param p13, "chunkReportRepeat"    # I
    .param p14, "chunckOverflowRepeat"    # I
    .param p15, "chunkDegradeRepeat"    # I
    .param p16, "dataReportSize"    # J

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->l:Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 656
    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->a:J

    .line 657
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->b:J

    .line 658
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->c:J

    .line 660
    move/from16 v8, p8

    iput v8, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->d:I

    .line 661
    move/from16 v9, p9

    iput v9, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->e:I

    .line 662
    move/from16 v10, p10

    iput v10, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->f:I

    .line 664
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->g:J

    .line 665
    move/from16 v13, p13

    iput v13, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->h:I

    .line 666
    move/from16 v14, p14

    iput v14, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->i:I

    .line 667
    move/from16 v15, p15

    iput v15, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->j:I

    .line 669
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor$a;->k:J

    .line 670
    return-void
.end method
