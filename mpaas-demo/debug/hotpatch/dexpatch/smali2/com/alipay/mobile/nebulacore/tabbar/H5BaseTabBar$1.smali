.class Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;
.super Ljava/lang/Object;
.source "H5BaseTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->createTabBar(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabItemClicked(ILandroid/view/View;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->b:Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 110
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "tag"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v3, v1

    .line 112
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string v4, "data"

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v4, "tabClick"

    invoke-interface {v0, v4, v3, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 115
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method
