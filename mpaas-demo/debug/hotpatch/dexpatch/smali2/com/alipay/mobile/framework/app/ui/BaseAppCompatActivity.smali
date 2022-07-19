.class public Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseAppCompatActivity.java"

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

    .line 49
    const-class v0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onResume()V

    .line 172
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 224
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onNewIntent(Landroid/content/Intent;)V

    .line 228
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 137
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "dynamicLoadToCheck"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    .line 142
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 144
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 146
    const-string v1, "M040"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 154
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "period"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->toast(Ljava/lang/String;I)V

    .line 496
    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 260
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onWindowFocusChanged(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dispatchOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 83
    .local v0, "bRet":Z
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 86
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method private b()V
    .locals 1

    .line 187
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onPause()V

    .line 191
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 206
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->finish()V

    .line 210
    return-void
.end method

.method private d()V
    .locals 1

    .line 242
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onUserLeaveHint()V

    .line 246
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 296
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStart()V

    .line 300
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onStop()V

    .line 318
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 332
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onDestroy()V

    .line 336
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onContentChanged()V

    .line 353
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onContentChanged()V

    .line 354
    return-void
.end method

.method private i()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    .line 373
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public _dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "bRet":Z
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 109
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
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

    .line 401
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

    .line 402
    .local v1, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.alert(String,String,String,DialogInterface.OnClickListener,String,DialogInterface.OnClickListener)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 403
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 404
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

    .line 405
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 408
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 409
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

    .line 435
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

    .line 436
    .local v1, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.alert(String,String,String,DialogInterface.OnClickListener,String,DialogInterface.OnClickListener,Boolean)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 437
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 438
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

    .line 439
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 442
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 443
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

    .line 463
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

    .line 464
    .local v1, "args":[Ljava/lang/Object;
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.alert(String,String,String,DialogInterface.OnClickListener,String,DialogInterface.OnClickListener,Boolean,Boolean)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 465
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 466
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

    .line 467
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 470
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 471
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->dismissProgressDialog()V

    .line 523
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "bRet":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 94
    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "boolean com.alipay.mobile.framework.app.ui.BaseActivity.dispatchKeyEvent(KeyEvent)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 95
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 96
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v3

    if-eqz v3, :cond_0

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 99
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 100
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "bRet":Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 68
    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "boolean com.alipay.mobile.framework.app.ui.BaseActivity.dispatchTouchEvent(MotionEvent)"

    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    .line 70
    .local v4, "aroundResult":Landroid/util/Pair;
    move-object v4, v3

    if-eqz v3, :cond_0

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 73
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 74
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

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 4

    .line 358
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 359
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 360
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 361
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->i()V

    .line 364
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method public getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public getActivityTrackId()Ljava/lang/String;
    .locals 1

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppTrackId()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
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

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getSourceTrackId()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

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

    .line 195
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 196
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 197
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 198
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->c()V

    .line 201
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public onContentChanged()V
    .locals 4

    .line 340
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 341
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onContentChanged()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 342
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 343
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->h()V

    .line 346
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 128
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 129
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 130
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->a(Landroid/os/Bundle;)V

    .line 133
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 322
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 323
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 324
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 325
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->g()V

    .line 328
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 215
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onNewIntent(Intent)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 216
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 217
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->a(Landroid/content/Intent;)V

    .line 220
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 178
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 179
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->b()V

    .line 182
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 562
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 566
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 158
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 160
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 161
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->a()V

    .line 164
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 268
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 269
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onSaveInstanceState(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 270
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 271
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->b(Landroid/os/Bundle;)V

    .line 274
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 286
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 287
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStart()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 288
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 289
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->e()V

    .line 292
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 304
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 305
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onStop()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 306
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 307
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->f()V

    .line 310
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .line 232
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 233
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onUserLeaveHint()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 234
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 235
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->d()V

    .line 238
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 251
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 252
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 253
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->a(Z)V

    .line 256
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;

    .line 552
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->requestPermissions([Ljava/lang/String;ILcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;)V

    .line 556
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 558
    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .line 570
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 571
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.setContentView(int layoutResID)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 572
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 573
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 578
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 579
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.setContentView(View view)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 580
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 581
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 587
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 588
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.setContentView(View view, ViewGroup.LayoutParams params)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 589
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 591
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2
    .param p1, "requestedOrientation"    # I

    .line 599
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    return-void

    .line 600
    :catchall_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->mActivityHelper:Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 518
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "period"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 485
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.toast(String, int)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 486
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 487
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseAppCompatActivity;->a(Ljava/lang/String;I)V

    .line 490
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 491
    return-void
.end method
