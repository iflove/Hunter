.class public Lcom/alipay/mobile/common/logging/api/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/api/DeviceInfo;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->e:Z

    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->d:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private a()V
    .locals 3

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->d:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 46
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 47
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v0    # "display":Landroid/view/Display;
    goto :goto_0

    .line 49
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DeviceInfo_log"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 56
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->b:I

    .line 57
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->c:I

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->updateAccessibilityState()V

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/api/DeviceInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    sget-object v0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->a:Lcom/alipay/mobile/common/logging/api/DeviceInfo;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->a:Lcom/alipay/mobile/common/logging/api/DeviceInfo;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/alipay/mobile/common/logging/api/DeviceInfo;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/api/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 32
    sput-object v1, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->a:Lcom/alipay/mobile/common/logging/api/DeviceInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->a()V

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->a:Lcom/alipay/mobile/common/logging/api/DeviceInfo;

    return-object v0
.end method

.method public static getResolutionAfterStartup(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/utils/LoggingUtils;->isMainProcStartupFinishOrTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/api/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->getResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    const-string v0, "Logging.DeviceInfo"

    const-string v1, "getResolutionAfterStartup, return empty before startup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getIsAccessibilityEnabled()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->e:Z

    return v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->c:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->b:I

    return v0
.end method

.method public updateAccessibilityState()V
    .locals 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->d:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    .line 65
    .local v1, "am":Landroid/view/accessibility/AccessibilityManager;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 66
    .local v0, "isAmEnabled":Z
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 67
    .local v2, "isExploreByTouchEnabled":Z
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/api/DeviceInfo;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v0    # "isAmEnabled":Z
    .end local v1    # "am":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "isExploreByTouchEnabled":Z
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Logging.DeviceInfo"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
