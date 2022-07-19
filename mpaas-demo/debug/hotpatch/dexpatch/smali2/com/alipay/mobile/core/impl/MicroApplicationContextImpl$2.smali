.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

.field final synthetic val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$sceneParams:Landroid/os/Bundle;

.field final synthetic val$sourceAppId:Ljava/lang/String;

.field final synthetic val$startParamsCopy:Landroid/os/Bundle;

.field final synthetic val$targetAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 1077
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$sceneParams:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$sourceAppId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$targetAppId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$startParamsCopy:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1082
    const-string v0, "blackproduct_check_result"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$sceneParams:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$sceneParams:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/ApplicationManager;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$100(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$sourceAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$targetAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$startParamsCopy:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$sceneParams:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;->val$fragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/core/ApplicationManager;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    const-string v1, "MicroAppContextImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1091
    .end local v0    # "e":Lcom/alipay/mobile/framework/app/AppLoadException;
    return-void
.end method
