.class Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;
.super Ljava/lang/Object;
.source "SignalStateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->reportNetStateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

.field final synthetic val$cellInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;->val$cellInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->getMobileSignalInfo()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "mobileSignalInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;->val$cellInfo:Ljava/lang/String;

    const-string v3, ""

    # invokes: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v0, v2}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$400(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper$2;->this$0:Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;

    # invokes: Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->b()V
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;->access$500(Lcom/alipay/mobile/common/transport/monitor/SignalStateHelper;)V

    .line 263
    return-void
.end method
