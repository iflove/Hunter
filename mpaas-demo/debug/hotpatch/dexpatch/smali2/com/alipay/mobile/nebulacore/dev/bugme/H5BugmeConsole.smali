.class public Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
.super Ljava/lang/Object;
.source "H5BugmeConsole.java"


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/app/AlertDialog;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebula/webview/APWebView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Landroid/view/View;

.field private g:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

.field private h:Landroidx/viewpager/widget/ViewPager;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Landroid/view/View;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const-string v0, "page"

    const-string v1, "jsBridge"

    const-string v2, "console"

    const-string v3, "network"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/content/Context;)V
    .locals 2
    .param p1, "apWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p2, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->d:Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->c:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->e:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->l:Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->h:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 14

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->j:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->i:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->j:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->i:Ljava/util/List;

    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->d:Landroid/content/Context;

    invoke-direct {v2, v3, p0, v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeListView;-><init>(Landroid/content/Context;Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_bugme_tabview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->f:Landroid/view/View;

    .line 90
    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_tabs:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->g:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->f:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_viewPager:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->h:Landroidx/viewpager/widget/ViewPager;

    .line 92
    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeViewPageAdapter;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->g:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->h:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 94
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->f:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_clear_tab:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 95
    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->f:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_clear_all:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v3, v2

    .line 112
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    move-object v3, v1

    new-instance v4, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$3;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$3;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    const-string v5, "\u5173\u95ed"

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->b:Landroid/app/AlertDialog;

    .line 127
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->f:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->b:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->b:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->b:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 133
    :cond_1
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_bugme_info:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 136
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 137
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v4, v2

    .line 138
    .local v4, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v1

    if-eqz v1, :cond_8

    .line 139
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "package_nick"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "packageNick":Ljava/lang/String;
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appVersion"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "version":Ljava/lang/String;
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "appId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "appId":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_appid:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_pkg_nick:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_version:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 150
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v8, v2

    .line 153
    .local v8, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v8, v7

    if-eqz v7, :cond_2

    .line 154
    invoke-interface {v8, v6, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    sget v10, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_name:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 156
    .local v2, "nameTextView":Landroid/widget/TextView;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v13, v7

    move-object v7, v2

    move-object v2, v13

    goto :goto_1

    .line 153
    .end local v2    # "nameTextView":Landroid/widget/TextView;
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    move-object v7, v2

    .line 159
    :goto_1
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    sget v10, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_webview:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 160
    .local v2, "webViewTextView":Landroid/widget/TextView;
    move-object v2, v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->c:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 161
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v7, "ua":Ljava/lang/String;
    move-object v7, v9

    if-eqz v9, :cond_7

    .line 163
    const-string v9, "Chrome/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 164
    .local v9, "start":I
    const-string v10, ""

    .line 165
    .local v10, "chromeVer":Ljava/lang/String;
    if-lez v9, :cond_3

    .line 166
    add-int/lit8 v11, v9, 0x7

    const-string v12, " "

    invoke-virtual {v7, v12, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 168
    :cond_3
    const-string v11, "UCBS"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "UWS"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    .line 170
    :cond_4
    const-string v11, "u3"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 171
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "U3 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 173
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "System WebView "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 169
    :cond_6
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "U4 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .end local v7    # "ua":Ljava/lang/String;
    .end local v9    # "start":I
    .end local v10    # "chromeVer":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    sget v9, Lcom/alipay/mobile/nebula/R$id;->h5_bugme_info_button_screenshot:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v9, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$4;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$4;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .end local v1    # "packageNick":Ljava/lang/String;
    .end local v2    # "webViewTextView":Landroid/widget/TextView;
    .end local v4    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "version":Ljava/lang/String;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v8    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_8
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->j:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 197
    .local v0, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->c:Ljava/lang/ref/WeakReference;

    .line 198
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 200
    .local v1, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsoleButton;-><init>(Landroid/content/Context;)V

    .line 201
    .local v2, "debugConsoleEntryButton":Landroid/widget/ImageButton;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 202
    .local v3, "resources":Landroid/content/res/Resources;
    sget v4, Lcom/alipay/mobile/nebula/R$drawable;->h5_btn_debug_console:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 206
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    .line 210
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object v5, v4

    const/4 v6, 0x5

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 212
    new-instance v4, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$5;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$5;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->b:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public getLogDataList(I)Ljava/util/List;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugMeLogMsg;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSubContentView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 274
    if-nez p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->k:Landroid/view/View;

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getTabSize()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public recordLog(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 229
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "logType":Ljava/lang/String;
    const-string v1, "jsapi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    const-string v0, "jsBridge"

    .line 233
    :cond_1
    const/4 v1, 0x0

    .line 234
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->a:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 235
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    move v1, v2

    .line 237
    goto :goto_1

    .line 234
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "i":I
    :cond_3
    :goto_1
    move v2, v1

    .line 241
    .local v2, "pos":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->e:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;

    invoke-direct {v4, p0, v2, p1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$6;-><init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;ILcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method

.method public release()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->i:Ljava/util/List;

    .line 258
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->j:Ljava/util/List;

    .line 259
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->b:Landroid/app/AlertDialog;

    .line 260
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->f:Landroid/view/View;

    .line 261
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->g:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .line 262
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->h:Landroidx/viewpager/widget/ViewPager;

    .line 263
    return-void
.end method

.method public startup()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    nop

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->b()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->l:Z

    .line 78
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5BugmeConsole"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method
