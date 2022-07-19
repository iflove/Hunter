.class public Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;
.super Ljava/lang/Object;
.source "NavigationBarUtil.java"


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v2, v0

    .line 37
    .local v2, "m":Ljava/lang/reflect/Method;
    move-object v2, v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v1, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v2    # "m":Ljava/lang/reflect/Method;
    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->d:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->c:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->b:I

    .line 49
    if-lez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->a:Z

    .line 50
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 57
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->c:Z

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "navigation_bar_height"

    .local v1, "key":Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v1, "navigation_bar_height_landscape"

    .line 64
    .restart local v1    # "key":Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 67
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "key"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "result":I
    const-string v1, "dimen"

    const-string v2, "android"

    invoke-static {p0, p1, v1, v2}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 91
    .local v2, "resourceId":I
    move v2, v1

    if-lez v1, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    .local v1, "res":Landroid/content/res/Resources;
    move-object v1, v0

    const-string v2, "config_showNavigationBar"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-static {v0, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    .line 74
    .local v3, "resourceId":I
    move v3, v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 77
    .local v0, "hasNav":Z
    sget-object v2, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->d:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    sget-object v2, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->d:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_1
    :goto_0
    return v0

    .line 84
    .end local v0    # "hasNav":Z
    :cond_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method


# virtual methods
.method public getNavigationBarHeight()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->b:I

    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/util/NavigationBarUtil;->a:Z

    return v0
.end method
