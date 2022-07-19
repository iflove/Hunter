.class Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 424
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;->c:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runOnMain "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 438
    return-void
.end method
