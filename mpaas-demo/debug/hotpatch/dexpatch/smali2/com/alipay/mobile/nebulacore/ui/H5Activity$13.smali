.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 946
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->a:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 949
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->a:Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    const/4 v0, 0x0

    .line 954
    .local v0, "success":Z
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 955
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 956
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v2

    const/4 v3, 0x0

    .line 957
    .local v3, "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 958
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->a:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v5, v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v4, v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createSessionTab(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    .line 964
    .end local v3    # "h5SessionTabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    :cond_1
    if-nez v0, :cond_2

    .line 965
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v1, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 966
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->f(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    .line 969
    .end local v0    # "success":Z
    :cond_2
    return-void

    .line 950
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 951
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;->b:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    return-void
.end method
