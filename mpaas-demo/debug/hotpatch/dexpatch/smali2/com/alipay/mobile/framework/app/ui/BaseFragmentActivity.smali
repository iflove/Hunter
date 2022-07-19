.class public abstract Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.super Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;
.implements Lcom/alipay/mobile/framework/app/ui/ActivityTrackable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field protected mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onResume()V

    .line 166
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 218
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 222
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 131
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "dynamicLoadToCheck"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 136
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 138
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 140
    const-string v1, "M040"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 148
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "period"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->toast(Ljava/lang/String;I)V

    .line 533
    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 267
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onWindowFocusChanged(Z)V

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onWindowFocusChanged(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dispatchOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "bRet":Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 77
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method static synthetic access$001(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 38
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->finish()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onPause()V

    .line 185
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 285
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 200
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->finish()V

    .line 204
    return-void
.end method

.method private d()V
    .locals 1

    .line 244
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onUserLeaveHint()V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onUserLeaveHint()V

    .line 248
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 303
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onStart()V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStart()V

    .line 307
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 321
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onStop()V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStop()V

    .line 325
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 339
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onDestroy()V

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onDestroy()V

    .line 343
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onContentChanged()V

    .line 360
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onContentChanged()V

    .line 361
    return-void
.end method

.method private i()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->isBehindTranslucentActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    .line 386
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    const-string v1, "delay finish when behind translucent activity"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x0

    .line 389
    .local v1, "handler":Landroid/os/Handler;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/os/Handler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 402
    return-void

    .line 407
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    return-void

    .line 408
    :catchall_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public _dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "bRet":Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 100
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public addLoadingView(Lcom/alipay/mobile/framework/loading/LoadingView;)V
    .locals 1
    .param p1, "loadingView"    # Lcom/alipay/mobile/framework/loading/LoadingView;

    .line 641
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->addLoadingView(Lcom/alipay/mobile/framework/loading/LoadingView;)V

    .line 644
    :cond_0
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    move-object v0, p0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    .line 436
    .local v1, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.alert(String,String,String,DialogInterface.OnClickListener,String,DialogInterface.OnClickListener)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 437
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 438
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v10, v3

    .end local v4    # "aroundResult":Landroid/util/Pair;
    .local v10, "aroundResult":Landroid/util/Pair;
    if-eqz v3, :cond_0

    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 442
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "isCanceledOnTouchOutside"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 470
    move-object v0, p0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    .line 471
    .local v1, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.alert(String,String,String,DialogInterface.OnClickListener,String,DialogInterface.OnClickListener,Boolean)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 472
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 473
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v11, v3

    .end local v4    # "aroundResult":Landroid/util/Pair;
    .local v11, "aroundResult":Landroid/util/Pair;
    if-eqz v3, :cond_0

    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 474
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 477
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negative"    # Ljava/lang/String;
    .param p6, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "isCanceledOnTouchOutside"    # Ljava/lang/Boolean;
    .param p8, "cancelable"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    move-object v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x7

    aput-object p8, v1, v2

    .line 501
    .local v1, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.alert(String,String,String,DialogInterface.OnClickListener,String,DialogInterface.OnClickListener,Boolean,Boolean)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 502
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 503
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v12, v3

    .end local v4    # "aroundResult":Landroid/util/Pair;
    .local v12, "aroundResult":Landroid/util/Pair;
    if-eqz v3, :cond_0

    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 507
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dismissProgressDialog()V

    .line 560
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "bRet":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 85
    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchKeyEvent(KeyEvent)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 86
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 87
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v3

    if-eqz v3, :cond_0

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 90
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 91
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "bRet":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 59
    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchTouchEvent(MotionEvent)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 60
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 61
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v3

    if-eqz v3, :cond_0

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 65
    return v0
.end method

.method protected findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 127
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 4

    .line 365
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 366
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 367
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 368
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->i()V

    .line 371
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public getActivityTrackId()Ljava/lang/String;
    .locals 1

    .line 573
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppTrackId()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .line 632
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 636
    .local v1, "cr":Landroid/content/ContentResolver;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/ContentResolvers;->fixTargetSdkInParallel(Landroid/content/ContentResolver;)V

    .line 637
    return-object v1
.end method

.method protected getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSourceTrackId()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .line 189
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 190
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onBackPressed()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 191
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 192
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->c()V

    .line 195
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public onContentChanged()V
    .locals 4

    .line 347
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 348
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onContentChanged()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 349
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 350
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->h()V

    .line 353
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 117
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 118
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 119
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 122
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 329
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 330
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onDestroy()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 331
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 332
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->g()V

    .line 335
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 209
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onNewIntent(Intent)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 210
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 211
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Landroid/content/Intent;)V

    .line 214
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 170
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 171
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 172
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 173
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b()V

    .line 176
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public onReady(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 667
    const-string v0, "appId"

    if-nez p1, :cond_0

    .line 668
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 669
    move-object p1, v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 675
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onReady(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 676
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 677
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 680
    :cond_2
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 681
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 599
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 603
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 154
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 155
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a()V

    .line 158
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 275
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 276
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onSaveInstanceState(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 277
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 278
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 281
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 293
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 294
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStart()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 295
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 296
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->e()V

    .line 299
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 311
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 312
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onStop()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 313
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 314
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->f()V

    .line 317
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 226
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->onUserInteraction()V

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onUserInteraction()V

    .line 230
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .line 234
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 235
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onUserLeaveHint()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 236
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 237
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->d()V

    .line 240
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 258
    .local v1, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 259
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 260
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v3

    if-eqz v3, :cond_1

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Z)V

    .line 263
    :cond_2
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;

    .line 589
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 593
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 595
    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .line 607
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 608
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(int layoutResID)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 609
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->setContentView(I)V

    .line 610
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 611
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 615
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 616
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(View view)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 617
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 618
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 620
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 624
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 625
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.setContentView(View view, ViewGroup.LayoutParams params)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 626
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 628
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2
    .param p1, "requestedOrientation"    # I

    .line 693
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    return-void

    .line 694
    :catchall_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 554
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 555
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startLoading()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startLoading()Z

    move-result v0

    return v0

    .line 650
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopLoading()Z
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->stopLoading()Z

    move-result v0

    return v0

    .line 658
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "period"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 522
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.toast(String, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 523
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 524
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 525
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->a(Ljava/lang/String;I)V

    .line 527
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 528
    return-void
.end method
