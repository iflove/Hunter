.class public Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;
.super Ljava/lang/Object;
.source "LoadARCoreHelper.java"


# static fields
.field public static final ARCORE_CAMERA_SOURCE_ERROR:I = 0x6a

.field public static final ARCORE_UNKNOWN_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LoadARCoreHelper"

.field private static final arCoreDetectorClassName:Ljava/lang/String; = "com.alipay.mobile.nebulaarcore.webar.ARCoreDetector"

.field private static final arCoreHelperClassName:Ljava/lang/String; = "com.alipay.mobile.nebulaarcore.webar.ARCoreHelper"

.field private static final arCoreSessionClassName:Ljava/lang/String; = "com.alipay.mobile.nebulaarcore.webar.ARCoreSession"

.field private static bundleName:Ljava/lang/String;

.field private static mClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "com.alipay.android.nebulaarcore"

    sput-object v0, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->bundleName:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->mClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkARCoreAvailability(Landroid/content/Context;Lorg/json/JSONObject;Landroid/webkit/ValueCallback;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 121
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 122
    .local v1, "arCoreHelperClass":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 124
    .local v2, "isInstallRequested":Z
    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    const-string v3, "com.alipay.mobile.nebulaarcore.webar.ARCoreHelper"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    nop

    .line 130
    :goto_1
    const-string v3, "LoadARCoreHelper"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 132
    :try_start_1
    const-string v5, "checkARCoreAvailability"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    const-class v8, Lorg/json/JSONObject;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Landroid/webkit/ValueCallback;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-static {v1, v5, v7, v6}, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v4

    .line 138
    :goto_2
    goto :goto_3

    .line 136
    :catch_1
    move-exception v4

    .line 137
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 140
    :cond_1
    const-string v5, "checkARCoreAvailability getARCoreHelperClassFailed "

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 143
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkARCoreAvailability isInstallRequested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v2
.end method

.method public static getARCoreDetectorClass()Ljava/lang/Class;
    .locals 3

    .line 106
    invoke-static {}, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 107
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 109
    .local v1, "arCoreDetectorClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    const-string v2, "com.alipay.mobile.nebulaarcore.webar.ARCoreDetector"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    nop

    .line 116
    :goto_1
    return-object v1
.end method

.method public static getARCoreSessionClass()Ljava/lang/Class;
    .locals 3

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 93
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 95
    .local v1, "arCoreSessionClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    const-string v2, "com.alipay.mobile.nebulaarcore.webar.ARCoreSession"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    nop

    .line 102
    :goto_1
    return-object v1
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 25
    sget-object v0, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 29
    .local v0, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    const/4 v1, 0x0

    .line 30
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 31
    sget-object v2, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->bundleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 32
    sput-object v1, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->mClassLoader:Ljava/lang/ClassLoader;

    .line 35
    :cond_1
    return-object v1
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/Class;

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 65
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 64
    goto :goto_0

    .line 57
    :catch_1
    move-exception v2

    .line 58
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    .line 59
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-object v0
.end method

.method private static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/Class;
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 84
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/webar/LoadARCoreHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 87
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
