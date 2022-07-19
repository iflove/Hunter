.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$9;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->internalPreloadActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/quinox/utils/Callback<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 1814
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$9;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1817
    instance-of v0, p1, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    if-nez v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$9;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->endPreloadActivity()V

    .line 1819
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$9;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mQuinoxInstrumentation:Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1200(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/activity/QuinoxInstrumentation;->removeNewActivityCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V

    .line 1821
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1814
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$9;->onCallback(Landroid/app/Activity;)V

    return-void
.end method
