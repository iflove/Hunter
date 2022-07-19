.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic e:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;ZLandroid/content/Intent;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 694
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->e:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 697
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->e:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appResume needClientRelaunch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->e:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getChInfo(Landroid/content/Intent;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "chInfo":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->a:Z

    if-eqz v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->e:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->d:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;->e:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 703
    return-void
.end method
