.class public Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;
.super Ljava/lang/Object;
.source "AUStatusBarUtil.java"


# static fields
.field private static statusBarHeight:I

.field private static titleBarAUId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->statusBarHeight:I

    .line 24
    sput v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->titleBarAUId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustTitleBarTranslucent(Landroid/app/Activity;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .line 64
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->findTitleBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->adjustTitleBarTranslucent(Landroid/app/Activity;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static adjustTitleBarTranslucent(Landroid/app/Activity;Landroid/view/View;I)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 77
    invoke-static {}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->isSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    .line 82
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v0

    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-static {p0, p2}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->setFullScreenTranslucent(Landroid/app/Activity;I)V

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return v1

    .line 78
    :cond_2
    :goto_0
    return v1
.end method

.method private static findTitleBarView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 135
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->initAUTitlebarId(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->titleBarAUId:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    sget v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->statusBarHeight:I

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-static {v0, v1, v2, v3}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "resourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->statusBarHeight:I

    .line 124
    .end local v0    # "resourceId":I
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->statusBarHeight:I

    return v0
.end method

.method private static initAUTitlebarId(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 142
    sget v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->titleBarAUId:I

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "title_bar_status_bar"

    const-string v2, "id"

    const-string v3, "com.alipay.mobile.antui"

    invoke-static {v0, v1, v2, v3}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->titleBarAUId:I

    .line 145
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->titleBarAUId:I

    return v0
.end method

.method public static isSupport()Z
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setFullScreenTranslucent(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .line 100
    invoke-static {}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    .local v1, "window":Landroid/view/Window;
    move-object v1, v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 105
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 106
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 108
    invoke-virtual {v1, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 109
    return-void

    .line 101
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    :goto_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .line 46
    invoke-static {}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    .local v1, "window":Landroid/view/Window;
    move-object v1, v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 51
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 52
    invoke-virtual {v1, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 53
    return-void

    .line 47
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    :goto_0
    return-void
.end method
