.class Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;
.super Ljava/lang/Object;
.source "H5PullContainer.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H5PullInterceptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .line 493
    iput-object p1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 497
    const-string/jumbo v0, "prevent"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 498
    .local v0, "prevent":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pullIntercept event prevent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5PullContainer"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    if-eqz v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    const/4 v2, 0x1

    # setter for: Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isIntercept:Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$402(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;Z)Z

    .line 501
    return-void

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer$H5PullInterceptHandler;->this$0:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    # setter for: Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isIntercept:Z
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->access$402(Lcom/alipay/mobile/nebula/refresh/H5PullContainer;Z)Z

    .line 504
    return-void
.end method
