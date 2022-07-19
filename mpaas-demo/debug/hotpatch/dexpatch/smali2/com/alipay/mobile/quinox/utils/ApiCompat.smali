.class public Lcom/alipay/mobile/quinox/utils/ApiCompat;
.super Ljava/lang/Object;
.source "ApiCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllApkPaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 8
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "resourcesDir":[Ljava/lang/String;
    :try_start_0
    const-string v2, "resourceDirs"

    invoke-static {p0, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 33
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "ApiCompat"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v2, 0x3

    new-array v3, v2, [[Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 35
    .local v3, "inputLists":[[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .local v4, "output":Ljava/util/List;
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 37
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    aget-object v7, v3, v6

    .line 40
    .local v1, "inputList":[Ljava/lang/String;
    move-object v1, v7

    if-eqz v7, :cond_1

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    .end local v1    # "inputList":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 44
    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 46
    .end local v0    # "resourcesDir":[Ljava/lang/String;
    .end local v3    # "inputLists":[[Ljava/lang/String;
    .end local v4    # "output":Ljava/util/List;
    :cond_3
    return-object v1
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviewSdkInt()I
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 20
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getSupported64BitABIS()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    return-object v0
.end method

.method public static setTheme(Landroid/view/ContextThemeWrapper;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p0, "contextThemeWrapper"    # Landroid/view/ContextThemeWrapper;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->setTheme(Landroid/content/res/Resources$Theme;)V

    return-void

    .line 66
    :cond_0
    const-class v0, Landroid/view/ContextThemeWrapper;

    const-string v1, "mTheme"

    invoke-static {v0, p0, v1, p1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-void
.end method
