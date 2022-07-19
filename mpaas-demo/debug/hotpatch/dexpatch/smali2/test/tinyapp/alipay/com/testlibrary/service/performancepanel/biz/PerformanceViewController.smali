.class public Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;
.super Ljava/lang/Object;
.source "PerformanceViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;
    }
.end annotation


# instance fields
.field private a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

.field private b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;

.field private volatile c:Z

.field private d:Landroid/app/Activity;

.field private e:Landroid/view/View;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;)V
    .locals 2
    .param p1, "attachedActivity"    # Landroid/app/Activity;
    .param p2, "viewProvider"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;
    .param p3, "dataProvider"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->c:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->g:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

    .line 41
    iput-object p3, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;

    .line 42
    return-void
.end method

.method static synthetic a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;
    .param p1, "x1"    # Landroid/view/View;

    .line 21
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .line 21
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->f:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 128
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/util/OsUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method static synthetic a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 21
    invoke-direct {p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->c:Z

    return p1
.end method

.method static synthetic b(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 21
    iget-boolean v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->c:Z

    return v0
.end method

.method static synthetic c(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 21
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->f:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .line 124
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 21
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 21
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 21
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

    return-object v0
.end method

.method static synthetic g(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;
    .locals 1
    .param p0, "x0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 21
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 45
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;

    invoke-direct {v0, p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;-><init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)V

    .line 68
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;

    invoke-direct {v1, v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ljava/lang/Runnable;)V

    .line 70
    const/4 v1, 0x1

    return v1
.end method

.method public final a(Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)Z
    .locals 2
    .param p1, "userAction"    # Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

    .line 107
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;

    invoke-direct {v0, p0, p1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;-><init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)V

    .line 119
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;

    invoke-direct {v1, v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ljava/lang/Runnable;)V

    .line 120
    const/4 v1, 0x1

    return v1
.end method

.method public final b()Z
    .locals 2

    .line 88
    new-instance v0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;

    invoke-direct {v0, p0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;-><init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)V

    .line 100
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;

    invoke-direct {v1, v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$a;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ljava/lang/Runnable;)V

    .line 102
    const/4 v1, 0x1

    return v1
.end method
