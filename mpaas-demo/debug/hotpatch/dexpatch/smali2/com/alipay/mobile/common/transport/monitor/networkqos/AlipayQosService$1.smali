.class Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;
.super Ljava/lang/Object;
.source "AlipayQosService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->getQosLevel()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

.field final synthetic val$bandwidth:D

.field final synthetic val$finalLevel:I

.field final synthetic val$rto:D

.field final synthetic val$speed:D


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;DDDI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->this$0:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    iput-wide p2, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$rto:D

    iput-wide p4, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$speed:D

    iput-wide p6, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$bandwidth:D

    iput p8, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$finalLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->this$0:Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$rto:D

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$speed:D

    iget-wide v5, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$bandwidth:D

    iget v7, p0, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService$1;->val$finalLevel:I

    # invokes: Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->a(DDDI)V
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;->access$000(Lcom/alipay/mobile/common/transport/monitor/networkqos/AlipayQosService;DDDI)V

    .line 140
    return-void
.end method
