.class Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;
.super Ljava/lang/Object;
.source "UCServiceWorkerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;->clearServiceWorkerSync(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

.field final synthetic val$h5CallBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

.field final synthetic val$swHost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;->this$0:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;->val$swHost:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;->val$h5CallBack:Lcom/alipay/mobile/h5container/api/H5CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;->val$swHost:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4$1;-><init>(Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$4;)V

    const/16 v2, 0x9

    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    .line 150
    return-void
.end method
