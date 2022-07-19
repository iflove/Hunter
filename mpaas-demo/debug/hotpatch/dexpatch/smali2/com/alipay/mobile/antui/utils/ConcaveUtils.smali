.class public Lcom/alipay/mobile/antui/utils/ConcaveUtils;
.super Ljava/lang/Object;
.source "ConcaveUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHuaweiConcave(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 44
    .local v3, "cl":Ljava/lang/ClassLoader;
    const-string v4, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 45
    .local v2, "HwNotchSizeUtil":Ljava/lang/Class;
    move-object v2, v1

    const-string v4, "hasNotchInScreen"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 47
    .local v1, "hasNotchInScreen":Z
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/ConcaveUtils;->isDisplayNotch(Landroid/content/Context;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v4, "isDisplayNotch":Z
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 49
    .end local v1    # "hasNotchInScreen":Z
    .end local v2    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "isDisplayNotch":Z
    :catchall_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkHuaweiConcave"

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static checkOppoConcave(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkSamsungConcave(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 78
    .local v3, "res":Landroid/content/res/Resources;
    move-object v3, v2

    :try_start_1
    const-string v4, "config_mainBuiltInDisplayCutout"

    const-string/jumbo v5, "string"

    const-string v6, "android"

    invoke-static {v2, v4, v5, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v4, v1

    .line 79
    .local v4, "resId":I
    move v4, v2

    if-lez v2, :cond_0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v2, v0

    .line 80
    .local v0, "spec":Ljava/lang/String;
    :goto_0
    move-object v0, v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 81
    .end local v0    # "spec":Ljava/lang/String;
    .end local v4    # "resId":I
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 82
    .local v0, "ignore":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method public static checkVivoConcave()Z
    .locals 7

    .line 26
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.util.FtFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 27
    .local v3, "clazz":Ljava/lang/Class;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "obj":Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 30
    .local v2, "cArg":[Ljava/lang/Class;
    move-object v2, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    .line 31
    const-string v5, "isFeatureSupport"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 32
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 33
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "cArg":[Ljava/lang/Class;
    .end local v3    # "clazz":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkVivoConcave"

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static checkXiaomiConcave()Z
    .locals 9

    .line 63
    const-string v0, "0"

    .line 65
    .local v0, "hasNotchInScreen":Ljava/lang/String;
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 66
    .local v2, "c":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 67
    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "ro.miui.notch"

    aput-object v4, v3, v7

    const-string v4, "0"

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 70
    .end local v2    # "c":Ljava/lang/Class;
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkXiaomiConcave"

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private static isDisplayNotch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_notch_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 57
    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
