.class public Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;
.super Ljava/lang/Object;
.source "H5PageFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/factory/H5PageFactory;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PageFactoryImpl"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method public createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 13
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "param"    # Landroid/os/Bundle;

    .line 36
    const-string v0, "H5PageFactoryImpl"

    const-string v1, "start create page"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 38
    .local v1, "time":J
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;-><init>()V

    .line 39
    .local v3, "rootViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    const/4 v4, 0x0

    move-object v5, v4

    .line 40
    .local v5, "startParams":Landroid/os/Bundle;
    move-object v5, p2

    const-string v6, "transparent"

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 41
    .local v6, "transActivity":Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "transActivity "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v7, "init exception"

    if-nez v6, :cond_0

    .line 44
    const-string v8, "init nav bar"

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :try_start_0
    new-instance v8, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    invoke-direct {v8, p1, v5, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 48
    .local v8, "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    invoke-virtual {v3, v8}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v8    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v8

    .line 50
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v0, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string v9, "init nav bar end"

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_0
    move-object v8, v4

    .line 56
    :goto_1
    new-instance v9, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    invoke-direct {v9, v10, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 57
    .local v8, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    move-object v8, v9

    new-instance v10, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;

    invoke-direct {v10, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)V

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V

    .line 64
    new-instance v9, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)V

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setH5ErrorHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;)V

    .line 70
    invoke-virtual {v3, v8}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 71
    if-nez v6, :cond_2

    .line 73
    :try_start_1
    const-string v9, "init web content"

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v9, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {v9, v8}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 75
    .local v9, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    invoke-virtual {v3, v9}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 76
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 77
    const-string v10, "init web content end"

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v10, "init font bar"

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v10, Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    invoke-direct {v10, v8}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 81
    .local v10, "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    :try_start_2
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 82
    invoke-virtual {v3, v10}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5FontBar(Lcom/alipay/mobile/nebulacore/view/H5FontBar;)V

    .line 83
    const-string v11, "init font bar end"

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v11, "init tab bar"

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v11, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    invoke-direct {v11}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;-><init>()V

    move-object v12, v4

    .line 87
    .local v12, "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    move-object v12, v11

    invoke-virtual {v11, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 88
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v11

    invoke-interface {v11, v12}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 89
    invoke-virtual {v3, v12}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Tabbar(Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;)V

    .line 90
    const-string v11, "init tab bar end"

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v11

    .line 93
    .local v4, "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    move-object v4, v11

    if-eqz v11, :cond_1

    .line 94
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getHdivider()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setHdivider(Landroid/view/View;)V

    .line 95
    invoke-virtual {v4, v8}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 96
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v11

    invoke-interface {v11, v4}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 98
    .end local v4    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .end local v9    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .end local v10    # "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    .end local v12    # "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    :catchall_1
    move-exception v4

    goto :goto_2

    :catchall_2
    move-exception v9

    move-object v10, v4

    move-object v4, v9

    .line 99
    .local v4, "t":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v0, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    move-object v4, v10

    goto :goto_4

    .line 104
    :cond_2
    :try_start_3
    new-instance v9, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-direct {v9, v8}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 105
    .local v9, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    invoke-virtual {v3, v9}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    .line 106
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 109
    nop

    .end local v9    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    goto :goto_4

    .line 107
    :catchall_3
    move-exception v9

    .line 108
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {v0, v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_4
    new-instance v7, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;

    invoke-direct {v7, p0, v5, v8}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 139
    .local v7, "keyboardListener":Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;
    new-instance v9, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->a:Landroid/app/Activity;

    invoke-direct {v9, v10}, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;-><init>(Landroid/app/Activity;)V

    .line 140
    .local v4, "keyboardHelper":Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;
    invoke-virtual {v9, v7}, Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener;->setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    .line 143
    .end local v1    # "time":J
    .local v9, "time":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create page elapse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-object v3
.end method
