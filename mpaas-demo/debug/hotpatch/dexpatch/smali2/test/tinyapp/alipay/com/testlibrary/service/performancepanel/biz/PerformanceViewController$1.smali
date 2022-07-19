.class final Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;
.super Ljava/lang/Object;
.source "PerformanceViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;


# direct methods
.method constructor <init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)V
    .locals 0
    .param p1, "this$0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 45
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 48
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->b(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Z)Z

    .line 53
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->c(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 57
    :cond_1
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->e(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->f(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

    move-result-object v1

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Landroid/view/View;)Landroid/view/View;

    .line 61
    :cond_2
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->f(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

    move-result-object v0

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->g(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;

    move-result-object v1

    sget-object v2, Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;->ACTION_NORMAL:Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

    invoke-virtual {v1, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->a(Ljava/util/List;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

    .line 64
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->e(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->d(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->a(Landroid/app/Activity;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void

    .line 49
    :cond_3
    :goto_0
    return-void
.end method
