.class public abstract Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;
.super Lcom/alipay/mobile/framework/app/MicroApplication;
.source "FragmentApplication.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FragmentApplication"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/framework/app/fragment/BaseFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHostActivity:Landroidx/fragment/app/FragmentActivity;

.field protected mParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1, "hostActivity"    # Landroidx/fragment/app/FragmentActivity;

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/MicroApplication;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mHostActivity:Landroidx/fragment/app/FragmentActivity;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a:Landroid/view/View;

    .line 53
    return-void
.end method

.method private a()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mHostActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "id"    # I

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mHostActivity:Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a:Landroid/view/View;

    if-nez v1, :cond_1

    .line 100
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a:Landroid/view/View;

    .line 101
    if-eqz v0, :cond_1

    .line 102
    new-instance v1, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication$1;-><init>(Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/alipay/mobile/framework/app/fragment/BaseFragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/alipay/mobile/framework/app/fragment/BaseFragment;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add(fragment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 124
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 126
    const-string v3, "mExtras"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    :cond_0
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mHostActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 133
    .local v0, "ftr":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getFragmentContainerId()I

    move-result v3

    const/4 v4, 0x0

    .line 134
    .local v4, "id":I
    move v4, v3

    if-nez v3, :cond_1

    .line 135
    const v4, 0x1020002

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0, v4}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a(I)V

    .line 140
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, p1, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 142
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_1

    .line 143
    :catchall_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a()V

    .line 148
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public final create(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mParams:Landroid/os/Bundle;

    .line 60
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public final destroy(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;

    .line 253
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getFragmentContainerId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a()V

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destroy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mHostActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    move-object v3, v0

    .line 263
    .local v3, "fm":Landroidx/fragment/app/FragmentManager;
    move-object v3, v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 265
    .local v2, "ftr":Landroidx/fragment/app/FragmentTransaction;
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v0

    .line 266
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 267
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 268
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 269
    .local v5, "fragment":Landroidx/fragment/app/Fragment;
    move-object v5, v6

    if-eqz v6, :cond_1

    .line 270
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 271
    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 273
    :try_start_1
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    goto :goto_0

    .line 274
    :catchall_0
    move-exception v6

    .line 275
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v1, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .end local v5    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1
    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    nop

    .end local v2    # "ftr":Landroidx/fragment/app/FragmentTransaction;
    .end local v3    # "fm":Landroidx/fragment/app/FragmentManager;
    .end local v4    # "iterator":Ljava/util/Iterator;
    goto :goto_1

    .line 281
    :catchall_1
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V

    .line 288
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.stop"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->commit(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public getFragmentContainerId()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onReady(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 297
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    const-string v0, "appId"

    if-nez p1, :cond_0

    .line 299
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 300
    move-object p1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 306
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.fragment.FragmentApplication.onReady(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 307
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 308
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    :cond_2
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public remove(Lcom/alipay/mobile/framework/app/fragment/BaseFragment;)V
    .locals 7
    .param p1, "fragment"    # Lcom/alipay/mobile/framework/app/fragment/BaseFragment;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remove(fragment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    const/4 v2, 0x0

    move-object v3, v2

    .line 155
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 157
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 158
    .local v3, "_fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v4

    if-nez v4, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 160
    :cond_0
    if-ne v3, p1, :cond_1

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 163
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mHostActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 167
    .local v4, "fm":Landroidx/fragment/app/FragmentManager;
    :try_start_0
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    move-object v6, v2

    .line 168
    .local v6, "ftr":Landroidx/fragment/app/FragmentTransaction;
    move-object v6, v5

    invoke-virtual {v5, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 169
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    nop

    .end local v6    # "ftr":Landroidx/fragment/app/FragmentTransaction;
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v5

    .line 171
    .local v5, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .end local v5    # "throwable":Ljava/lang/Throwable;
    goto :goto_1

    .line 175
    .end local v3    # "_fragment":Landroidx/fragment/app/Fragment;
    .end local v4    # "fm":Landroidx/fragment/app/FragmentManager;
    :cond_1
    goto :goto_0

    .line 177
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mIsPrevent:Z

    if-nez v1, :cond_3

    .line 178
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->destroy(Landroid/os/Bundle;)V

    .line 180
    :cond_3
    return-void
.end method

.method public replace(Lcom/alipay/mobile/framework/app/fragment/BaseFragment;)V
    .locals 8
    .param p1, "fragment"    # Lcom/alipay/mobile/framework/app/fragment/BaseFragment;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "replace(fragment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mIsPrevent:Z

    .line 186
    const/4 v0, 0x0

    .local v0, "_fragment":Lcom/alipay/mobile/framework/app/fragment/BaseFragment;
    const/4 v2, 0x0

    move-object v3, v2

    .line 187
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 189
    .local v3, "ref":Ljava/lang/ref/WeakReference;
    move-object v3, v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;

    .line 191
    move-object v0, v4

    if-nez v4, :cond_1

    .line 195
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mHostActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 198
    .local v3, "fm":Landroidx/fragment/app/FragmentManager;
    if-eqz v0, :cond_2

    .line 200
    :try_start_0
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mParams:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 209
    const-string v5, "mExtras"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    :cond_3
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 215
    .local v4, "ftr":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getFragmentContainerId()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    .line 216
    .local v7, "id":I
    move v7, v5

    if-nez v5, :cond_4

    .line 217
    const v7, 0x1020002

    goto :goto_2

    .line 219
    :cond_4
    invoke-direct {p0, v7}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a(I)V

    .line 223
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, p1, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 224
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 225
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    goto :goto_3

    .line 226
    :catchall_1
    move-exception v5

    .line 227
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->a()V

    .line 230
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->b:Ljava/util/Stack;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iput-boolean v6, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mIsPrevent:Z

    .line 233
    return-void
.end method

.method public final restart(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mParams:Landroid/os/Bundle;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " restart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->onRestart(Landroid/os/Bundle;)V

    .line 240
    return-void
.end method

.method public final start()V
    .locals 6

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.start"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mDes:Lcom/alipay/mobile/framework/app/ApplicationDescription;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->mDes:Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->getEngineType()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 70
    .local v2, "engineType":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "engineType"

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->putExternalParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v2    # "engineType":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getEntryClassName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v2, "className":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v3, v0

    .line 81
    .local v3, "clazz":Ljava/lang/Class;
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 82
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    move-object v0, v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 83
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;

    .line 85
    .local v1, "fragment":Lcom/alipay/mobile/framework/app/fragment/BaseFragment;
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->add(Lcom/alipay/mobile/framework/app/fragment/BaseFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v1    # "fragment":Lcom/alipay/mobile/framework/app/fragment/BaseFragment;
    .end local v3    # "clazz":Ljava/lang/Class;
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/alipay/mobile/framework/app/AppLoadException;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  start."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->onStart()V

    .line 93
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stop."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->onStop()V

    .line 248
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app.stop"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method
