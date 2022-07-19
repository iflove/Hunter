.class Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
.super Ljava/lang/Object;
.source "TraceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpTask"
.end annotation


# instance fields
.field mainThreadTask:Z

.field subThreadTask:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "mainThreadTask"    # Z
    .param p2, "subThreadTask"    # Z

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->mainThreadTask:Z

    .line 328
    iput-boolean p2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->subThreadTask:Z

    .line 329
    return-void
.end method
