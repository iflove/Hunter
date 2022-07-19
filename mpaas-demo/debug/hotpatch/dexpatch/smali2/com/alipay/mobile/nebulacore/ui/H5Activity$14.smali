.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 999
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;->a:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1002
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;->a:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->disMissDialog()V

    .line 1003
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;->a:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->release()V

    .line 1004
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    const/4 v1, 0x0

    .line 1006
    .local v1, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToBackAndStop(Landroid/app/Activity;Z)V

    .line 1009
    .end local v1    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    :cond_0
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    .line 1012
    return-void
.end method
