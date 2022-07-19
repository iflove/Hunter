.class Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;
.super Ljava/lang/Object;
.source "MPTinyHelper.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5EnvProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/adapter/api/MPTinyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    .line 51
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, ""

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {}, Lcom/mpaas/mas/adapter/api/MPLogger;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    # getter for: Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mAppName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->access$200(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    # getter for: Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->mVersionName:Ljava/lang/String;
    invoke-static {v0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->access$300(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRpcUrl()Ljava/lang/String;
    .locals 1

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSnapshotJsapiSavePath()Ljava/lang/String;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getmDid()Ljava/lang/String;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public goToSchemeService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;->goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 99
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyHelper;

    # invokes: Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->launchUrl(Ljava/lang/String;Landroid/os/Bundle;)Z
    invoke-static {v0, p1, p2}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper;->access$400(Lcom/mpaas/nebula/adapter/api/MPTinyHelper;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p0, p1}, Lcom/mpaas/nebula/adapter/api/MPTinyHelper$2;->goToSchemeService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isConcaveScreen()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isOuterSchemeNeedVerify(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public updateStagesForTool()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public verifyOuterScheme(Landroid/net/Uri;Lcom/alipay/mobile/nebula/provider/H5EnvProvider$H5schemeVerifyCallback;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "h5schemeVerifyCallback"    # Lcom/alipay/mobile/nebula/provider/H5EnvProvider$H5schemeVerifyCallback;
    .param p3, "i"    # I

    .line 120
    return-void
.end method
