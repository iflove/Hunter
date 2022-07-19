.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$6$1;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;

    .line 618
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a()V

    .line 624
    :cond_0
    return-void
.end method
