.class public Lcom/alipay/mobile/nebula/util/InsideUtils;
.super Ljava/lang/Object;
.source "InsideUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;
    }
.end annotation


# static fields
.field public static INSIDE_TYPE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType; = null

.field private static final TAG:Ljava/lang/String; = "InsideUtils"

.field private static sInsideVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->WALLET:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    sput-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils;->INSIDE_TYPE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils;->sInsideVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;
    .locals 11

    .line 53
    const-string v0, "android-phone-wallet-nebulaappproxy"

    const-string v1, "INSIDE_TYPE"

    const-string v2, "getInsideType error"

    const-string v3, "InsideUtils"

    const-string v4, "com.alipay.mobile.nebulaappproxy.BuildConfig"

    const/4 v5, 0x0

    .line 54
    .local v5, "insideTypeString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 57
    .local v6, "insideType":Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v9, v7

    .line 58
    .local v9, "clz":Ljava/lang/Class;
    move-object v9, v8

    if-eqz v8, :cond_0

    .line 59
    invoke-virtual {v9, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v8

    .line 63
    .end local v9    # "clz":Ljava/lang/Class;
    :cond_0
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v8

    .line 62
    .local v8, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    invoke-interface {v9, v3, v2, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v8    # "throwable":Ljava/lang/Throwable;
    :goto_0
    if-nez v5, :cond_3

    .line 67
    const/4 v8, 0x0

    .line 68
    .local v8, "clazz":Ljava/lang/Class;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v9

    move-object v10, v7

    .line 69
    .local v10, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    move-object v10, v9

    invoke-virtual {v9, v0}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v10, v0}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v9, v7

    .line 71
    .local v9, "classLoader":Ljava/lang/ClassLoader;
    move-object v9, v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v8, v0

    .line 75
    :cond_1
    if-eqz v8, :cond_2

    .line 76
    invoke-virtual {v8, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v0

    .line 80
    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v9    # "classLoader":Ljava/lang/ClassLoader;
    .end local v10    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    :cond_2
    goto :goto_1

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    const-string/jumbo v0, "wallet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    sget-object v6, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->WALLET:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    goto :goto_2

    .line 87
    :cond_4
    sget-object v6, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->ANTFIN:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    goto :goto_2

    .line 89
    :cond_5
    const-string/jumbo v0, "mpaas"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    sget-object v6, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    goto :goto_2

    .line 91
    :cond_6
    const-string v0, "inside"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    sget-object v6, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->TINY_INSIDE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    .line 95
    :cond_7
    :goto_2
    return-object v6
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    .line 34
    sget-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils;->sInsideVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 40
    .local v0, "insideVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    const-string v0, "10.1.60"

    goto :goto_0

    .line 43
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    const/4 v2, 0x0

    .line 44
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 45
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 48
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    :cond_2
    :goto_0
    sput-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils;->sInsideVersion:Ljava/lang/String;

    .line 49
    return-object v0
.end method

.method public static isInside()Z
    .locals 2

    .line 30
    sget-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils;->INSIDE_TYPE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    sget-object v1, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->TINY_INSIDE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/nebula/util/InsideUtils;->INSIDE_TYPE:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    sget-object v1, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
