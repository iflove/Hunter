.class final Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;
.super Ljava/lang/Object;
.source "PerformanceViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->b()Z
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

    .line 88
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 91
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->b(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->c(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Z)Z

    .line 96
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->c(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$2;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->e(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    return-void

    .line 92
    :cond_1
    :goto_0
    return-void
.end method
