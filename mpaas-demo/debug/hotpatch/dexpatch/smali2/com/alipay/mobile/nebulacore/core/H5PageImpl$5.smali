.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "H5PageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 431
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$5;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 434
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eg.android.AlipayGphone.action.CDP_CLOSE_ANNOUNCEMENT_VIEW_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$5;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5CdpAdvertisementController;->closeAdvertisement(Landroid/content/Intent;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 441
    const-string v0, "H5PageImpl"

    const-string v1, "CLoseAnnouncementReceiver onReceive"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void

    .line 435
    :cond_2
    :goto_0
    return-void
.end method
