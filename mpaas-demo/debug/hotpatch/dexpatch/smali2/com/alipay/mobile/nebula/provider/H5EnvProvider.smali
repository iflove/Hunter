.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
.super Ljava/lang/Object;
.source "H5EnvProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/H5EnvProvider$H5schemeVerifyCallback;
    }
.end annotation


# virtual methods
.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLoginId()Ljava/lang/String;
.end method

.method public abstract getProductName()Ljava/lang/String;
.end method

.method public abstract getProductVersion()Ljava/lang/String;
.end method

.method public abstract getRpcUrl()Ljava/lang/String;
.end method

.method public abstract getSnapshotJsapiSavePath()Ljava/lang/String;
.end method

.method public abstract getmDid()Ljava/lang/String;
.end method

.method public abstract goToSchemeService(Ljava/lang/String;)Z
.end method

.method public abstract goToSchemeService(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract goToSchemeService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isConcaveScreen()Z
.end method

.method public abstract isOuterSchemeNeedVerify(Ljava/lang/String;)Z
.end method

.method public abstract updateStagesForTool()Z
.end method

.method public abstract verifyOuterScheme(Landroid/net/Uri;Lcom/alipay/mobile/nebula/provider/H5EnvProvider$H5schemeVerifyCallback;I)V
.end method
