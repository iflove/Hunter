.class public Lcom/alipay/mobile/base/config/impl/ConfigServiceValve;
.super Ljava/lang/Object;
.source "ConfigServiceValve.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10
    invoke-static {}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->getInstance()Lcom/alipay/mobile/base/config/impl/ConfigMonitor;

    move-result-object v0

    const-string v1, "ConfigArrivalCount1"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/impl/ConfigMonitor;->reportBizRequest(Ljava/lang/String;)V

    .line 11
    return-void
.end method
