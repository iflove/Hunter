.class Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;
.super Ljava/lang/Object;
.source "H5FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Landroidx/fragment/app/FragmentTransaction;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .line 442
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->b:Landroidx/fragment/app/FragmentTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->b:Landroidx/fragment/app/FragmentTransaction;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 449
    return-void
.end method
