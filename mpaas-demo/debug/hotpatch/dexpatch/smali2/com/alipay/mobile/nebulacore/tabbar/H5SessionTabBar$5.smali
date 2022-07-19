.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 533
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->a:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabItemClicked(ILandroid/view/View;)V
    .locals 12
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentIndex()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 543
    return-void

    .line 545
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 548
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 549
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentFragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 550
    .local v3, "currentFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    move-object v3, v1

    if-eqz v1, :cond_3

    .line 551
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v4, v2

    .line 552
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v1

    if-eqz v1, :cond_3

    .line 553
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v1

    move-object v5, v2

    .line 554
    .local v5, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    move-object v6, v1

    .end local v5    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    .local v6, "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    if-eqz v1, :cond_3

    .line 555
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v5, v2

    .line 556
    .local v5, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v11, v1

    .end local v5    # "result":Lcom/alibaba/fastjson/JSONObject;
    .local v11, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "tag"

    invoke-virtual {v1, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "index"

    invoke-virtual {v11, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "pagePath"

    invoke-virtual {v11, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_txticon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 560
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 559
    const-string v5, "text"

    invoke-virtual {v11, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 562
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string v5, "data"

    invoke-virtual {v1, v5, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "tabClick :"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "H5BaseTabBar"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->a:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;->b:Ljava/lang/String;

    move v7, p1

    move-object v8, v2

    invoke-static/range {v5 .. v10}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Bridge;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    .line 569
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v6    # "h5Bridge":Lcom/alipay/mobile/h5container/api/H5Bridge;
    .end local v11    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    return-void
.end method
