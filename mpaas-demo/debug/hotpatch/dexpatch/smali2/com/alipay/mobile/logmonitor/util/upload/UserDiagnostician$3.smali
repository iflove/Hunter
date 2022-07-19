.class final Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;
.super Ljava/lang/Object;
.source "UserDiagnostician.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    .line 357
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iput-wide p2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->a:J

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, "applog"

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Ljava/lang/String;J)V

    .line 366
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->a:J

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->g()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->a:J

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;J)J

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->b:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    iget-wide v1, p0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$3;->a:J

    const-string/jumbo v3, "trafficLog"

    invoke-static {v0, v3, v1, v2}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;Ljava/lang/String;J)V

    .line 371
    :cond_0
    return-void
.end method
