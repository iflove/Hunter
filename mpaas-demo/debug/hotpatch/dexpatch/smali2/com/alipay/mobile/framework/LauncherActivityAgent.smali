.class public Lcom/alipay/mobile/framework/LauncherActivityAgent;
.super Ljava/lang/Object;
.source "LauncherActivityAgent.java"


# instance fields
.field protected mMicroApplicationContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "newBase"    # Landroid/content/Context;

    .line 56
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.attachBaseContext()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public attachMicroApplicationContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "microApplicationContext"    # Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/framework/LauncherActivityAgent;->mMicroApplicationContext:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 115
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.dispatchTouchEvent()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 2

    .line 130
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.finish()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    .line 69
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.getAssets()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 64
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.getResources()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 138
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onActivityResult()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 110
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onBackPressed()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onCreate()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 134
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onDestroy()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 125
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onKeyDown()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 74
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onNewIntent()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 90
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onPause()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .line 143
    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 86
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onRestart()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 106
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onRestoreInstanceState()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 78
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onResume()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 102
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 82
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onStart()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 94
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onStop()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 145
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onUserInteraction()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 148
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onUserLeaveHint()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 98
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.onWindowFocusChanged()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public postInit(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 44
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.postInit() => startEntryApp()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public preInit(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 37
    const-string v0, "LauncherActivityAgent"

    const-string v1, "LauncherActivityAgent.preInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
