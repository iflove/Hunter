.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 286
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5TaskUtils;->getTaskInfoMatchTopActivity(Landroid/app/Activity;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 290
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRunningTask: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;->a:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    iput-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->currentRunningTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 294
    :cond_0
    return-void
.end method
