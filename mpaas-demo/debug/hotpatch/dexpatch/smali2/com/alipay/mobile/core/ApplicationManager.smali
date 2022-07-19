.class public interface abstract Lcom/alipay/mobile/core/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# virtual methods
.method public varargs abstract addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearTop(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract createAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public varargs abstract deleteDescriptionByAppId([Ljava/lang/String;)Z
.end method

.method public abstract exit()V
.end method

.method public abstract findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public abstract findAppsById(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
.end method

.method public abstract finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getActiveActivityCount()I
.end method

.method public abstract getEntryAppName()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public abstract installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract moveToIsolate(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z
.end method

.method public abstract registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
.end method

.method public abstract restoreState(Landroid/content/SharedPreferences;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract restoreState(Landroid/content/SharedPreferences;Z)V
.end method

.method public abstract saveState(Landroid/content/SharedPreferences$Editor;)V
.end method

.method public abstract setEntryAppId(Ljava/lang/String;)V
.end method

.method public abstract setEntryAppName(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract startEntryApp(Landroid/os/Bundle;)V
.end method

.method public abstract unregisterApplicationEngine(Ljava/lang/String;)Z
.end method

.method public abstract unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
.end method

.method public abstract updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z
.end method
