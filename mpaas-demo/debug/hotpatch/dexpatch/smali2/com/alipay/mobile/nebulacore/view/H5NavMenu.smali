.class public Lcom/alipay/mobile/nebulacore/view/H5NavMenu;
.super Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.source "H5NavMenu.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NavMenu"


# instance fields
.field private h:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View;

.field private m:Landroid/content/Context;

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/view/ViewGroup$LayoutParams;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/LinearLayout;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->r:Z

    .line 50
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->n:Landroid/widget/FrameLayout;

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->k:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->l:Landroid/view/View;

    .line 61
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->l:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 63
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->o:Landroid/view/ViewGroup$LayoutParams;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_popmenu:I

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->n:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->p:Landroid/view/View;

    .line 67
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->q:Landroid/widget/LinearLayout;

    .line 68
    return-void

    .line 58
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->n:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public clearMenuList()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->r:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->r:Z

    .line 76
    :cond_0
    return-void
.end method

.method public getNavMenuItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    return-object v0
.end method

.method public initMenu()V
    .locals 8

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    const/4 v2, 0x0

    .line 82
    .local v2, "h5ViewProvider":Lcom/alipay/mobile/nebula/provider/H5ViewProvider;
    move-object v2, v1

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5NavMenu;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5NavMenu;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;->createNavMenu()Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    .line 87
    if-nez v1, :cond_1

    .line 88
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5NavMenu;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5NavMenu;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    .line 93
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_copy:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_copy:I

    .line 97
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "copy"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_refresh:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_refresh:I

    .line 100
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "refresh"

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_open_in_browser:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_browse:I

    .line 103
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "openInBrowser"

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    new-instance v3, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_menu_font:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_font:I

    .line 106
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, "h5MenuActionOfFont"

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/view/H5NavMenuView;->setList(Ljava/util/List;)V

    .line 111
    return-void
.end method

.method public refreshIcon(I)V
    .locals 2
    .param p1, "index"    # I

    .line 188
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 190
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_iv_icon:I

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 192
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_0
    return-void
.end method

.method public showMenu(Landroid/view/View;)V
    .locals 8

    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a()V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    const-string v1, "H5NavMenu"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string p1, "menu is showing!"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_7

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->q:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->f:Z

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->k:Ljava/util/List;

    .line 125
    :cond_2
    nop

    .line 126
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/view/H5NavMenuView;->getListCount()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 127
    if-eqz v3, :cond_3

    .line 128
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 129
    sget v6, Lcom/alipay/mobile/nebula/R$drawable;->h5_popmenu_divider:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 133
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->h:Lcom/alipay/mobile/nebula/view/H5NavMenuView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->q:Landroid/widget/LinearLayout;

    invoke-interface {v5, v3, v6}, Lcom/alipay/mobile/nebula/view/H5NavMenuView;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 136
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :try_start_0
    invoke-virtual {v5, v0, v0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_1

    .line 139
    :catch_0
    move-exception v4

    .line 140
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    const/16 v6, 0xc8

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v4

    .line 142
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 143
    if-le v4, v6, :cond_4

    goto :goto_2

    :cond_4
    move v4, v6

    .line 144
    :goto_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->f:Z

    if-eqz v6, :cond_5

    .line 146
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 151
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 152
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->m:Landroid/content/Context;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    aget v3, v3, v0

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->i:I

    .line 153
    iput v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->j:I

    .line 155
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->p:Landroid/view/View;

    const/4 v6, -0x2

    invoke-direct {v3, v5, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    .line 157
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 159
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 160
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 161
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->n:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->l:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->o:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->i:I

    iget v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->j:I

    invoke-virtual {v0, p1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 178
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception p1

    .line 180
    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :cond_7
    return-void
.end method
