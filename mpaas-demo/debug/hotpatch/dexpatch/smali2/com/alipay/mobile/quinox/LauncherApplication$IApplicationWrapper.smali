.class public interface abstract Lcom/alipay/mobile/quinox/LauncherApplication$IApplicationWrapper;
.super Ljava/lang/Object;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IApplicationWrapper"
.end annotation


# virtual methods
.method public abstract addBootListener(Ljava/util/Observer;)V
.end method

.method public abstract addChromeResources(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
.end method

.method public abstract addListener(Ljava/util/Observer;)V
.end method

.method public abstract attachBaseContext(Landroid/content/Context;)V
.end method

.method public abstract bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
.end method

.method public abstract bootFinish()Z
.end method

.method public abstract cleanPatches()V
.end method

.method public abstract clearCachedBundleResources()V
.end method

.method public abstract getAgentActivity()Ljava/lang/String;
.end method

.method public abstract getAgentActivityLayout()Ljava/lang/String;
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public abstract getBundleContext()Ljava/lang/Object;
.end method

.method public abstract getBundleManager()Ljava/lang/Object;
.end method

.method public abstract getBundlesManager()Ljava/lang/Object;
.end method

.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getExternalCacheDir()Ljava/io/File;
.end method

.method public abstract getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFilesDir()Ljava/io/File;
.end method

.method public abstract getHostClassLoader()Ljava/lang/Object;
.end method

.method public abstract getMainHandler()Landroid/os/Handler;
.end method

.method public abstract getOldResources()Landroid/content/res/Resources;
.end method

.method public abstract getProcessInfo()Ljava/lang/Object;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getResourcesManager()Ljava/lang/Object;
.end method

.method public abstract getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end method

.method public abstract getTarget()Ljava/lang/Object;
.end method

.method public abstract getTheme()Landroid/content/res/Resources$Theme;
.end method

.method public abstract isDebug()Z
.end method

.method public abstract isHacked()Z
.end method

.method public abstract isMainProcess()Z
.end method

.method public abstract needProcessHostResources()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onHostResourcesCreated(Landroid/content/res/Resources;Z)V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onTerminate()V
.end method

.method public abstract postInit()V
.end method

.method public abstract recover()V
.end method

.method public abstract registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)Landroid/app/Application$ActivityLifecycleCallbacks;
.end method

.method public abstract removeBootListener(Ljava/util/Observer;)V
.end method

.method public abstract removeListener(Ljava/util/Observer;)V
.end method

.method public abstract retryHookDvm()V
.end method

.method public abstract setFirstClass(Ljava/lang/String;)V
.end method

.method public abstract setHacked(Z)V
.end method

.method public abstract setLocaleToApplicationResources(Ljava/util/Locale;)V
.end method

.method public abstract setLocaleToResources(Landroid/content/res/Resources;)V
.end method

.method public abstract setTheme(I)V
.end method

.method public abstract setupInstrumentation()Z
.end method

.method public abstract setupResources(Z)V
.end method

.method public abstract startService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract stopHookDvm(Z)V
.end method

.method public abstract unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)Landroid/app/Application$ActivityLifecycleCallbacks;
.end method
