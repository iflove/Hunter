.class public interface abstract Lcom/alipay/mobile/framework/MicroApplicationContext;
.super Ljava/lang/Object;
.source "MicroApplicationContext.java"


# virtual methods
.method public abstract Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract Toast(Ljava/lang/String;I)V
.end method

.method public varargs abstract addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
.end method

.method public abstract attachContext(Landroid/app/Application;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V
.end method

.method public abstract background()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract background(Landroid/app/Activity;)V
.end method

.method public abstract clearState()V
.end method

.method public abstract clearTopApp(Ljava/lang/String;)V
.end method

.method public abstract clearTopApps()V
.end method

.method public abstract createAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public varargs abstract deleteDescriptionByAppId([Ljava/lang/String;)Z
.end method

.method public abstract dismissProgressDialog()V
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

.method public abstract findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
.end method

.method public abstract finishAllActivities(Landroid/app/Activity;)Z
.end method

.method public abstract finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getActiveActivityCount()I
.end method

.method public abstract getApplicationContext()Landroid/app/Application;
.end method

.method public abstract getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLazyBundles()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;
.end method

.method public abstract getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;
.end method

.method public abstract getPipelineByName(Ljava/lang/String;J)Lcom/alipay/mobile/framework/pipeline/Pipeline;
.end method

.method public abstract getStartAppExceptionManager()Lcom/alipay/mobile/framework/performance/StartAppExceptionManager;
.end method

.method public abstract getTopActivity()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
.end method

.method public abstract hasInited()Z
.end method

.method public abstract initSerivces()V
.end method

.method public abstract installApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract loadBundle(Ljava/lang/String;)V
.end method

.method public abstract moveToIsolate(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V
.end method

.method public abstract onWindowFocus(Lcom/alipay/mobile/framework/app/MicroApplication;)V
.end method

.method public abstract postInit()V
.end method

.method public abstract preload(Landroid/app/Application;)V
.end method

.method public abstract registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z
.end method

.method public abstract registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
.end method

.method public abstract registerExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;)V
.end method

.method public abstract registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract requestPermissions(Landroid/app/Activity;[Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
.end method

.method public abstract requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
.end method

.method public abstract restoreState()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract restoreState(Z)V
.end method

.method public abstract saveState()V
.end method

.method public abstract setStartActivityContext(Landroid/content/Context;)V
.end method

.method public abstract showProgressDialog(Ljava/lang/String;)V
.end method

.method public abstract showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
.end method

.method public abstract startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
.end method

.method public abstract startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
.end method

.method public abstract startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
.end method

.method public abstract startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V
.end method

.method public abstract startActivityFromFragment(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
.end method

.method public abstract startActivityFromFragment(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V
.end method

.method public abstract startEntryApp(Landroid/os/Bundle;)V
.end method

.method public abstract startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
.end method

.method public abstract startExtActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
.end method

.method public abstract startExtActivityFromFragment(Lcom/alipay/mobile/framework/app/MicroApplication;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
.end method

.method public abstract unregisterApplicationEngine(Ljava/lang/String;)Z
.end method

.method public abstract unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract unregisterService(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract updateActivity(Landroid/app/Activity;)Landroid/app/Activity;
.end method

.method public abstract updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z
.end method
