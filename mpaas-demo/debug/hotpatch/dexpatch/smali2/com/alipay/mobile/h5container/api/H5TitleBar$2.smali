.class Lcom/alipay/mobile/h5container/api/H5TitleBar$2;
.super Ljava/lang/Object;
.source "H5TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5TitleBar;->updateBackToHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 1314
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$2;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1318
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$2;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    # getter for: Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->access$100(Lcom/alipay/mobile/h5container/api/H5TitleBar;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$2;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    # getter for: Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->access$100(Lcom/alipay/mobile/h5container/api/H5TitleBar;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$2;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    # getter for: Lcom/alipay/mobile/h5container/api/H5TitleBar;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->access$100(Lcom/alipay/mobile/h5container/api/H5TitleBar;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string/jumbo v1, "onBackHomeClick"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 1322
    :cond_0
    return-void
.end method
