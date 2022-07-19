.class public abstract Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "H5EventHandlerService.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/process/H5EventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStartParams()Landroid/os/Bundle;
.end method

.method public abstract setStartParams(Landroid/os/Bundle;)V
.end method
