.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic d:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic e:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->e:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->e:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 311
    return-void
.end method

.method public onGetSyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .line 306
    return-void
.end method

.method public onShowDefaultTab()V
    .locals 1

    .line 315
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method
