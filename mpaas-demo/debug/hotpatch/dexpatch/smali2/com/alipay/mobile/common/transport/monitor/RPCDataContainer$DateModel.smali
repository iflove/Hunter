.class Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;
.super Ljava/lang/Object;
.source "RPCDataContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateModel"
.end annotation


# instance fields
.field mRequestTime:J

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->this$0:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->mRequestTime:J

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->mRequestTime:J

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;
    .param p2, "requestTime"    # J

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->this$0:Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->mRequestTime:J

    .line 84
    iput-wide p2, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->mRequestTime:J

    .line 85
    return-void
.end method


# virtual methods
.method public getCost()J
    .locals 4

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer$DateModel;->mRequestTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
