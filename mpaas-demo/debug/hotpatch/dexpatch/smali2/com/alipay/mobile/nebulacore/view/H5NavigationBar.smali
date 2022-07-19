.class public Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5NavigationBar.java"


# instance fields
.field private A:I

.field private B:Z

.field private C:I

.field private D:F

.field private E:Z

.field private F:Z

.field private G:Landroid/content/Context;

.field private H:Z

.field private I:Z

.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Lcom/alipay/mobile/nebula/view/H5TitleView;

.field private i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

.field private j:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

.field private k:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

.field private l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Landroid/view/View;

.field private w:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->p:Z

    .line 120
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->q:Z

    .line 122
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->r:Z

    .line 128
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->u:Z

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    .line 135
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->x:Z

    .line 139
    const/4 v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->A:I

    .line 141
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->B:Z

    .line 147
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->E:Z

    .line 150
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->F:Z

    .line 156
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->I:Z

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->G:Landroid/content/Context;

    .line 161
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f:Z

    .line 162
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g:Z

    .line 163
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Z

    .line 164
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->w:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 166
    const-string p3, "isTinyApp"

    invoke-static {p2, p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->H:Z

    .line 168
    if-eqz p3, :cond_0

    const-string p3, "mp_ta_use_orginal_mini_nagivationbar"

    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "YES"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 170
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object p3

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 171
    if-eqz p3, :cond_1

    .line 172
    invoke-interface {p3, p1}, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;->createTitleView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 176
    :cond_1
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-nez p3, :cond_2

    .line 177
    new-instance p3, Lcom/alipay/mobile/h5container/api/H5TitleBar;

    invoke-direct {p3, p1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 180
    :cond_2
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {p3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentView()Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    .line 181
    const-string v2, "h5_titlebar"

    invoke-virtual {p3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-interface {p3, v2, v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 184
    const-string p3, "packageLoadingShown"

    invoke-static {p2, p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p3

    .line 185
    if-eqz p3, :cond_3

    const-string p3, "h5_newloadpage"

    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "no"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 186
    const-string p3, "walletAppName"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 187
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v1, p3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 190
    :cond_3
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Landroid/os/Bundle;)V

    .line 192
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Z)V

    .line 193
    new-instance p3, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-direct {p3, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 195
    new-instance p3, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-direct {p3, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    .line 197
    const-string p1, "appId"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    .line 198
    const-string p1, "appVersion"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Ljava/lang/String;

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->C:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->C:I

    return p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originUrl"    # Ljava/lang/String;

    .line 1182
    move-object v0, p1

    .line 1183
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 1184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1186
    .local v3, "entryUrl":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    invoke-static {v3, p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .end local v3    # "entryUrl":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 997
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    :cond_0
    return-void
.end method

.method private a(IIZ)V
    .locals 4
    .param p1, "currentColor"    # I
    .param p2, "switchThemePoint"    # I
    .param p3, "ifAutoMode"    # Z

    .line 552
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->C:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v0

    .line 553
    .local v0, "dimen":I
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->x:Z

    if-nez v1, :cond_6

    .line 554
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 555
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, p2, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e()V

    .line 558
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c()V

    .line 560
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 561
    goto :goto_1

    .line 567
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f()V

    .line 568
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b()V

    .line 570
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 571
    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    const v3, 0x3e19999a    # 0.15f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 572
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 574
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 581
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBackgroundAlphaValue(I)V

    .line 582
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 583
    iget v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 585
    :cond_4
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->E:Z

    if-eqz v1, :cond_6

    .line 586
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v1, :cond_6

    .line 587
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 588
    .local v3, "mainTitle":Landroid/widget/TextView;
    move-object v3, v1

    if-eqz v1, :cond_5

    .line 589
    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 591
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 592
    .local v2, "subTitle":Landroid/widget/TextView;
    move-object v2, v1

    if-eqz v1, :cond_6

    .line 593
    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 598
    .end local v2    # "subTitle":Landroid/widget/TextView;
    .end local v3    # "mainTitle":Landroid/widget/TextView;
    :cond_6
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1262
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-nez v0, :cond_0

    .line 1263
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V

    .line 1267
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$4;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->requestRpc(Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/content/Context;)V

    .line 1305
    :cond_1
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "params"    # Landroid/os/Bundle;

    .line 202
    const-string v0, "navSearchBar_type"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 204
    .local v1, "navSearchBar_type":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "navSearchBar_type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5NavigationBar"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->u:Z

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    .line 209
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 497
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    const-string v0, "actionType"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 502
    .local v1, "actionType":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    const-string v0, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->enableTitleSegControl(Z)V

    return-void

    .line 505
    :cond_1
    const-string v0, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->enableTitleSegControl(Z)V

    .line 509
    :cond_2
    return-void

    .line 498
    .end local v1    # "actionType":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 978
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getBackgroundColor()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 979
    .local v0, "color":J
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 980
    .local v3, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "color"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-interface {p1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 982
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 1057
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1058
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    const/4 v0, 0x0

    const-string v2, "preventDefault"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->p:Z

    .line 1063
    if-eqz v0, :cond_1

    .line 1064
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setOptionMenu(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1067
    const-string v0, "success"

    const-string v2, "true"

    invoke-interface {p2, v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1068
    return-void

    .line 1059
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 1060
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;II)V
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(IIZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 516
    const-string v0, "auto"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V

    goto :goto_0

    .line 535
    :cond_1
    const-string v0, "custom"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 536
    const-string p1, "backBtnImage"

    const-string v0, ""

    invoke-static {p2, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 537
    const-string v0, "titleColor"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 538
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBackCloseBtnImage(Ljava/lang/String;)V

    .line 539
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleTxtColor(I)V

    .line 542
    :cond_2
    :goto_0
    const-string p1, "titlePenetrate"

    const-string v0, "NO"

    invoke-static {p2, p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 543
    const-string p2, "YES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    instance-of p2, p1, Lcom/alipay/mobile/h5container/api/H5TitleBar;

    if-eqz p2, :cond_3

    .line 544
    invoke-interface {p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 545
    instance-of p2, p1, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    if-eqz p2, :cond_3

    .line 546
    check-cast p1, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->setPreventTouchEvent(Z)V

    .line 549
    :cond_3
    return-void
.end method

.method private a(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 992
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showCloseButton(Z)V

    .line 993
    return-void
.end method

.method private a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 985
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showTitleLoading(Z)V

    .line 986
    if-eqz p2, :cond_0

    .line 987
    const-string v0, "success"

    const-string v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 989
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1251
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1252
    return v0

    .line 1255
    :cond_0
    nop

    .line 1256
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "usePresetPopmenu"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    .line 1257
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1258
    :cond_1
    return v0

    .line 1257
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->y:I

    return v0
.end method

.method private b()V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setIconWhiteTheme()V

    .line 1239
    return-void
.end method

.method private b(IIZ)V
    .locals 3
    .param p1, "finalMaxScrollHeight"    # I
    .param p2, "finalScale"    # I
    .param p3, "ifAutoMode"    # Z

    .line 601
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->C:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 602
    .local v1, "dimen":I
    move v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 603
    if-gtz v1, :cond_1

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    return-void

    .line 606
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    return-void

    .line 609
    :cond_2
    div-int v0, v1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 610
    .local v0, "orgAlpha":F
    const/high16 v2, 0x437f0000    # 255.0f

    div-float v2, v0, v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    .line 612
    .end local v0    # "orgAlpha":F
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "params"    # Landroid/os/Bundle;

    .line 481
    const-string v0, "segWidths"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "segWidths":Ljava/lang/String;
    const-string v2, "segTitles"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "segTitles":Ljava/lang/String;
    const-string v4, "segSelectedIndex"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v5

    .line 484
    .local v5, "segSelectedIndex":I
    const-string v6, "segColorNormal"

    invoke-static {p1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v7

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    .line 485
    .local v7, "segColorNormal":I
    const-string v9, "segColorActive"

    invoke-static {p1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v10

    or-int/2addr v8, v10

    .line 486
    .local v8, "segColorActive":I
    new-instance v10, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v11, 0x0

    .line 487
    .local v11, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v11, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v4, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {v11, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, v11}, Lcom/alipay/mobile/nebula/view/H5TitleView;->initTitleSegControl(Lcom/alibaba/fastjson/JSONObject;)V

    .line 493
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;II)V
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(IIZ)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1010
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showOptionMenu(Z)V

    .line 1011
    return-void
.end method

.method private b(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 1014
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Z)V

    .line 1015
    const-string v0, "success"

    const-string v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1016
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 8
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 923
    const-string v0, "color"

    const/high16 v1, -0x1000000

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 924
    .local v2, "titleBarColor":I
    const-string v3, "reset"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 925
    .local v3, "reset":Z
    const-string v5, "resetTransparent"

    invoke-static {p1, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    .line 926
    .local v5, "resetTransparent":Z
    or-int/2addr v2, v1

    .line 927
    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    if-nez v5, :cond_4

    .line 929
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setContentBgViewColor(I)V

    .line 930
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->F:Z

    if-nez v0, :cond_1

    .line 931
    if-eq v2, v7, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f()V

    .line 933
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b()V

    goto :goto_0

    .line 935
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e()V

    .line 936
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c()V

    .line 940
    :cond_1
    :goto_0
    if-eq v2, v7, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 941
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 943
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    if-eqz v0, :cond_3

    .line 944
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 946
    :cond_3
    return v6

    .line 949
    :cond_4
    if-eqz v3, :cond_8

    .line 950
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, v7}, Lcom/alipay/mobile/nebula/view/H5TitleView;->resetTitleColor(I)V

    .line 952
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e()V

    .line 953
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c()V

    .line 954
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 955
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->H:Z

    if-eqz v4, :cond_5

    goto :goto_1

    .line 956
    :cond_5
    const-string v4, "#C6C8C9"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    or-int v7, v4, v1

    .line 955
    :goto_1
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 958
    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    if-eqz v0, :cond_7

    .line 959
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 961
    :cond_7
    return v6

    .line 962
    :cond_8
    if-eqz v5, :cond_a

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    if-eqz v0, :cond_a

    .line 963
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f()V

    .line 964
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b()V

    .line 965
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    if-eqz v0, :cond_9

    .line 966
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 968
    :cond_9
    return v6

    .line 970
    :cond_a
    return v4
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->A:I

    return v0
.end method

.method private c()V
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setIconBlueTheme()V

    .line 1243
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;

    .line 1071
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1072
    .local v0, "defaultTitleParam":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "titleImage"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1073
    .local v2, "defaultTitle":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    .line 1075
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1073
    const-string v4, "fromJS"

    if-nez v1, :cond_0

    .line 1074
    const-string v1, "image"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 1078
    :cond_0
    const-string v1, "defaultTitle"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1080
    const-string v1, "title"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1085
    :cond_1
    return-void
.end method

.method private c(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1026
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    return-void

    .line 1029
    :cond_0
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "H5NavigationBar"

    if-nez v1, :cond_1

    .line 1030
    const-string v0, "case 1, page title ignored!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void

    .line 1034
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "readTitle:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g:Z

    if-nez v1, :cond_4

    .line 1036
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not show"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return-void

    .line 1044
    :cond_2
    :try_start_0
    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v4, v0

    :goto_0
    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .end local v1    # "url":Ljava/lang/String;
    return-void

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1049
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 1051
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    return-void

    .line 1052
    :cond_4
    const-string v0, "case 2, page title ignored!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method private c(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 1019
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackButton(Z)V

    .line 1020
    if-eqz p2, :cond_0

    .line 1021
    const-string v0, "success"

    const-string v1, "true"

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1023
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    return-object v0
.end method

.method private d(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1088
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1091
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    return-void

    .line 1094
    :cond_1
    const-string v0, "fromJS"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f:Z

    .line 1098
    :cond_2
    const-string v0, "image"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 1099
    .local v3, "titleImg":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "H5NavigationBar"

    if-nez v0, :cond_6

    .line 1100
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g:Z

    .line 1101
    const-string v0, "contentDesc"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "contentDesc":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1104
    const-string v1, "setTitle image type base64"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1106
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 1107
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1108
    return-void

    .line 1112
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1113
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1114
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "finalImageUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "onlineHost"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "onlineHost":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setTitle image type originUrl "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", finalImageUrl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", onlineHost "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1119
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$2;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Ljava/lang/String;)V

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    return-void

    .line 1138
    :cond_4
    new-instance v4, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar$3;-><init>(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImageKeepSize(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 1155
    .end local v0    # "contentDesc":Ljava/lang/String;
    .end local v1    # "finalImageUrl":Ljava/lang/String;
    .end local v2    # "onlineHost":Ljava/lang/String;
    :cond_5
    return-void

    .line 1156
    :cond_6
    const-string v0, "setTitle text type"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    .line 1158
    .local v5, "title":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1159
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Z

    if-nez v1, :cond_7

    .line 1160
    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e:Ljava/lang/String;

    .line 1164
    :cond_7
    const/4 v1, 0x0

    .line 1165
    .local v1, "subtitle":Ljava/lang/String;
    const-string v6, "subtitle"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1166
    invoke-static {p1, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    :cond_8
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v6, v5}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 1169
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v6, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setSubTitle(Ljava/lang/String;)V

    .line 1170
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6, v5}, Lcom/alipay/mobile/h5container/api/H5Page;->setTitle(Ljava/lang/String;)V

    .line 1172
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1173
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v6

    const-string v7, "com.alipay.mobile.h5container.titleRefreshed"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v0, ""

    :goto_0
    const-string v6, "url"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const-string v0, "send page finished broadcast."

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1179
    .end local v1    # "subtitle":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "title":Ljava/lang/String;
    return-void

    .line 1089
    .end local v3    # "titleImg":Ljava/lang/String;
    :cond_a
    :goto_1
    return-void
.end method

.method private d()Z
    .locals 5

    .line 1308
    const/4 v0, 0x0

    .line 1309
    .local v0, "isPrerender":Z
    const/4 v1, 0x0

    .line 1310
    .local v1, "isTinyApp":Z
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1311
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 1312
    const-string v4, "isPrerender"

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1313
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "isTinyApp"

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 1315
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 1

    .line 1320
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->I:Z

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 1323
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h()V

    .line 1326
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->z:I

    return v0
.end method

.method private f()V
    .locals 1

    .line 1330
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->I:Z

    if-nez v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 1333
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g()V

    .line 1336
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private g()V
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleColorWhiteTheme()V

    .line 1340
    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    return-object v0
.end method

.method private h()V
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleColorBlueTheme()V

    .line 1344
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    return-object v0
.end method

.method public getH5SharePanelProvider()Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    if-nez v0, :cond_0

    .line 213
    nop

    .line 214
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->j:Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 773
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 775
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "showTitlebar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 777
    const-string v2, "hideTitlebar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 779
    const-string v2, "showOptionMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v2, :cond_0

    .line 781
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->setH5ShowOptionMenuFlag()V

    .line 783
    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_7

    .line 784
    :cond_1
    const-string v2, "setOptionMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "setOptionMenuItem"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 786
    :cond_2
    const-string v2, "hideOptionMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 787
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 788
    invoke-direct {p0, v4, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_7

    .line 790
    :cond_3
    const-string v2, "showBackButton"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 791
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_7

    .line 792
    :cond_4
    const-string v2, "hideBackButton"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 793
    invoke-direct {p0, v4, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_7

    .line 794
    :cond_5
    const-string v2, "setTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "true"

    const-string v6, "success"

    if-eqz v2, :cond_6

    .line 795
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d(Lcom/alibaba/fastjson/JSONObject;)V

    .line 796
    invoke-interface {p2, v6, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 797
    :cond_6
    const-string v2, "readTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 798
    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Z

    goto/16 :goto_7

    .line 800
    :cond_7
    const-string v2, "setTitleSegControl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 801
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alibaba/fastjson/JSONObject;)V

    .line 802
    invoke-interface {p2, v6, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 803
    :cond_8
    const-string v2, "showTips"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 804
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 806
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 805
    const-string v6, "tip_content"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 804
    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebulacore/view/H5Tip;->showTip(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 807
    :cond_9
    const-string v2, "h5PageShowClose"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->HIDE_CLOSE_BUTTON:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_5

    .line 810
    :cond_a
    const-string v2, "showTitleLoading"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 811
    invoke-direct {p0, v3, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_7

    .line 812
    :cond_b
    const-string v2, "hideTitleLoading"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 813
    invoke-direct {p0, v4, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_7

    .line 814
    :cond_c
    const-string v2, "setToolbarMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "showPopMenu"

    if-nez v2, :cond_1e

    .line 815
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_2

    .line 837
    :cond_d
    const-string v2, "setTitleColor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_f

    .line 838
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v2

    .line 839
    .local v4, "result":Z
    if-eqz v2, :cond_e

    .line 840
    invoke-interface {p2, v6, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 842
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v5, v7

    .line 843
    .local v5, "info":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v2

    const-string v6, "error"

    const-string v7, "2"

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-interface {p2, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 847
    .end local v5    # "info":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v3

    .line 848
    .end local v4    # "result":Z
    :cond_f
    const-string v2, "getTitleColor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 849
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_7

    .line 850
    :cond_10
    const-string v2, "h5PageErrorForTitlebar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 851
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v2, :cond_25

    .line 853
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->isInWallet()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 854
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e()V

    .line 855
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c()V

    .line 856
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->r:Z

    .line 857
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_25

    .line 859
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->x:Z

    goto/16 :goto_7

    .line 863
    :cond_11
    const-string v2, "setBarBottomLineColor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "H5NavigationBar"

    if-eqz v2, :cond_13

    .line 864
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 865
    const-string v2, "color"

    const/high16 v4, -0x1000000

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 867
    .local v2, "color":I
    or-int/2addr v2, v4

    .line 868
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "setBarBottomLineColor color is "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 871
    .end local v2    # "color":I
    :cond_12
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_7

    .line 872
    :cond_13
    const-string v2, "setTransparentTitle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 873
    const-string v2, "transparentTitle"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 874
    .local v4, "transparentTitleType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "setTransparentTitle type "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    move-object v8, v7

    .line 876
    .local v8, "startParams":Landroid/os/Bundle;
    move-object v8, v6

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 877
    .local v6, "originType":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setTransparentTitle originType "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->w:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v2, :cond_14

    .line 880
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->B:Z

    .line 881
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 882
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->w:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 884
    :cond_14
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 885
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_15

    .line 886
    const-string v5, "h5_titlebar_transstate_change"

    invoke-interface {v2, v5, v7}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 888
    .end local v4    # "transparentTitleType":Ljava/lang/String;
    .end local v6    # "originType":Ljava/lang/String;
    .end local v8    # "startParams":Landroid/os/Bundle;
    :cond_15
    goto/16 :goto_7

    :cond_16
    const-string v2, "optionMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 890
    const-string v2, "fromMenu"

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 893
    .local v2, "fromMenu":Z
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v5, v7

    .line 894
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    const-string v6, "data"

    invoke-virtual {v4, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v4

    invoke-interface {v4, v0, v5, v7}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 898
    if-eqz v2, :cond_18

    .line 900
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getH5SharePanelProvider()Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 901
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->p:Z

    if-nez v4, :cond_18

    .line 902
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getH5SharePanelProvider()Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->q:Z

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;->showSharePanel(Lcom/alipay/mobile/h5container/api/H5Page;Z)V

    goto/16 :goto_7

    .line 905
    :cond_17
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v6}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getPopAnchor()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->showMenu(Landroid/view/View;)V

    .line 908
    .end local v2    # "fromMenu":Z
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_18
    goto/16 :goto_7

    :cond_19
    const-string v2, "showDisClaimer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 909
    const-string v2, "mode"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    move v5, v4

    .line 910
    .local v5, "mode":I
    move v5, v2

    if-eq v2, v3, :cond_1b

    const/4 v2, 0x2

    if-ne v5, v2, :cond_1a

    goto :goto_1

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    :goto_1
    move v2, v3

    .line 911
    .local v2, "show":Z
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showTitleDisclaimer(Z)V

    .line 912
    if-eqz v2, :cond_1c

    .line 913
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 915
    :cond_1c
    return v4

    .line 917
    .end local v2    # "show":Z
    .end local v5    # "mode":I
    :cond_1d
    return v4

    .line 817
    :cond_1e
    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 818
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setIsShowPopMenu(Z)V

    .line 819
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Z

    invoke-virtual {v2, p1, v4}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    goto :goto_3

    .line 821
    :cond_1f
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setIsShowPopMenu(Z)V

    .line 822
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->H:Z

    if-eqz v2, :cond_20

    .line 823
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->clearMenuList()V

    .line 825
    :cond_20
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Z

    invoke-virtual {v2, p1, v4}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setMenu(Lcom/alipay/mobile/h5container/api/H5Event;Z)V

    .line 827
    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 828
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 829
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v2, :cond_22

    .line 830
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->getNavMenuItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->setH5MenuList(Ljava/util/List;Z)V

    goto :goto_4

    .line 833
    :cond_21
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getPopAnchor()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->showMenu(Landroid/view/View;)V

    .line 836
    :cond_22
    :goto_4
    invoke-interface {p2, v6, v5}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_7

    .line 808
    :cond_23
    :goto_5
    const-string v2, "show"

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 809
    .restart local v2    # "show":Z
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Z)V

    .line 810
    .end local v2    # "show":Z
    goto :goto_7

    .line 785
    :cond_24
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 919
    :cond_25
    :goto_7
    return v3
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11

    .line 654
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 657
    const-string v1, "h5PageStarted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "copy"

    const-string v3, "shareFriend"

    const-string v4, "H5NavigationBar"

    const-string v5, "favorites"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    .line 658
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d:Z

    .line 659
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f:Z

    .line 660
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p1

    .line 661
    const-string p2, "isTinyApp"

    invoke-static {p1, p2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    .line 662
    invoke-static {p2, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTinyWithAnimation(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 663
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {p2, v6}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showBackButton(Z)V

    .line 667
    :cond_0
    const-string p2, "appType"

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result p2

    .line 668
    const-string v1, "appId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isPublicAppId(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    if-ne p2, v0, :cond_5

    .line 671
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    const-string p2, "ppchatShare"

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 672
    const-string p1, "Share menu has been already existed, won\'t bother to add more"

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return v6

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 681
    nop

    .line 682
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 683
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    .line 684
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 682
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 685
    :cond_3
    :goto_1
    nop

    .line 686
    goto :goto_2

    .line 682
    :cond_4
    const/4 p2, 0x0

    .line 690
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    new-instance v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_menu_share:I

    .line 691
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_share_friend:I

    .line 693
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 690
    invoke-virtual {v0, p2, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V

    .line 698
    :cond_5
    goto/16 :goto_5

    :cond_6
    const-string v1, "h5PageReceivedTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 699
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_5

    .line 700
    :cond_7
    const-string v1, "h5PageFinished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 701
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->q:Z

    .line 702
    const-string p2, "pageUpdated"

    invoke-static {p1, p2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result p2

    .line 703
    if-eqz p2, :cond_8

    .line 704
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(Lcom/alibaba/fastjson/JSONObject;)V

    .line 706
    :cond_8
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 707
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 708
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->d()Z

    move-result p1

    if-nez p1, :cond_9

    .line 709
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 712
    :cond_9
    iget-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->r:Z

    if-nez p1, :cond_a

    .line 714
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "hasH5Pkg"

    invoke-static {p1, p2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    .line 715
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "transTitle appid "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appVersion "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hasPackage "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    const-string p2, "custom"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 719
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f()V

    .line 720
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b()V

    .line 724
    :cond_a
    goto/16 :goto_5

    :cond_b
    const-string p1, "showFavorites"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "true"

    const-string v8, "status"

    if-eqz p1, :cond_10

    .line 725
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {p1, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 726
    const-string p1, "favorites menu has been already existed"

    invoke-static {v4, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return v6

    .line 729
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 731
    nop

    .line 732
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    goto :goto_3

    .line 732
    :cond_d
    const-string v0, ""

    .line 737
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 738
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    new-instance v4, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v9, Lcom/alipay/mobile/nebula/R$string;->h5_menu_favorites:I

    .line 739
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_favorites:I

    .line 741
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v4, v9, v5, v10, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 738
    invoke-virtual {v2, v7, v4}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V

    .line 743
    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 744
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    new-instance v2, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_menu_favorites:I

    .line 745
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_favorites:I

    .line 747
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v2, v3, v5, p1, v7}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 744
    invoke-virtual {v0, v6, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->addMenu(ILcom/alipay/mobile/nebula/view/H5NavMenuItem;)V

    .line 750
    :cond_f
    invoke-interface {p2, v8, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_4

    .line 751
    :cond_10
    const-string p1, "hideFavorites"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 752
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {p1, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->hasMenu(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 753
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {p1, v5}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->removeMenu(Ljava/lang/String;)V

    .line 754
    invoke-interface {p2, v8, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_5

    .line 751
    :cond_11
    :goto_4
    nop

    .line 757
    :cond_12
    :goto_5
    return v7
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 620
    const-string v0, "showTitlebar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v0, "hideTitlebar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v0, "showTitleLoading"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string v0, "hideTitleLoading"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string v0, "showOptionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string v0, "hideOptionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v0, "showBackButton"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string v0, "hideBackButton"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string v0, "setOptionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v0, "setOptionMenuItem"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 630
    const-string v0, "setTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string v0, "readTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v0, "setTitleSegControl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v0, "setToolbarMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string v0, "showPopMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v0, "showTips"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string v0, "h5PageShowClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v0, "showFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v0, "hideFavorites"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v0, "setTitleColor"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v0, "getTitleColor"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v0, "optionMenu"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v0, "h5PageErrorForTitlebar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v0, "setBarBottomLineColor"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string v0, "setTransparentTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 648
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->HIDE_CLOSE_BUTTON:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v0, "showDisClaimer"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 763
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->releaseViewList()V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v0, :cond_1

    .line 767
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;->onRelease()V

    .line 769
    :cond_1
    return-void
.end method

.method public setContentBgViewColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBackgroundColor(I)V

    .line 1224
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1226
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5SearchView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/search/H5SearchView;

    const/4 v1, 0x0

    .line 1227
    .local v1, "h5SearchViewProvider":Lcom/alipay/mobile/nebula/search/H5SearchView;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/search/H5SearchView;->setSearchBarColor(I)V

    .line 1231
    .end local v1    # "h5SearchViewProvider":Lcom/alipay/mobile/nebula/search/H5SearchView;
    :cond_0
    return-void
.end method

.method public setHdivider(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1234
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    .line 1235
    return-void
.end method

.method public setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 18

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->F:Z

    .line 222
    iput-object v1, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 223
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V

    .line 224
    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->u:Z

    if-eqz v3, :cond_0

    .line 225
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/search/H5InputListen;

    .line 226
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;

    invoke-direct {v5, v1}, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->i:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 230
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->k:Lcom/alipay/mobile/nebulacore/view/H5NavMenu;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavMenu;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 232
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 233
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getOptionMenuContainer()Landroid/view/View;

    move-result-object v3

    .line 234
    if-eqz v3, :cond_1

    .line 235
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_1
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->G:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Landroid/content/Context;)V

    .line 240
    :cond_2
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 241
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 244
    const-string v5, ""

    const-string v6, "default"

    const-string v7, "H5NavigationBar"

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    const-string v9, "barButtonTheme"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->l:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    if-eqz v10, :cond_4

    .line 245
    invoke-static {v3, v9, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "set bar button theme "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 249
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToBlueTheme()V

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h()V

    .line 251
    iput-boolean v8, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->I:Z

    goto :goto_0

    .line 252
    :cond_3
    const-string v10, "light"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 253
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToWhiteTheme()V

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g()V

    .line 255
    iput-boolean v8, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->I:Z

    .line 259
    :cond_4
    :goto_0
    const-string v9, "showOptionMenu"

    invoke-static {v3, v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    .line 261
    iget-boolean v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->B:Z

    if-nez v10, :cond_5

    .line 262
    invoke-direct {v0, v9}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Z)V

    .line 264
    :cond_5
    const-string v9, "readTitle"

    invoke-static {v3, v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->m:Z

    .line 266
    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(Landroid/os/Bundle;)V

    .line 268
    const-string v9, "showTitleBar"

    invoke-static {v3, v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    .line 270
    if-nez v9, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->isInWallet()Z

    move-result v9

    if-nez v9, :cond_6

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a()V

    .line 273
    :cond_6
    const-string v9, "showTitleLoading"

    invoke-static {v3, v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    .line 275
    const/4 v10, 0x0

    invoke-direct {v0, v9, v10}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 279
    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    .line 280
    if-eq v5, v8, :cond_7

    const/4 v9, 0x2

    if-ne v5, v9, :cond_8

    .line 281
    :cond_7
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v5, v8}, Lcom/alipay/mobile/nebula/view/H5TitleView;->showTitleDisclaimer(Z)V

    .line 282
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v11, 0x43480000    # 200.0f

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 285
    :cond_8
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    .line 286
    const-string v5, "custom"

    const-string v9, "auto"

    const-string v11, "titleColor"

    const-string v12, "backBtnTextColor"

    const-string v13, "backBtnImage"

    const/high16 v14, -0x1000000

    if-eqz v3, :cond_e

    const-string v15, "transparentTitle"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 287
    invoke-static {v3, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    .line 288
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 289
    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    const-string v10, "always"

    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    .line 290
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    .line 291
    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 292
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 293
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 294
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 295
    nop

    .line 296
    invoke-static {v3, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 297
    nop

    .line 298
    invoke-static {v3, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v15

    .line 299
    invoke-static {v3, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    .line 300
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 301
    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    if-ne v15, v14, :cond_c

    if-ne v4, v14, :cond_c

    .line 304
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    goto :goto_3

    .line 306
    :cond_c
    iput-boolean v8, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    .line 310
    :cond_d
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "transTitle is "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_e
    const-string v4, "titleBarColor"

    invoke-static {v3, v4, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v10

    .line 314
    or-int/2addr v10, v14

    .line 315
    const/4 v15, -0x1

    if-eqz v3, :cond_10

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 317
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setContentBgViewColor(I)V

    .line 318
    if-eq v10, v15, :cond_f

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->g()V

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f()V

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b()V

    goto :goto_4

    .line 323
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h()V

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e()V

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c()V

    .line 328
    :cond_10
    :goto_4
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getBackgroundColor()I

    move-result v4

    .line 329
    or-int/2addr v4, v14

    .line 330
    iget-boolean v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->o:Z

    const-string v17, "#C6C8C9"

    if-eqz v10, :cond_1a

    .line 331
    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 333
    nop

    .line 334
    const-string v6, "scrollDistance"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->y:I

    .line 335
    div-int/lit16 v10, v6, 0xff

    .line 336
    if-nez v10, :cond_11

    .line 337
    const/4 v10, 0x1

    .line 339
    :cond_11
    iput v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->A:I

    .line 340
    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    iput v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->z:I

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "transparentTitleBar finalMaxScrollHeight is "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->y:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", switchThemePoint is "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->z:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->x:Z

    .line 344
    iget v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->y:I

    iget v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->A:I

    invoke-direct {v0, v6, v10, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(IIZ)V

    .line 345
    iget v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->z:I

    invoke-direct {v0, v4, v6, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(IIZ)V

    .line 346
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v6

    iput v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->C:I

    .line 347
    nop

    .line 348
    const-string v6, "transparentTitleTextAuto"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    const-string v10, "YES"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 349
    iput-boolean v8, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->E:Z

    goto :goto_5

    .line 351
    :cond_12
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->E:Z

    .line 353
    goto :goto_5

    .line 355
    :cond_13
    const/4 v6, 0x0

    iput v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    .line 356
    iput-boolean v8, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->x:Z

    .line 357
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->E:Z

    .line 359
    :goto_5
    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v6, :cond_14

    .line 360
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v6}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getHdividerInTitle()Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    .line 362
    if-eqz v6, :cond_14

    .line 363
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v10, "hasH5Pkg"

    invoke-static {v6, v10, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 368
    if-eq v4, v15, :cond_15

    .line 369
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v5, :cond_19

    .line 370
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7

    .line 374
    :cond_15
    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v10, :cond_17

    .line 375
    iget-boolean v11, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->H:Z

    if-eqz v11, :cond_16

    goto :goto_6

    .line 376
    :cond_16
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v4, v14

    .line 375
    :goto_6
    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 378
    :cond_17
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "transTitle appid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", appVersion "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hasPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    if-eqz v6, :cond_18

    .line 382
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->f()V

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b()V

    goto :goto_7

    .line 387
    :cond_18
    iget-boolean v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->B:Z

    if-nez v4, :cond_19

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e()V

    .line 389
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c()V

    .line 395
    :cond_19
    :goto_7
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->n:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    goto/16 :goto_a

    .line 399
    :cond_1a
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    .line 400
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getHdividerInTitle()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 401
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getHdividerInTitle()Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    .line 405
    :cond_1b
    if-eq v4, v15, :cond_1c

    .line 406
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v5, :cond_1f

    .line 407
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_9

    .line 410
    :cond_1c
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v5, :cond_1e

    .line 411
    iget-boolean v7, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->H:Z

    if-eqz v7, :cond_1d

    goto :goto_8

    .line 412
    :cond_1d
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v4, v14

    .line 411
    :goto_8
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 414
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->e()V

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c()V

    .line 417
    :cond_1f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setTitleAlpha()V

    .line 419
    iput-boolean v8, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->x:Z

    .line 420
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->E:Z

    .line 423
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 424
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 425
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 426
    nop

    .line 427
    invoke-static {v3, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    nop

    .line 429
    invoke-static {v3, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    .line 430
    invoke-static {v3, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v7

    .line 431
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_20

    if-eq v5, v14, :cond_20

    if-eq v7, v14, :cond_20

    .line 434
    iput-boolean v8, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->F:Z

    .line 435
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBackCloseBtnImage(Ljava/lang/String;)V

    .line 436
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v4, v7}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleTxtColor(I)V

    .line 444
    :cond_20
    :goto_a
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v4, :cond_22

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/Nebula;->useH5StatusBar(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 446
    const/high16 v4, 0x4f000000

    .line 448
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;

    .line 449
    if-eqz v5, :cond_21

    .line 450
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5TransStatusBarColorProvider;->getColor()I

    move-result v4

    .line 453
    :cond_21
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v5, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->openTranslucentStatusBarSupport(I)V

    .line 455
    :cond_22
    iput-boolean v2, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->B:Z

    .line 458
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->s:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "isTinyApp"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 459
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "isPrerender"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 460
    :cond_23
    nop

    .line 461
    invoke-interface/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "sessionId"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_24

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 464
    nop

    .line 465
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->getSessionPagesWithOutPrerender(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    goto :goto_b

    .line 469
    :cond_24
    const/4 v1, 0x0

    :goto_b
    if-eq v1, v8, :cond_25

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "closeAllWindow"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 470
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "redirectFromHomepage"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 471
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "fragmentType"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "subtab"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 472
    :cond_25
    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c(ZLcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 477
    :cond_26
    invoke-direct {v0, v3}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->b(Landroid/os/Bundle;)V

    .line 478
    return-void
.end method

.method public setTitleAlpha()V
    .locals 3

    .line 1195
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setBackgroundAlphaValue(I)V

    .line 1196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1197
    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->v:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1200
    iget v1, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    const v2, 0x3e19999a    # 0.15f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 1201
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1203
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1207
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->E:Z

    if-eqz v0, :cond_4

    .line 1208
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    if-eqz v0, :cond_4

    .line 1209
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getMainTitleView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1210
    .local v2, "mainTitle":Landroid/widget/TextView;
    move-object v2, v0

    if-eqz v0, :cond_3

    .line 1211
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1213
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->h:Lcom/alipay/mobile/nebula/view/H5TitleView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 1214
    .local v1, "subTitle":Landroid/widget/TextView;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 1215
    iget v0, p0, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->D:F

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1219
    .end local v1    # "subTitle":Landroid/widget/TextView;
    .end local v2    # "mainTitle":Landroid/widget/TextView;
    :cond_4
    return-void
.end method
