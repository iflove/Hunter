.class public Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;
.super Landroid/app/Activity;
.source "PreloadFodderActivity.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/preload/PreloadableActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static preloadActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityIntent"    # Landroid/content/Intent;

    const-string v0, "PreloadFragmentActivity"

    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    .local v2, "componentName":Landroid/content/ComponentName;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 31
    :try_start_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 32
    .local v1, "cls":Ljava/lang/Class;
    const-class v3, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    const-string v3, "only can preload the activity which extends PreloadFragmentActivity"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    return-void

    .line 39
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_0
    nop

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const/high16 v3, 0x58850000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    const-string v0, "key_target_activity_intent"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void

    .line 55
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isPreloadBeginWhenOnStart()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isPreloadLaunch()Z
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isPreloading()Z
    .locals 1

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->finish()V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity$1;-><init>(Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "key_target_activity_intent"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 81
    .local v1, "tartIntent":Landroid/content/Intent;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 82
    const/high16 v0, 0x10810000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "PreloadFragmentActivity"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "tartIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onPreload(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->finish()V

    .line 103
    :cond_1
    return-void
.end method
