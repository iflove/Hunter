.class public Lcom/alipay/mobile/nebulacore/util/H5ParamCheckUtil;
.super Ljava/lang/Object;
.source "H5ParamCheckUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ParamCheckUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParams(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 20
    nop

    .line 21
    const-string v0, "isTinyApp"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;

    const/4 v1, 0x0

    .line 28
    .local v1, "h5StartParamCheck":Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v1, p0}, Lcom/alipay/mobile/nebula/provider/H5StartParamCheck;->checkParams(Landroid/os/Bundle;)V

    .line 31
    :cond_1
    return-void
.end method
