.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 923
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 926
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 928
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 929
    .local v1, "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v2, "tabItemCount"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 931
    .local v0, "tabItemCount":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createDefaultSessionTab(Landroid/content/Context;I)V

    .line 934
    .end local v0    # "tabItemCount":I
    .end local v1    # "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    :cond_0
    return-void
.end method
