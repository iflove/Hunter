.class public Lcom/alipay/mobile/core/loading/impl/LoadingPage;
.super Landroid/app/Activity;
.source "LoadingPage.java"


# static fields
.field public static final PARAM_TOKEN:Ljava/lang/String; = "token"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Bundle;

.field private e:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

.field private f:Lcom/alipay/mobile/framework/loading/LoadingView;

.field private g:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

.field private h:Ljava/util/Timer;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->i:Z

    .line 41
    iput-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->j:Z

    .line 42
    iput-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->k:Z

    return-void
.end method

.method private a()V
    .locals 7

    .line 123
    invoke-static {}, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->g()Lcom/alipay/mobile/framework/FrameworkAdapterManager;

    move-result-object v0

    const-string v1, "ig_loadingPendTimeout"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/FrameworkAdapterManager;->getConfigFromAdapter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "timeout":Ljava/lang/String;
    const/4 v1, 0x0

    .line 127
    .local v1, "timeoutInSec":I
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 134
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v2

    .line 133
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v2, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startLongstandingMonitor:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->h:Ljava/util/Timer;

    new-instance v3, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage$2;-><init>(Lcom/alipay/mobile/core/loading/impl/LoadingPage;Ljava/lang/String;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v1

    .line 147
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 139
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 149
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPage;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->g:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    return-object v0
.end method


# virtual methods
.method public cancelLoadingPage()V
    .locals 4

    .line 256
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadingPage.cancelLoadingPage, token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->k:Z

    if-nez v0, :cond_1

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->k:Z

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->stop()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->e:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->d:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->onCancelLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->finish()V

    .line 273
    return-void
.end method

.method public finish()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->h:Ljava/util/Timer;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip finish when isFinishing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    .line 164
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->e:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    if-eqz v0, :cond_2

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->d:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->onFinishLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_2
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadingPage.finish, token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->g:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    iget v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->removeLoadingPageRecord(I)V

    .line 174
    return-void
.end method

.method public getLoadingView()Lcom/alipay/mobile/framework/loading/LoadingView;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 198
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->cancelLoadingPage()V

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    nop

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->g:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->g:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->getLoadingPageRecord(I)Lcom/alipay/mobile/core/loading/impl/LoadingRecord;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 55
    .local v2, "record":Lcom/alipay/mobile/core/loading/impl/LoadingRecord;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "record is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->finish()V

    .line 58
    return-void

    .line 61
    :cond_0
    iget-boolean v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->isStopped:Z

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "record is isStopped"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->finish()V

    .line 64
    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->loadingPage:Ljava/lang/ref/WeakReference;

    .line 71
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->params:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->d:Landroid/os/Bundle;

    .line 72
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->sourceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->b:Ljava/lang/String;

    .line 73
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->targetAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    .line 74
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->loadingPageHandler:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->e:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    .line 75
    iget-object v0, v2, Lcom/alipay/mobile/core/loading/impl/LoadingRecord;->loadingView:Lcom/alipay/mobile/framework/loading/LoadingView;

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    .line 77
    new-instance v0, Ljava/util/Timer;

    sget-object v3, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->h:Ljava/util/Timer;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->e:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    if-nez v0, :cond_2

    .line 80
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    const-string v1, "loadingPageHandler is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->finish()V

    .line 82
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    if-nez v0, :cond_3

    .line 86
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    const-string v1, "loadingView is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->finish()V

    .line 88
    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 95
    .local v1, "parent":Landroid/view/ViewParent;
    move-object v1, v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 96
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    const-string v3, "loadingView bug found, apply workaround"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_4
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LoadingPage.onCreate, token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", targetAppId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", loadingView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->setContentView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/loading/LoadingView;->setHostActivity(Landroid/app/Activity;)V

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->startLoadingPage()V

    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a()V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    new-instance v3, Lcom/alipay/mobile/core/loading/impl/LoadingPage$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage$1;-><init>(Lcom/alipay/mobile/core/loading/impl/LoadingPage;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/loading/LoadingView;->setOnCancelListener(Lcom/alipay/mobile/framework/loading/LoadingView$OnCancelListener;)V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 189
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadingPage.onDestroy, token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->g:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    iget v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->removeLoadingPageRecord(I)V

    .line 193
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 180
    iget-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->i:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->stopLoadingPage()V

    .line 183
    :cond_0
    return-void
.end method

.method public setHasLostFocus(Z)V
    .locals 0
    .param p1, "hasLostFocus"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->i:Z

    .line 207
    return-void
.end method

.method public startLoadingPage()V
    .locals 4

    .line 218
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadingPage.startLoadingPage, token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->j:Z

    .line 222
    iput-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->k:Z

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->start()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->e:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->d:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->onCreateLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    :cond_1
    return-void
.end method

.method public stopLoadingPage()V
    .locals 4

    .line 235
    sget-object v0, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadingPage.stopLoadingPage, token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",hasNotifyStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->j:Z

    if-nez v0, :cond_1

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->j:Z

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->f:Lcom/alipay/mobile/framework/loading/LoadingView;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->stop()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->e:Lcom/alipay/mobile/framework/loading/LoadingPageHandler;

    if-eqz v0, :cond_1

    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->d:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/framework/loading/LoadingPageHandler;->onStopLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/core/loading/impl/LoadingPage;->finish()V

    .line 252
    return-void
.end method
