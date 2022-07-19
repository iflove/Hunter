.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$7;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->notifyUCInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 851
    :try_start_0
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 852
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 853
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->notifyUcInitSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_0
    goto :goto_0

    .line 856
    :catchall_0
    move-exception v0

    .line 857
    .local v0, "thr":Ljava/lang/Throwable;
    const-string v1, "H5UcService"

    const-string v2, "notifyUcInitSuccess error!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
