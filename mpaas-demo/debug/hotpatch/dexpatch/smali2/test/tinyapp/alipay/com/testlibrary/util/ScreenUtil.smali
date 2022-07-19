.class public Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->b()I

    .line 19
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->c()V

    .line 22
    const v0, 0x7fffffff

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a:I

    .line 24
    const/4 v0, -0x1

    sput v0, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->b:I

    .line 25
    sput v0, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->c:I

    return-void
.end method

.method public static a()I
    .locals 2

    .line 50
    sget v0, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {}, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->c()V

    .line 54
    :cond_0
    sget v0, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->b:I

    return v0
.end method

.method public static a(I)I
    .locals 5
    .param p0, "dp"    # I

    .line 72
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 73
    .local v0, "dm":Landroid/util/DisplayMetrics;
    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method private static b()I
    .locals 4

    .line 38
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v0, "clazz":Ljava/lang/Class;
    move-object v0, v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 40
    .local v1, "object":Ljava/lang/Object;
    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "height":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "height":I
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget v0, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->a:I

    return v0
.end method

.method private static c()V
    .locals 3

    .line 66
    const/4 v0, 0x0

    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 67
    move-object v0, v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->b:I

    .line 68
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Ltest/tinyapp/alipay/com/testlibrary/util/ScreenUtil;->c:I

    .line 69
    return-void
.end method
