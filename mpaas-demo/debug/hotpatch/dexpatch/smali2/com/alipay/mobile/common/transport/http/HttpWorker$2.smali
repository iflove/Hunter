.class Lcom/alipay/mobile/common/transport/http/HttpWorker$2;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/http/HttpWorker;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/HttpWorker;

.field final synthetic val$dataflowModel:Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

.field final synthetic val$finalMpaasTrafficBiz:Ljava/lang/String;

.field final synthetic val$finalMpaasTrafficUrl:Ljava/lang/String;

.field final synthetic val$finalReqDataLength:J

.field final synthetic val$finalRespDataLength:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 949
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->this$0:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$dataflowModel:Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalMpaasTrafficUrl:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalReqDataLength:J

    iput-wide p6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalRespDataLength:J

    iput-object p8, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalMpaasTrafficBiz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 952
    invoke-static {}, Lcom/alipay/mobile/monitor/api/MonitorFactory;->getMonitorContext()Lcom/alipay/mobile/monitor/api/MonitorContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$dataflowModel:Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/monitor/api/MonitorContext;->noteTraficConsume(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    .line 953
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalMpaasTrafficUrl:Ljava/lang/String;

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalReqDataLength:J

    iget-wide v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalRespDataLength:J

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$2;->val$finalMpaasTrafficBiz:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->handleTraffic(Ljava/lang/String;JJLjava/lang/String;)V

    .line 954
    return-void
.end method
