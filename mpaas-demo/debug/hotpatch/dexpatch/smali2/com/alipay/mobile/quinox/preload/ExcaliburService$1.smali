.class Lcom/alipay/mobile/quinox/preload/ExcaliburService$1;
.super Ljava/lang/Object;
.source "ExcaliburService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/preload/ExcaliburService;->goForegroundCompatAndDelayedStop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/preload/ExcaliburService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$1;->this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/ExcaliburService$1;->this$0:Lcom/alipay/mobile/quinox/preload/ExcaliburService;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->stopSelf()V

    .line 213
    return-void
.end method
