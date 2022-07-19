.class public Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
.super Ljava/lang/Object;
.source "H5PagePreloadFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/factory/H5PageFactory;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PagePreloadFactoryImpl"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->a:Landroid/app/Activity;

    .line 40
    return-void
.end method


# virtual methods
.method public createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Landroid/os/Bundle;

    .line 44
    const-string v0, "H5PagePreloadFactoryImpl"

    const-string v1, "start create page"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 46
    .local v1, "time":J
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;-><init>()V

    .line 48
    .local v3, "rootViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v4, p1, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    const/4 v5, 0x0

    .line 49
    .local v5, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    move-object v5, v4

    new-instance v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$1;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)V

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V

    .line 56
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)V

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setH5ErrorHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;)V

    .line 62
    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 64
    .end local v1    # "time":J
    .local v6, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create page elapse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v3
.end method

.method public setUpPage(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "rootViewHolder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .param p2, "startParams"    # Landroid/os/Bundle;

    .line 69
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 70
    .local v0, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    const-string v1, "transparent"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    .local v1, "transActivity":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transActivity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5PagePreloadFactoryImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v2, "init exception"

    if-nez v1, :cond_0

    .line 74
    const-string v4, "init nav bar"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance v4, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->a:Landroid/app/Activity;

    invoke-direct {v4, v5, p2, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 78
    .local v4, "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v4    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v4

    .line 80
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v4, "init nav bar end"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 87
    :try_start_1
    const-string v5, "init web content"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v5, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {v5, v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 89
    .local v5, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 90
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 91
    const-string v6, "init web content end"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "init font bar"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v6, Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 95
    .local v6, "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 96
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5FontBar(Lcom/alipay/mobile/nebulacore/view/H5FontBar;)V

    .line 97
    const-string v7, "init font bar end"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v7, "init tab bar"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v7, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    invoke-direct {v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;-><init>()V

    move-object v8, v4

    .line 101
    .local v8, "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    move-object v8, v7

    invoke-virtual {v7, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 102
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v7

    invoke-interface {v7, v8}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 103
    invoke-virtual {p1, v8}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Tabbar(Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;)V

    .line 104
    const-string v7, "init tab bar end"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v7

    .line 107
    .local v4, "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    move-object v4, v7

    if-eqz v7, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getHdivider()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setHdivider(Landroid/view/View;)V

    .line 109
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 110
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 112
    .end local v4    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .end local v5    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .end local v6    # "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    .end local v8    # "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    :catchall_1
    move-exception v4

    goto :goto_1

    :catchall_2
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    .line 113
    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v3, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    move-object v4, v6

    goto :goto_3

    .line 118
    :cond_2
    :try_start_3
    new-instance v5, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-direct {v5, v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 119
    .local v5, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    .line 120
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 123
    nop

    .end local v5    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    goto :goto_3

    .line 121
    :catchall_3
    move-exception v5

    .line 122
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {v3, v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_3
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;

    invoke-direct {v2, p0, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 153
    .local v2, "keyboardListener":Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;
    new-instance v3, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;-><init>(Landroid/app/Activity;)V

    .line 154
    .local v4, "keyboardHelper":Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;)V

    .line 155
    return-void
.end method
