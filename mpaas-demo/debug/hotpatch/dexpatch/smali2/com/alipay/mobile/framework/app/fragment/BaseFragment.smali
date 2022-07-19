.class public abstract Lcom/alipay/mobile/framework/app/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_EXTRAS:Ljava/lang/String; = "mExtras"

.field public static final TAG:Ljava/lang/String; = "FragmentApplication"

.field private static a:Lcom/alipay/mobile/framework/app/fragment/InterruptOnTouchListener;


# instance fields
.field protected mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/alipay/mobile/framework/app/fragment/InterruptOnTouchListener;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/fragment/InterruptOnTouchListener;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->a:Lcom/alipay/mobile/framework/app/fragment/InterruptOnTouchListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 128
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method private a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 188
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 189
    return-void
.end method


# virtual methods
.method public abstract getBundleName()Ljava/lang/String;
.end method

.method public getFragmentApplication()Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 62
    .local v2, "application":Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->getBundleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, p1, v3}, Lcom/alipay/mobile/framework/BundleContext;->appendResourcesByBundleName(Landroid/content/Context;[Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 68
    const-string v0, ""

    .line 69
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    move-object v4, v1

    .line 70
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v4, v3

    if-eqz v3, :cond_2

    .line 71
    const-string v3, "app_id"

    const-string v6, ""

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v3, "mExtras"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 73
    .local v1, "_bundle":Landroid/os/Bundle;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 77
    :try_start_0
    const-class v3, Landroidx/fragment/app/Fragment;

    const-string v6, "mArguments"

    invoke-static {v3, p0, v6, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v5, Lcom/alipay/mobile/framework/app/AppLoadException;

    invoke-direct {v5, v3}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 82
    .end local v1    # "_bundle":Landroid/os/Bundle;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    nop

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    iput-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BaseFragment.onAttach("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") appId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentApplication"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    if-nez v1, :cond_1

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->createAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    iput-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    .line 91
    if-nez v1, :cond_1

    .line 92
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->setIsPrevent(Z)V

    .line 98
    return-void

    .line 83
    :cond_2
    new-instance v1, Lcom/alipay/mobile/framework/app/AppLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "appId="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alipay/mobile/framework/app/AppLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 103
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.fragment.BaseFragment.onCreate(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 104
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 105
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->a(Landroid/os/Bundle;)V

    .line 108
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->remove(Lcom/alipay/mobile/framework/app/fragment/BaseFragment;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onReady(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const-string v0, "appId"

    if-nez p1, :cond_0

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    move-object p1, v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->mFragmentApplication:Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/fragment/FragmentApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 164
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.fragment.BaseFragment.onReady(Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 165
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 166
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    :cond_2
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->a:Lcom/alipay/mobile/framework/app/fragment/InterruptOnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.fragment.BaseFragment.onStart()"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 119
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 120
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->a()V

    .line 123
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 179
    .local v0, "args":[Ljava/lang/Object;
    const-string/jumbo v1, "void com.alipay.mobile.framework.app.fragment.BaseFragment.onViewCreated(View, Bundle)"

    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 180
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    .line 181
    .local v3, "aroundResult":Landroid/util/Pair;
    move-object v3, v2

    if-eqz v2, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/app/fragment/BaseFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 184
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 185
    return-void
.end method
