.class public abstract Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PreloadFragmentActivity.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/preload/PreloadableActivity;


# static fields
.field static final TAG:Ljava/lang/String; = "PreloadFragmentActivity"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    .line 28
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->b:Z

    .line 29
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->c:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->e:Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "PreloadFragmentActivity"

    .line 211
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    if-eqz v1, :cond_3

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 214
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 215
    .local v3, "activityManager":Landroid/app/ActivityManager;
    move-object v3, v1

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$AppTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    .local v5, "appTask":Landroid/app/ActivityManager$AppTask;
    const/4 v6, 0x0

    .line 220
    .local v6, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :try_start_1
    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    .line 223
    goto :goto_1

    .line 221
    :catchall_0
    move-exception v2

    .line 222
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "getTaskInfo failed."

    invoke-static {v0, v7, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v6, :cond_1

    .line 225
    iget v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->getTaskId()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 226
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    goto :goto_0

    .line 228
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_1

    iget v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    if-nez v7, :cond_1

    .line 229
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 230
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 231
    .local v4, "componentName":Landroid/content/ComponentName;
    move-object v4, v7

    if-eqz v7, :cond_1

    .line 232
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 234
    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "appTask":Landroid/app/ActivityManager$AppTask;
    .end local v6    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    goto :goto_0

    .line 243
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    :cond_2
    goto :goto_2

    .line 241
    :catchall_1
    move-exception v1

    .line 242
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "setExcludeFromRecents failed."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onCreate(Landroid/os/Bundle;Z)V

    .line 248
    return-void
.end method

.method private a()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static b(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .line 252
    if-eqz p0, :cond_0

    .line 253
    const-string v0, "android:support:fragments"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 254
    const-string v0, "android:fragments"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public isPreloadBeginWhenOnStart()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->d:Z

    return v0
.end method

.method public isPreloadLaunch()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    return v0
.end method

.method public isPreloading()Z
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveTaskToBack(Z)Z
    .locals 3
    .param p1, "nonRoot"    # Z

    .line 270
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PreloadFragmentActivity"

    const-string v2, "moveTaskToBack caller stack."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppState;->isPreloadingActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->moveTaskToBack(Z)Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onPreload(Landroid/os/Bundle;)V

    return-void

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 55
    return-void

    .line 44
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppState;->isPreloadingActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->moveTaskToBack(Z)Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onPreload(Landroid/os/Bundle;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a(Landroid/os/Bundle;)V

    :goto_0
    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "isPreload"    # Z

    .line 280
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 176
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 179
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onDestroy(Z)V

    .line 183
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/AppState;->isPreloadingActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/AppState;->setPreloadingActivity(Z)V

    .line 187
    :cond_1
    return-void
.end method

.method protected onDestroy(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 312
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 124
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 128
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onPause(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onPause(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 300
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onPreload(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 276
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onPreload"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected final onRestart()V
    .locals 2

    .line 60
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onRestart()V

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onRestart(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onRestart(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 284
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onRestart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method protected final onResume()V
    .locals 5

    .line 98
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    :try_start_1
    const-string v3, "mCalled"

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    goto :goto_0

    .line 109
    :catchall_1
    move-exception v3

    .line 110
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->e:Z

    .line 118
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onResume(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method protected onResume(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 292
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 71
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    if-eqz v1, :cond_0

    .line 74
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->b:Z

    if-nez v1, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->b:Z

    .line 78
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->d:Z

    .line 84
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onStart(Z)V

    .line 93
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->d:Z

    .line 94
    return-void
.end method

.method protected onStart(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 288
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 156
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 159
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->c:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->c:Z

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->e:Z

    if-nez v0, :cond_1

    .line 167
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onStop(Z)V

    .line 172
    :cond_2
    return-void
.end method

.method protected onStop(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 308
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onStop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public final onUserInteraction()V
    .locals 2

    .line 135
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onUserInteraction()V

    .line 138
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onUserInteraction(Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public onUserInteraction(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 296
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onUserInteraction"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method protected final onUserLeaveHint()V
    .locals 2

    .line 145
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onUserLeaveHint()V

    .line 149
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onUserLeaveHint(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint(Z)V
    .locals 2
    .param p1, "isPreload"    # Z

    .line 304
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 191
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->finish()V

    .line 195
    return-void

    .line 197
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 198
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->a:Z

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/preload/PreloadFragmentActivity;->onWindowFocusChanged(ZZ)V

    .line 199
    return-void
.end method

.method public onWindowFocusChanged(ZZ)V
    .locals 2
    .param p1, "hasFocus"    # Z
    .param p2, "isPreload"    # Z

    .line 316
    const-string v0, "PreloadFragmentActivity"

    const-string v1, "child onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method
