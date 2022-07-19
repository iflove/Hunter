.class Lcom/alipay/mobile/quinox/LauncherActivity$5;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/LauncherActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

.field final synthetic val$delayMillis:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 631
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$5;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    iput p2, p0, Lcom/alipay/mobile/quinox/LauncherActivity$5;->val$delayMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop & destroy cpu boost: delay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$5;->val$delayMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->getInstance()Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 636
    .local v1, "instance":Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->stopBoost()V

    .line 637
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostHelper;->destroy()V

    .line 638
    return-void
.end method
