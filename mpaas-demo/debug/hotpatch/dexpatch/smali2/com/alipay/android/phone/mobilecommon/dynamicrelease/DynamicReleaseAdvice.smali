.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;
.super Lcom/alipay/mobile/aspect/CallAdvice;
.source "DynamicReleaseAdvice.java"


# static fields
.field private static a:Z


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v0, "DynamicRelease"

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/aspect/CallAdvice;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->b:Ljava/util/List;

    .line 49
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 50
    .local v2, "defaultCfg":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->b:Ljava/util/List;

    const-class v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v2    # "defaultCfg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    move-object v2, v1

    .line 54
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 63
    .local v2, "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    const-class v3, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/base/config/ConfigService;

    .line 64
    const-string v3, "dynamicrelease_page_cofig"

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "cfg":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dynamicrelease_page_cofig="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->b:Ljava/util/List;

    const-class v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;

    invoke-static {v1, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .end local v1    # "cfg":Ljava/lang/String;
    .end local v2    # "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    :cond_1
    return-void

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .line 76
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    move-object v2, v0

    .line 77
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "dynamicrelease_page.cfg"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 79
    .local v3, "result":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 80
    return-object v3

    .line 84
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static register()V
    .locals 3

    .line 33
    sget-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->a:Z

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;-><init>()V

    const/4 v1, 0x0

    .line 35
    .local v1, "advice":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;
    move-object v1, v0

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->a:Z

    .line 41
    .end local v1    # "advice":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 16
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    array-length v0, v9

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    iget-object v0, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v2, v10

    goto/16 :goto_4

    .line 99
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v11

    .line 101
    .local v11, "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    const/4 v0, 0x0

    aget-object v0, v9, v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 102
    .local v12, "sourceAppId":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v0, v9, v13

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 103
    .local v14, "targetAppId":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v0, v9, v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 104
    .local v15, "params":Landroid/os/Bundle;
    array-length v0, v9

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    aget-object v0, v9, v1

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    aget-object v0, v9, v1

    check-cast v0, Landroid/os/Bundle;

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v10

    .line 105
    .local v6, "sceneParams":Landroid/os/Bundle;
    :goto_0
    array-length v0, v9

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    aget-object v0, v9, v2

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v7, v10

    .line 107
    .local v7, "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    :goto_1
    const/4 v0, 0x0

    .line 108
    .local v0, "targetBundleDownloadPageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v10

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;

    .line 109
    .local v2, "pageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    move-object v2, v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->appId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->appId:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    move-object v0, v2

    .line 111
    move-object v5, v0

    goto :goto_3

    .line 113
    .end local v2    # "pageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    :cond_3
    goto :goto_2

    .line 108
    :cond_4
    move-object v5, v0

    .line 115
    .end local v0    # "targetBundleDownloadPageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    .local v5, "targetBundleDownloadPageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    :goto_3
    if-nez v5, :cond_5

    .line 116
    return-object v10

    .line 119
    :cond_5
    invoke-interface {v11}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v0

    iget-object v1, v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->bundleNames:Ljava/util/List;

    .line 120
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->isBundleExist(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    return-object v10

    .line 124
    :cond_6
    invoke-interface {v11}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;

    move-result-object v4

    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v10, v3

    move-object v3, v12

    move-object v13, v4

    move-object v4, v14

    move-object v8, v5

    .end local v5    # "targetBundleDownloadPageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    .local v8, "targetBundleDownloadPageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    move-object v5, v15

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseAdvice;Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 125
    invoke-virtual {v13, v8, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;->requireBundleWithDownloadPage(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageCallback;)V

    .line 142
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 95
    .end local v6    # "sceneParams":Landroid/os/Bundle;
    .end local v7    # "fragmentActivity":Landroidx/fragment/app/FragmentActivity;
    .end local v8    # "targetBundleDownloadPageConfig":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    .end local v11    # "microContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    .end local v12    # "sourceAppId":Ljava/lang/String;
    .end local v14    # "targetAppId":Ljava/lang/String;
    .end local v15    # "params":Landroid/os/Bundle;
    :cond_7
    move-object v2, v10

    .line 96
    :goto_4
    return-object v2
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 91
    return-void
.end method
