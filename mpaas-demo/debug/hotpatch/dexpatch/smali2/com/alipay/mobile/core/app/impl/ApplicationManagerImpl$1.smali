.class Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;
.super Ljava/lang/Object;
.source "ApplicationManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

.field final synthetic val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$sceneParams:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$startParams:Landroid/os/Bundle;

.field final synthetic val$targetAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    .line 204
    iput-object p1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$sourceAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$startParams:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$sceneParams:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installed(Z)V
    .locals 7
    .param p1, "success"    # Z

    .line 207
    const-string v0, "]"

    if-eqz p1, :cond_1

    .line 208
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Success to install ExternalBundle\'s Applicaiton for [targetAppId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], call startApp() again."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v1

    if-nez v1, :cond_0

    .line 211
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "What?!! Still failed to find ApplicationDescription by [targetAppId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->this$0:Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    # getter for: Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->h:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->access$000(Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$sourceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$startParams:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$sceneParams:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 227
    :cond_1
    sget-object v1, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to install ExternalBundle\'s Applicaiton for [targetAppId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl$1;->val$targetAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 233
    return-void
.end method
