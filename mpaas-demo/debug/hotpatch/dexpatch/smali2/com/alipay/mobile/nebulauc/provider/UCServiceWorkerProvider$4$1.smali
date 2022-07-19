.class Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4$1;
.super Ljava/lang/Object;
.source "UCServiceWorkerProvider.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;

    .line 143
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4$1;->this$1:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearServiceWorkerSync success? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UCServiceWorkerProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4$1;->this$1:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;->val$h5CallBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5CallBack;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 148
    return-void
.end method
