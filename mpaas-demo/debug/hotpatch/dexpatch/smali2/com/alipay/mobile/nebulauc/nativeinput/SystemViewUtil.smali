.class public Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;
.super Ljava/lang/Object;
.source "SystemViewUtil.java"


# static fields
.field private static final NAVIGATION_GESTURE:Ljava/lang/String; = "navigation_gesture_on"

.field private static final NAVIGATION_GESTURE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SystemViewUtil"

.field private static sScreenHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->sScreenHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceHasNavigationBar()Z
    .locals 9

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "haveNav":Z
    :try_start_0
    const-string v1, "android.view.WindowManagerGlobal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    .local v1, "windowManagerGlobalClass":Ljava/lang/Class;
    const-string v2, "getWindowManagerService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 64
    .local v2, "getWmServiceMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    const/4 v5, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 67
    .local v5, "iWindowManager":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 68
    .local v6, "iWindowManagerClass":Ljava/lang/Class;
    const-string v7, "hasNavigationBar"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 69
    .local v7, "hasNavBarMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 73
    .end local v1    # "windowManagerGlobalClass":Ljava/lang/Class;
    .end local v2    # "getWmServiceMethod":Ljava/lang/reflect/Method;
    .end local v5    # "iWindowManager":Ljava/lang/Object;
    .end local v6    # "iWindowManagerClass":Ljava/lang/Class;
    .end local v7    # "hasNavBarMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    .line 30
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->deviceHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->vivoNavigationGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 37
    .local v0, "windowManager":Landroid/view/WindowManager;
    if-eqz v0, :cond_4

    .line 38
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 39
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_4

    .line 40
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 42
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    .local v4, "realHeight":I
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 45
    .local v5, "height":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 46
    .local v6, "size":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 47
    .local v7, "realSize":Landroid/graphics/Point;
    invoke-virtual {v2, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 48
    invoke-virtual {v2, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 51
    if-le v4, v5, :cond_2

    sub-int v1, v4, v5

    :cond_2
    return v1

    .line 32
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "realHeight":I
    .end local v5    # "height":I
    .end local v6    # "size":Landroid/graphics/Point;
    .end local v7    # "realSize":Landroid/graphics/Point;
    :cond_3
    :goto_0
    return v1

    .line 55
    :cond_4
    return v1
.end method

.method public static getScreenHeight()I
    .locals 9

    .line 99
    sget v0, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->sScreenHeight:I

    if-eqz v0, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "height":I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 105
    .local v2, "windowManager":Landroid/view/WindowManager;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 106
    return v3

    .line 108
    :cond_1
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 109
    .local v4, "display":Landroid/view/Display;
    const/4 v5, 0x0

    .line 111
    .local v5, "mGetRawH":Ljava/lang/reflect/Method;
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 112
    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move v0, v3

    goto :goto_0

    .line 115
    :cond_2
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawHeight"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v5, v6

    .line 116
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 120
    :goto_0
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Throwable;
    const-string v6, "SystemViewUtil"

    const-string v7, "getScreenHeight"

    invoke-static {v6, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    sput v0, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->sScreenHeight:I

    .line 122
    return v0
.end method

.method public static getStatusBarHeight()I
    .locals 5

    .line 83
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 86
    .local v1, "statusBarHeight":I
    :try_start_0
    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-static {v0, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, "resourceId":I
    if-lez v2, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 93
    .end local v2    # "resourceId":I
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SystemViewUtil"

    const-string v4, "getStatusBarHeight "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private static vivoNavigationGestureEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_gesture_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "val":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
