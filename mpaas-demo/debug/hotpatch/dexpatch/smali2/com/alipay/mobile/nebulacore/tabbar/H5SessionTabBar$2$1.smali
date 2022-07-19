.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2$1;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->onShowDefaultTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;

    .line 315
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 321
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "delay"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2$1;->a:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "showLoading"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 326
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method
