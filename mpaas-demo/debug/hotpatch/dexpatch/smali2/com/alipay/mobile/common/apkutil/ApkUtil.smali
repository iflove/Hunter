.class public Lcom/alipay/mobile/common/apkutil/ApkUtil;
.super Ljava/lang/Object;
.source "ApkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkFileInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/common/apkutil/AppInfoData;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 34
    .local v2, "apkFile":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "ApkUtil"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".jar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v4, v1

    .line 41
    .local v4, "pm":Landroid/content/pm/PackageManager;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 43
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 44
    .local v5, "appInfoData":Lcom/alipay/mobile/common/apkutil/AppInfoData;
    if-eqz v0, :cond_3

    .line 45
    new-instance v6, Lcom/alipay/mobile/common/apkutil/AppInfoData;

    invoke-direct {v6}, Lcom/alipay/mobile/common/apkutil/AppInfoData;-><init>()V

    .line 46
    move-object v5, v6

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->setApppackage(Ljava/lang/String;)V

    .line 47
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->setAppversion(Ljava/lang/String;)V

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->setAppversionCode(Ljava/lang/String;)V

    .line 51
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v7, v1

    .line 52
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object v7, v6

    if-eqz v6, :cond_1

    .line 53
    iput-object p1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 54
    iput-object p1, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 55
    invoke-virtual {v7, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 56
    .local v6, "appIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->setAppicon(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .end local v6    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Application;

    invoke-static {p1, v6}, Lcom/alipay/mobile/common/apkutil/ApkUtil;->getResourcesForApplication(Ljava/lang/String;Landroid/app/Application;)Landroid/content/res/Resources;

    move-result-object v6

    .line 61
    .local v6, "res":Landroid/content/res/Resources;
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v8, :cond_2

    .line 62
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 63
    .local v8, "neme":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->setAppname(Ljava/lang/String;)V

    .line 64
    .end local v8    # "neme":Ljava/lang/String;
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "apkName":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/alipay/mobile/common/apkutil/AppInfoData;->setAppname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "apkName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v5

    .line 70
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "appInfoData":Lcom/alipay/mobile/common/apkutil/AppInfoData;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1

    .line 35
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v4, "file path is not corrent"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v1
.end method

.method public static getResourcesForApplication(Ljava/lang/String;Landroid/app/Application;)Landroid/content/res/Resources;
    .locals 9
    .param p0, "archiveFilePath"    # Ljava/lang/String;
    .param p1, "refApplication"    # Landroid/app/Application;

    const-string v0, "ApkUtil"

    .line 86
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/content/res/AssetManager;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/AssetManager;

    move-object v3, v1

    .line 87
    .local v3, "assets":Landroid/content/res/AssetManager;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 88
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 90
    return-object v1

    .line 93
    :cond_0
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 102
    .end local v3    # "assets":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 100
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 98
    :catch_2
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 96
    :catch_3
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 94
    :catch_4
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 106
    :goto_1
    return-object v1
.end method
