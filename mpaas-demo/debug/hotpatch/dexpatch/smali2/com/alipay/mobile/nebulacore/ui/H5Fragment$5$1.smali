.class Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5$1;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;

    .line 430
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 433
    const-string v0, "H5Fragment"

    const-string v1, "queueIdle"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 435
    const/4 v0, 0x0

    return v0
.end method
