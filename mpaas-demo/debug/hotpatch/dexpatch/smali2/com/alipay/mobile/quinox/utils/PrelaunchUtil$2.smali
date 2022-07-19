.class final Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$2;
.super Ljava/lang/Object;
.source "PrelaunchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/utils/PrelaunchUtil;->preloadMisc(Landroid/app/Application;Lcom/alipay/mobile/quinox/utils/ProcessInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$2;->val$applicationContext:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 211
    const-string v0, "mytest"

    const-string v1, "preloadsg class start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/PrelaunchUtil$2;->val$applicationContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "prelaunch_preload2"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 213
    if-nez v1, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 219
    const-string v1, "preloadsg class step 0.1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    :try_start_1
    new-instance v1, Lcom/eg/android/AlipayGphone/AlipayLogin;

    invoke-direct {v1}, Lcom/eg/android/AlipayGphone/AlipayLogin;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    goto :goto_0

    .line 236
    :catchall_0
    move-exception v1

    .line 239
    :goto_0
    :try_start_2
    const-string v1, "preloadsg class start 0.2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 259
    :catchall_1
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "PrelaunchUtil"

    const-string v4, "preload alipay view failed."

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 262
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 263
    nop

    .line 264
    const-string v1, "preloadsg class end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 262
    :catchall_2
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    throw v0
.end method
