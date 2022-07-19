.class public Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:I

.field private e:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Z)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isTransparent"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->e:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    .line 37
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 38
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a:Landroid/view/View;

    .line 40
    nop

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    .line 42
    invoke-static {v1, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "resourceId":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v1    # "resourceId":I
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5AndroidBug5497Workaround"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;-><init>(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    return-void
.end method

.method private a()I
    .locals 3

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 105
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;
    .param p1, "x1"    # Z

    .line 12
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "isTransparent"    # Z

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 64
    .local v2, "usableHeightNow":I
    move v2, v0

    iget v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->b:I

    if-eq v0, v3, :cond_4

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 66
    .local v1, "usableHeightSansKeyboard":I
    move v1, v0

    sub-int/2addr v0, v2

    .line 68
    .local v0, "heightDifference":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "heightDifference "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " usableHeightSansKeyboard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " statusBarHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hasNavigationBar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->e:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    .line 72
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->hasNavigationBar()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " NavigationBarHeight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->e:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    .line 73
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->getNavigationBarHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v4, "H5AndroidBug5497Workaround"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    div-int/lit8 v3, v1, 0x4

    if-le v0, v3, :cond_1

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 79
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v1, v0

    iget v5, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->d:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v1, v0

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->e:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->e:Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->getNavigationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->d:I

    sub-int v4, v1, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 97
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 98
    iput v2, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->b:I

    .line 100
    .end local v0    # "heightDifference":I
    .end local v1    # "usableHeightSansKeyboard":I
    :cond_4
    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isTransparent"    # Z

    .line 21
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5AndroidBug5497Workaround"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
