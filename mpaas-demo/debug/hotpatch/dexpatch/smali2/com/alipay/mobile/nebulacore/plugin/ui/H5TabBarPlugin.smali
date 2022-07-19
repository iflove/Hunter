.class public Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5TabBarPlugin.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

.field private b:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 61
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .locals 2
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 641
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 642
    return-object v0

    .line 644
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-nez v1, :cond_1

    .line 645
    return-object v0

    .line 647
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    return-object p1
.end method

.method private static a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;I)Ljava/lang/String;
    .locals 4
    .param p0, "tabBar"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "index"    # I

    .line 652
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_tabhost:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .line 653
    .local v1, "tabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    if-ltz p1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getTabSize()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 654
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 656
    :cond_0
    return-object v0

    .line 658
    .end local v1    # "tabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5TabBarPlugin"

    const-string v3, "index to tag error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-eq v0, v1, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-nez v0, :cond_2

    .line 124
    return-void

    .line 126
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 127
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;)V

    .line 145
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    .line 146
    return-void

    .line 121
    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 159
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 160
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 164
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v0, v1

    if-nez v1, :cond_1

    .line 165
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 166
    return-void

    .line 168
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v1, :cond_2

    goto :goto_0

    .line 172
    :cond_2
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 173
    .local v1, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Z)V

    .line 174
    return-void

    .line 169
    .end local v1    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    :cond_3
    :goto_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 170
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)V
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p4, "color"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .param p5, "selectedColor"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .param p6, "backgroundColor"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .param p7, "borderStyleColor"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 515
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v0

    const/4 v8, 0x0

    move-object v9, v8

    .line 516
    .local v9, "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v9, v0

    if-nez v0, :cond_0

    .line 517
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 518
    return-void

    .line 521
    :cond_0
    :try_start_0
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v0

    sget v10, Lcom/alipay/mobile/nebula/R$id;->h5_tabhost:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .line 522
    .local v0, "tabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    sget-object v10, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-eq v6, v10, :cond_1

    .line 523
    iget v10, v6, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    invoke-static {v0, v9, v10}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/nebula/view/H5TabbarLayout;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;I)V

    .line 525
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 526
    .local v8, "borderView":Landroid/view/View;
    move-object v8, v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 527
    sget-object v10, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-eq v7, v10, :cond_2

    .line 528
    iget v10, v7, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 531
    :cond_2
    sget-object v10, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-ne v4, v10, :cond_3

    sget-object v10, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-ne v5, v10, :cond_3

    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    sget-object v11, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-ne v10, v11, :cond_3

    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    sget-object v11, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-ne v10, v11, :cond_3

    .line 534
    sget-object v10, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v3, v2, v10}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 535
    return-void

    .line 537
    :cond_3
    sget-object v10, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-eq v4, v10, :cond_4

    iget v10, v4, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    goto :goto_0

    :cond_4
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iget v10, v10, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    .line 538
    .local v10, "colorValue":I
    :goto_0
    sget-object v11, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-eq v5, v11, :cond_5

    iget v11, v5, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    goto :goto_1

    :cond_5
    iget-object v11, v1, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    iget v11, v11, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->value:I

    .line 540
    .local v11, "selectedColorValue":I
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getTabSize()I

    move-result v13

    .local v13, "size":I
    :goto_2
    if-ge v12, v13, :cond_6

    .line 541
    invoke-virtual {v0, v12}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 542
    sget v15, Lcom/alipay/mobile/nebula/R$id;->h5_tabbaritem_txticon:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 544
    .local v14, "iconArea":Landroid/widget/TextView;
    nop

    .line 545
    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->generateTextColor(II)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 546
    .local v15, "textState":Landroid/content/res/ColorStateList;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 540
    .end local v14    # "iconArea":Landroid/widget/TextView;
    .end local v15    # "textState":Landroid/content/res/ColorStateList;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 548
    .end local v12    # "i":I
    .end local v13    # "size":I
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "tabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    .end local v8    # "borderView":Landroid/view/View;
    .end local v10    # "colorValue":I
    .end local v11    # "selectedColorValue":I
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "H5TabBarPlugin"

    const-string v10, "set tab bar style error"

    invoke-static {v8, v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v3, v2, v8}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Z)V
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "h5Activity"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p4, "visible"    # Z

    .line 192
    invoke-virtual {p3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 193
    .local v2, "container":Landroid/view/View;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 195
    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v0

    move-object v3, v1

    .line 198
    .local v3, "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v7, v0

    .end local v3    # "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .local v7, "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 200
    return-void

    .line 202
    :cond_1
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v0

    .line 203
    .local v1, "tabBarContent":Landroid/view/View;
    move-object v3, v0

    .end local v1    # "tabBarContent":Landroid/view/View;
    .local v3, "tabBarContent":Landroid/view/View;
    if-nez v0, :cond_2

    .line 204
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 205
    return-void

    .line 207
    :cond_2
    const-string v0, "animation"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 209
    return-void

    .line 211
    :cond_3
    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->contains(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    const-class v1, Ljava/lang/Boolean;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->isValueAssignableFrom(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 213
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 214
    return-void

    .line 217
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v8

    .line 219
    .local v8, "animation":Z
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "animationType"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "animationType":Ljava/lang/String;
    new-instance v10, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;

    move-object v0, v10

    move-object v1, p0

    move v4, p4

    move v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Landroid/view/View;Landroid/view/View;ZZLjava/lang/String;)V

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 319
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 320
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTabBar"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5TabBarPlugin"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-interface {p0, v1, p1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 638
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebula/view/H5TabbarLayout;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;I)V
    .locals 7
    .param p0, "tabHost"    # Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    .param p1, "tabBar"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p2, "backgroundColor"    # I

    .line 620
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 622
    .local v0, "alpha":Z
    :goto_0
    iget-object v2, p1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    move-object v4, v3

    .line 623
    .local v4, "activity":Landroid/app/Activity;
    move-object v4, v2

    if-eqz v2, :cond_2

    .line 624
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {v4, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v3

    .line 625
    .local v5, "fragmentContent":Landroid/view/View;
    move-object v5, v2

    if-eqz v2, :cond_2

    .line 626
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 627
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v3, v2

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontabcontainer:I

    :goto_1
    invoke-virtual {v2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 628
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "fragmentContent":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setBackgroundColor(I)V

    .line 633
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "x3"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p4, "x4"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .param p5, "x5"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .param p6, "x6"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .param p7, "x7"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "action"    # Ljava/lang/String;

    .line 80
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 82
    return v1

    .line 84
    :cond_0
    const-string v0, "showTabBar"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 86
    return v1

    .line 87
    :cond_1
    const-string v0, "hideTabBar"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 89
    return v1

    .line 90
    :cond_2
    const-string v0, "setTabBarBadge"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 92
    return v1

    .line 93
    :cond_3
    const-string v0, "removeTabBarBadge"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 95
    return v1

    .line 96
    :cond_4
    const-string v0, "showTabBarRedDot"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->e(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 98
    return v1

    .line 99
    :cond_5
    const-string v0, "hideTabBarRedDot"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->f(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 101
    return v1

    .line 102
    :cond_6
    const-string v0, "setTabBarStyle"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->g(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 104
    return v1

    .line 105
    :cond_7
    const-string v0, "setTabBarItem"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->h(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 107
    return v1

    .line 108
    :cond_8
    const-string v0, "redDot"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 109
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 110
    return v1

    .line 112
    :cond_9
    return v1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    return-object p1
.end method

.method private static b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 6
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 149
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "redDot"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 153
    .local v2, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    return-void

    .line 150
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 182
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v0, v1

    if-nez v1, :cond_1

    .line 183
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 184
    return-void

    .line 186
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 187
    .local v1, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Z)V

    .line 188
    return-void
.end method

.method private static c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 10
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 323
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 324
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 325
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v2, v0

    .line 328
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 329
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 330
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v3, v0

    .line 333
    .local v3, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const-string v4, "text"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v0

    .line 334
    .local v4, "text":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 336
    return-void

    .line 338
    :cond_2
    const-string v1, "index"

    const/4 v5, -0x1

    invoke-static {v3, v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v6, 0x0

    .line 339
    .local v6, "index":I
    move v6, v1

    if-ne v1, v5, :cond_3

    .line 340
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 341
    return-void

    .line 343
    :cond_3
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v1

    move-object v5, v0

    .line 344
    .local v5, "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v5, v1

    if-nez v1, :cond_4

    .line 345
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 346
    return-void

    .line 348
    :cond_4
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v0

    .line 349
    .local v7, "tag":Ljava/lang/String;
    move-object v7, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 350
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 351
    return-void

    .line 353
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 354
    .local v0, "actionParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v1

    const-string v8, "actionType"

    const-string v9, "redDot"

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "tag"

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v0, v9, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)V

    .line 358
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 359
    return-void
.end method

.method private static d(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 8
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 362
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 363
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 364
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v2, v0

    .line 367
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 368
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 369
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 372
    const-string v3, "index"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    .line 373
    .local v3, "index":I
    move v3, v1

    if-ne v1, v4, :cond_2

    .line 374
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 375
    return-void

    .line 377
    :cond_2
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v1

    move-object v4, v0

    .line 378
    .local v4, "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v4, v1

    if-nez v1, :cond_3

    .line 379
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 380
    return-void

    .line 382
    :cond_3
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    .line 383
    .local v5, "tag":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 385
    return-void

    .line 387
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 388
    .local v0, "actionParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v1

    const-string v6, "actionType"

    const-string v7, "redDot"

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v1, "tag"

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v1, "-1"

    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)V

    .line 392
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 393
    return-void
.end method

.method private static e(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 8
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 396
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 397
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 398
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v2, v0

    .line 401
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 402
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 403
    return-void

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 406
    const-string v3, "index"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    .line 407
    .local v3, "index":I
    move v3, v1

    if-ne v1, v4, :cond_2

    .line 408
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 409
    return-void

    .line 411
    :cond_2
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v1

    move-object v4, v0

    .line 412
    .local v4, "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v4, v1

    if-nez v1, :cond_3

    .line 413
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 414
    return-void

    .line 416
    :cond_3
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    .line 417
    .local v5, "tag":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 419
    return-void

    .line 421
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 422
    .local v0, "actionParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v1

    const-string v6, "actionType"

    const-string v7, "redDot"

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v1, "tag"

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v1, "0"

    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)V

    .line 426
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 427
    return-void
.end method

.method private static f(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 430
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->d(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 431
    return-void
.end method

.method private g(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 434
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v0, 0x0

    if-nez v9, :cond_0

    .line 435
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 436
    return-void

    .line 438
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v2, v0

    .line 439
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v1

    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-nez v1, :cond_1

    .line 440
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 441
    return-void

    .line 443
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v2, v0

    .line 444
    .local v2, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v11, v1

    .end local v2    # "eventParams":Lcom/alibaba/fastjson/JSONObject;
    .local v11, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "color"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 446
    return-void

    .line 448
    :cond_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 449
    .local v1, "color":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    invoke-static {v9, v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->contains(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    invoke-static {v11, v2}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils;->getColor(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    move-result-object v2

    .line 451
    move-object v1, v2

    sget-object v3, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-ne v2, v3, :cond_3

    .line 452
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 453
    return-void

    .line 451
    :cond_3
    move-object v12, v1

    goto :goto_0

    .line 449
    :cond_4
    move-object v12, v1

    .line 456
    .end local v1    # "color":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .local v12, "color":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    :goto_0
    const-string v1, "selectedColor"

    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 457
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 458
    return-void

    .line 460
    :cond_5
    sget-object v2, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 461
    .local v2, "selectedColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->contains(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 462
    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils;->getColor(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    move-result-object v1

    .line 463
    move-object v2, v1

    sget-object v3, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-ne v1, v3, :cond_6

    .line 464
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 465
    return-void

    .line 463
    :cond_6
    move-object v13, v2

    goto :goto_1

    .line 461
    :cond_7
    move-object v13, v2

    .line 468
    .end local v2    # "selectedColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .local v13, "selectedColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    :goto_1
    const-string v1, "backgroundColor"

    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 469
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 470
    return-void

    .line 472
    :cond_8
    sget-object v2, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 473
    .local v2, "backgroundColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->contains(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 474
    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils;->getColor(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    move-result-object v1

    .line 475
    move-object v2, v1

    sget-object v3, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    if-ne v1, v3, :cond_9

    .line 476
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 477
    return-void

    .line 475
    :cond_9
    move-object v14, v2

    goto :goto_2

    .line 473
    :cond_a
    move-object v14, v2

    .line 480
    .end local v2    # "backgroundColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .local v14, "backgroundColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    :goto_2
    const-string v1, "borderStyle"

    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 481
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 482
    return-void

    .line 484
    :cond_b
    sget-object v2, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;->INVALID_COLOR:Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 485
    .local v2, "borderStyleColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    invoke-static {v11, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->contains(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 486
    invoke-static {v11, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v0, "borderStyle":Ljava/lang/String;
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 488
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 489
    return-void

    .line 491
    :cond_c
    const-string v1, "white"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 492
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    const v3, -0x70707

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;-><init>(I)V

    move-object v2, v1

    move-object v15, v2

    goto :goto_3

    .line 493
    :cond_d
    const-string v1, "black"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 494
    new-instance v1, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    const v3, -0x545452

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;-><init>(I)V

    move-object v2, v1

    move-object v15, v2

    goto :goto_3

    .line 496
    :cond_e
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v9, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 497
    return-void

    .line 485
    .end local v0    # "borderStyle":Ljava/lang/String;
    :cond_f
    move-object v15, v2

    .line 500
    .end local v2    # "borderStyleColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    .local v15, "borderStyleColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    :goto_3
    move-object v8, v15

    .line 501
    .local v8, "borderColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    move-object v5, v12

    .line 502
    .local v5, "fColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    move-object v6, v13

    .line 503
    .local v6, "fSelectedColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    move-object v7, v14

    .line 504
    .local v7, "fBackgroundColor":Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;
    new-instance v16, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)V

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method private static h(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 13
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 556
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 557
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 558
    return-void

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v2, v0

    .line 561
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 562
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 563
    return-void

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v3, v0

    .line 566
    .local v3, "eventParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const-string v4, "index"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x0

    .line 567
    .local v4, "index":I
    move v4, v1

    if-ne v1, v5, :cond_2

    .line 568
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 569
    return-void

    .line 571
    :cond_2
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v1

    move-object v5, v0

    .line 572
    .local v5, "tabBar":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    move-object v5, v1

    if-nez v1, :cond_3

    .line 573
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 574
    return-void

    .line 576
    :cond_3
    invoke-static {v5, v4}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v0

    .line 577
    .local v6, "tag":Ljava/lang/String;
    move-object v6, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 578
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 579
    return-void

    .line 581
    :cond_4
    const-string v1, "text"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 582
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 583
    return-void

    .line 585
    :cond_5
    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    .line 586
    .local v8, "text":Ljava/lang/String;
    move-object v8, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 587
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 588
    return-void

    .line 590
    :cond_6
    const-string v7, "iconPath"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 591
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 592
    return-void

    .line 594
    :cond_7
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v9, v0

    .line 595
    .local v9, "iconPath":Ljava/lang/String;
    move-object v9, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 596
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 597
    return-void

    .line 599
    :cond_8
    const-string v7, "selectedIconPath"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebulacore/util/TinyAppEventUtils;->containsNull(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 600
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 601
    return-void

    .line 603
    :cond_9
    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v10, v0

    .line 604
    .local v10, "selectedIconPath":Ljava/lang/String;
    move-object v10, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 605
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 606
    return-void

    .line 608
    :cond_a
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 609
    .local v0, "actionParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v0, v7

    const-string v11, "actionType"

    const-string v12, "icon"

    invoke-virtual {v7, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v7, "tag"

    invoke-virtual {v0, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-virtual {v0, v12, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v7, "activeIcon"

    invoke-virtual {v0, v7, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-virtual {v0, v1, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alibaba/fastjson/JSONObject;)V

    .line 615
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 616
    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 70
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const-string v1, "setTabBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 73
    nop

    .line 74
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 73
    const-string v2, "actionType"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 76
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 65
    const-string v0, "setTabBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 66
    return-void
.end method
