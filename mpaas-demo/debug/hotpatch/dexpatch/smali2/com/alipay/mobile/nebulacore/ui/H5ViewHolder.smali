.class public Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
.super Ljava/lang/Object;
.source "H5ViewHolder.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ViewHolder"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

.field private c:Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

.field private d:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

.field private e:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

.field private f:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

.field private g:Landroid/view/View;

.field private h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 11

    const-string v0, "H5ViewHolder"

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 262
    .local v1, "currentMetrics":Landroid/util/DisplayMetrics;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshView printDisplayInfo use metrics: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    const/4 v3, 0x0

    move-object v4, v3

    .line 264
    .local v4, "manager":Landroid/view/WindowManager;
    move-object v4, v2

    if-eqz v2, :cond_3

    .line 265
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 266
    .local v2, "display":Landroid/view/Display;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshView printDisplayInfo use display: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 268
    .local v5, "normalMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "refreshView printDisplayInfo use normalMetrics: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    .line 272
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 273
    .local v3, "realMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "refreshView printDisplayInfo use realMetrics: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v3    # "realMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 278
    invoke-virtual {v2}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 279
    .local v3, "displayMode":Landroid/view/Display$Mode;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "refreshView printDisplayInfo use displayMode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v3    # "displayMode":Landroid/view/Display$Mode;
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_2

    .line 283
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 284
    .local v3, "outSmallestSize":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 285
    .local v6, "outLargestSize":Landroid/graphics/Point;
    invoke-virtual {v2, v3, v6}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "refreshView printDisplayInfo use outSmallestSize: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " outLargestSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v3    # "outSmallestSize":Landroid/graphics/Point;
    .end local v6    # "outLargestSize":Landroid/graphics/Point;
    :cond_2
    const-string v6, "android.view.DisplayInfo"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 290
    .local v3, "displayInfoClz":Ljava/lang/Class;
    move-object v3, v6

    if-eqz v6, :cond_3

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDisplayInfo"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 292
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 293
    .local v7, "displayInfo":Ljava/lang/Object;
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v10

    invoke-virtual {v6, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "refreshView printDisplayInfo use displayInfo: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v1    # "currentMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayInfoClz":Ljava/lang/Class;
    .end local v4    # "manager":Landroid/view/WindowManager;
    .end local v5    # "normalMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "displayInfo":Ljava/lang/Object;
    :cond_3
    return-void

    .line 297
    :catchall_0
    move-exception v1

    .line 298
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "printDisplayInfo error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 303
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x0

    .line 304
    .local v1, "transparent":Landroid/view/animation/AlphaAnimation;
    move-object v1, v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 307
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/view/View;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void
.end method


# virtual methods
.method public getH5FontBar()Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->d:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    return-object v0
.end method

.method public getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method public getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    return-object v0
.end method

.method public getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->f:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    return-object v0
.end method

.method public getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->e:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    return-object v0
.end method

.method public getH5WebContent()Landroid/view/View;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->g:Landroid/view/View;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public refreshView()V
    .locals 15

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    const-string v1, "H5ViewHolder"

    if-nez v0, :cond_0

    .line 126
    const-string v0, "root contentView is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, "startParams":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 132
    .local v2, "transActivityFlag":Z
    const-string v3, "transparent"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    const/4 v2, 0x1

    .line 135
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "transActivityFlag "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v3

    .line 140
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->isNebulaActivity(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 144
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "createPageSence"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "H5Activity"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 145
    .local v3, "isEmbedH5Page":Z
    :goto_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "landscape"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 146
    .local v6, "isLandscape":Z
    const/4 v7, -0x1

    .line 147
    .local v7, "contentWidth":I
    if-nez v3, :cond_4

    if-nez v6, :cond_4

    const-string v8, "h5_useFixedClientWidth"

    invoke-static {v8}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "NO"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 149
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isFoldingScreen()Z

    move-result v8

    if-nez v8, :cond_4

    .line 150
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "useFixedClientWidth "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a()V

    .line 157
    const/4 v8, -0x1

    if-nez v2, :cond_11

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 159
    const-string v9, "add nav bar"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v9, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v11, v10

    .line 163
    .local v11, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v11, v9

    const/16 v12, 0xa

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v9, v12, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v11    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 169
    const-string v9, "add tab bar"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/alipay/mobile/nebula/R$dimen;->h5_bottom_height_tab:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    .line 172
    .local v9, "heightBottom":I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v12, v10

    .line 173
    .local v12, "lpBottom":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v12, v11

    const/16 v13, 0xc

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v13

    iget-object v14, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    invoke-virtual {v11, v13, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v9    # "heightBottom":I
    .end local v12    # "lpBottom":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 178
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v9

    .line 179
    .local v9, "h5WebContent":Landroid/view/View;
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v8, v11

    .line 182
    .local v8, "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x0

    .line 184
    .local v11, "transTitle":Z
    if-eqz v0, :cond_b

    .line 185
    const-string v12, "transparentTitle"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 186
    nop

    .line 187
    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v10, "transparentTitle":Ljava/lang/String;
    move-object v10, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 189
    const-string v12, "always"

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 190
    const-string v12, "auto"

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    nop

    :goto_4
    move v11, v5

    .line 191
    const-string v5, "custom"

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 192
    const-string v5, "backBtnImage"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 193
    const-string v12, "backBtnTextColor"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 194
    const-string v13, "titleColor"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 195
    nop

    .line 196
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "bbi":Ljava/lang/String;
    nop

    .line 198
    invoke-static {v0, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v12

    .line 199
    .local v12, "bbc":I
    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v13

    .line 200
    .local v13, "tc":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 201
    const-string v14, "default"

    invoke-static {v5, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_9
    const/high16 v14, -0x1000000

    if-ne v12, v14, :cond_a

    if-ne v13, v14, :cond_a

    .line 204
    const/4 v11, 0x0

    goto :goto_5

    .line 206
    :cond_a
    const/4 v11, 0x1

    .line 212
    .end local v5    # "bbi":Ljava/lang/String;
    .end local v10    # "transparentTitle":Ljava/lang/String;
    .end local v12    # "bbc":I
    .end local v13    # "tc":I
    :cond_b
    :goto_5
    if-eqz v11, :cond_c

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "transTitle:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v5, 0x6

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v12, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 217
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    .line 216
    invoke-virtual {v5, v10}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->setUrlProviderMargin(I)V

    goto :goto_6

    .line 220
    :cond_c
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 221
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->getContent()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 223
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->setUrlProviderMargin(I)V

    .line 227
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 228
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Tabbar()Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->getContent()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 232
    :cond_e
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    goto :goto_7

    .line 233
    :catchall_1
    move-exception v4

    .line 234
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :goto_7
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->isDelayRender(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a(Landroid/view/View;)V

    .line 242
    :cond_f
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkIfShowLoadingView()V

    .line 243
    .end local v8    # "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "h5WebContent":Landroid/view/View;
    .end local v11    # "transTitle":Z
    :cond_10
    return-void

    .line 245
    :cond_11
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->getContent()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 246
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5TransWebContainer()Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->getContent()Landroid/view/View;

    move-result-object v1

    .line 247
    .local v1, "h5WebContent":Landroid/view/View;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v5, "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .end local v1    # "h5WebContent":Landroid/view/View;
    .end local v5    # "lpAll":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_12
    return-void
.end method

.method public setH5FontBar(Lcom/alipay/mobile/nebulacore/view/H5FontBar;)V
    .locals 0
    .param p1, "h5FontBar"    # Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->d:Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    .line 76
    return-void
.end method

.method public setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    .locals 0
    .param p1, "h5NavBar"    # Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->b:Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    .line 59
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->h:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 114
    return-void
.end method

.method public setH5Tabbar(Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;)V
    .locals 0
    .param p1, "h5Tabbar"    # Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->c:Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    .line 68
    return-void
.end method

.method public setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V
    .locals 0
    .param p1, "h5TransWebContainer"    # Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->f:Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .line 98
    return-void
.end method

.method public setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p1, "h5WebContainer"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->e:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 85
    return-void
.end method

.method public setH5WebContent(Landroid/view/View;)V
    .locals 0
    .param p1, "h5WebContent"    # Landroid/view/View;

    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->g:Landroid/view/View;

    .line 106
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->a:Landroid/view/ViewGroup;

    .line 122
    return-void
.end method
