.class final Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;
.super Ljava/lang/Object;
.source "PerformanceViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

.field final synthetic b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;


# direct methods
.method constructor <init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)V
    .locals 0
    .param p1, "this$0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    .line 107
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    iput-object p2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;->a:Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 110
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->b(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->f(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;

    move-result-object v0

    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;->b:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    invoke-static {v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->g(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;

    move-result-object v1

    iget-object v2, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController$3;->a:Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

    invoke-virtual {v1, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/ui/PerformanceViewProvider;->b(Ljava/util/List;)V

    .line 116
    return-void

    .line 111
    :cond_1
    :goto_0
    return-void
.end method
