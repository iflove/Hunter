.class public Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasDefaultConfig;
.super Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;
.source "LiteMpaasDefaultConfig.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/MpaasDefaultConfig;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getTransport()Lcom/alipay/mobile/common/transport/Transport;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasDefaultConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;

    move-result-object v0

    return-object v0
.end method
