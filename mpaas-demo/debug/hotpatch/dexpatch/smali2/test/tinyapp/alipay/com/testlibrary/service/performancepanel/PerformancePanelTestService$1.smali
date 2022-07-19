.class final Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;
.super Landroid/content/BroadcastReceiver;
.source "PerformancePanelTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;


# direct methods
.method constructor <init>(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;)V
    .locals 0
    .param p1, "this$0"    # Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    .line 94
    iput-object p1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 98
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-static {v0}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.tinyapp.alipay.action.switchTab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-static {v1, v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;Z)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-static {v1, v2}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->a(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;Z)V

    .line 116
    :goto_0
    const-string v1, "com.tinyapp.alipay.action.pageResume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 118
    .local v5, "bundle":Landroid/os/Bundle;
    move-object v5, v4

    const-string v6, "page_resume_start_time"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    invoke-static {v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->a(Z)V

    .line 120
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceDataProvider;->b(J)V

    .line 124
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_3
    nop

    .line 125
    const-string v4, "com.tinyapp.alipay.action.switchPage"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 126
    const-string v5, "com.tinyapp.alipay.action.switchPageFromBackgroundToFront"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 129
    .local v2, "needRefreshPanel":Z
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    sget-object v1, Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;->ACTION_NORMAL:Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

    goto :goto_2

    :cond_7
    :goto_1
    sget-object v1, Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;->ACTION_SWITCH_PAGE:Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;

    .line 133
    .local v1, "userAction":Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;
    :goto_2
    if-eqz v2, :cond_8

    .line 135
    :try_start_0
    iget-object v3, p0, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService$1;->a:Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;

    invoke-static {v3}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;->b(Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/PerformancePanelTestService;)Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;

    move-result-object v3

    invoke-virtual {v3, v1}, Ltest/tinyapp/alipay/com/testlibrary/service/performancepanel/biz/PerformanceViewController;->a(Ltest/tinyapp/alipay/com/testlibrary/core/DataProvider$UserAction;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PerformancePanelService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    return-void
.end method
