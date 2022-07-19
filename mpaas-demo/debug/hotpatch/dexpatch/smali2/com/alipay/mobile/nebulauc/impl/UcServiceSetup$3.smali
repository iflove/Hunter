.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->preheadInit(Landroid/content/Context;)Lcom/uc/webview/export/utility/SetupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
    .locals 2
    .param p1, "value"    # Lcom/uc/webview/export/utility/SetupTask;

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success initial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UcService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    nop

    .line 540
    invoke-virtual {p1}, Lcom/uc/webview/export/utility/SetupTask;->getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    .line 539
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->saveLastVersionDecompressDir(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$400(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/uc/webview/export/utility/SetupTask;->getInitType()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->deleteUCCoreFilesOnInitSuccess(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 535
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V

    return-void
.end method
