.class public Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;
.super Ljava/lang/Object;
.source "NougatPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/Object;
    .locals 4

    .line 315
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 316
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getPackageManager"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 317
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "ext1"    # Ljava/lang/String;
    .param p1, "ext2"    # Ljava/lang/String;
    .param p2, "ext3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    .local v0, "params":Ljava/util/Map;
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    .end local v0    # "params":Ljava/util/Map;
    .local v6, "params":Ljava/util/Map;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    .line 59
    .local v0, "performanceBuilder":Ljava/lang/Object;
    const-string v2, "fullcompile"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;)V

    .line 62
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v0    # "performanceBuilder":Ljava/lang/Object;
    return-void

    .line 63
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v6    # "params":Ljava/util/Map;
    .local v0, "params":Ljava/util/Map;
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v6    # "params":Ljava/util/Map;
    :goto_0
    const-string v1, "NougatPolicy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "NougatPolicy"

    .line 272
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 273
    .local v3, "pm":Ljava/lang/Object;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 274
    const-string v2, "can not found package service"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v1

    .line 286
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "performDexOptMode"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 290
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "speed-profile"

    aput-object v5, v4, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    return v0

    .line 293
    .end local v3    # "pm":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 294
    .local v2, "tr":Ljava/lang/Throwable;
    const-string v3, "fullCompile failed:"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    return v1
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 322
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 323
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 324
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 325
    .local v1, "baseApk":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v4, "baseApkFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const-string v7, "/oat/arm/base.odex"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 327
    .local v2, "oatFile":Ljava/io/File;
    move-object v2, v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 328
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    return v6

    :cond_0
    return v0

    .line 330
    :cond_1
    return v6

    .line 332
    .end local v1    # "baseApk":Ljava/lang/String;
    .end local v2    # "oatFile":Ljava/io/File;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "baseApkFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    .line 333
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "NougatPolicy"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    .end local v1    # "tr":Ljava/lang/Throwable;
    return v0
.end method

.method public static clearCompileData(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 302
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    .local v1, "pm":Ljava/lang/Object;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "performDexOpt"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 305
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v1    # "pm":Ljava/lang/Object;
    .local v0, "ret":Z
    goto :goto_0

    .line 306
    .end local v0    # "ret":Z
    :catchall_0
    move-exception v0

    .line 307
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "NougatPolicy"

    const-string v2, "clear compile data failed"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    const/4 v1, 0x0

    move v0, v1

    .line 310
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "1"

    goto :goto_1

    :cond_0
    const-string v1, "0"

    :goto_1
    const-string v2, "clearcompile"

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return v0
.end method

.method public static fullCompile(Landroid/content/Context;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    const-string v2, ""

    const-string v3, "NougatPolicy"

    .line 110
    if-nez v1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-le v0, v4, :cond_1

    goto/16 :goto_b

    .line 117
    :cond_1
    const/4 v0, 0x4

    const-string v4, "nougat_full_compile"

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 118
    .local v5, "sp":Landroid/content/SharedPreferences;
    move-object v5, v0

    const-string v6, "full_compile_version_code"

    const/4 v7, -0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 122
    .local v8, "lastVersionCode":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v9, v4

    .line 123
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v11, v0

    .line 125
    .local v11, "currentVersion":I
    const-string v12, "full_compile_count"

    const-string v13, "last_full_compile_time"

    const-string v14, "full_compile_result"

    if-ne v8, v7, :cond_2

    .line 127
    :try_start_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 137
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "currentVersion":I
    :catchall_0
    move-exception v0

    move/from16 v21, v8

    goto/16 :goto_a

    .line 128
    .restart local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "currentVersion":I
    :cond_2
    if-eq v11, v8, :cond_3

    .line 130
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    invoke-interface {v0, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-interface {v0, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    invoke-interface {v0, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    nop

    .line 143
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "try trigger full compile in background thread, lastVer:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentVer: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->b(Landroid/content/Context;)Z

    move-result v6

    .line 148
    .local v6, "isODexSizeZero":Z
    invoke-interface {v5, v14, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v9, v10

    .line 149
    .local v9, "result":I
    move v9, v0

    const-string v15, "but we got an empty odex, we should do full compile again"

    const/4 v10, 0x1

    if-ne v0, v10, :cond_5

    .line 150
    const-string v0, "full compile has succeed, do not need compile again"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "duplicate"

    invoke-static {v0, v2, v2}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez v6, :cond_4

    .line 153
    return-void

    .line 155
    :cond_4
    invoke-static {v3, v15}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_5
    move/from16 v17, v11

    .end local v11    # "currentVersion":I
    .local v17, "currentVersion":I
    const-wide/16 v10, -0x1

    invoke-interface {v5, v13, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 160
    const-string v4, "result"

    cmp-long v0, v18, v10

    if-eqz v0, :cond_8

    .line 162
    const-string v0, "full compile can only trigger once now"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "triggeronce"

    invoke-static {v0, v2, v2}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-ne v9, v7, :cond_6

    .line 166
    const-string v0, "-1"

    invoke-static {v4, v0, v2}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v7, 0x2

    invoke-interface {v0, v14, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    const-string v0, "full compile unknown"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_6
    const/4 v7, 0x2

    .line 170
    :goto_1
    if-nez v6, :cond_7

    .line 171
    return-void

    .line 173
    :cond_7
    invoke-static {v3, v15}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_8
    const/4 v7, 0x2

    .line 178
    :goto_2
    const-string v0, "profile_info"

    const/4 v10, 0x0

    invoke-interface {v5, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, "profileInfo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 181
    .local v10, "profileInfoObject":Lorg/json/JSONObject;
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v0

    .line 184
    goto :goto_3

    .line 182
    :catchall_1
    move-exception v0

    .line 183
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_3
    if-nez v10, :cond_9

    .line 186
    const-string v0, "we did not have a primary.prof downloaded yet, we should wait for it"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_9
    const-string v0, "clientVersion"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 190
    .local v15, "clientVersion":Ljava/lang/String;
    const-string v0, "apiLevel"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "apiLevel":Ljava/lang/String;
    const-string v0, "cloudId"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "cloudId":Ljava/lang/String;
    const-string v0, "md5"

    move/from16 v18, v6

    .end local v6    # "isODexSizeZero":Z
    .local v18, "isODexSizeZero":Z
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "md5":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v24, v1

    move-object v4, v6

    move-object/from16 v16, v7

    move/from16 v21, v8

    move/from16 v22, v9

    goto/16 :goto_9

    .line 197
    :cond_a
    const/16 v19, 0x0

    .line 199
    .local v19, "currentClientVersion":Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v21, v8

    .end local v8    # "lastVersionCode":I
    .local v21, "lastVersionCode":I
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v22, v9

    const/4 v9, 0x0

    .end local v9    # "result":I
    .local v22, "result":I
    :try_start_5
    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v19, v0

    .line 202
    move-object/from16 v8, v19

    const/4 v0, 0x0

    goto :goto_5

    .line 200
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v22    # "result":I
    .restart local v9    # "result":I
    :catchall_3
    move-exception v0

    move/from16 v22, v9

    .end local v9    # "result":I
    .restart local v22    # "result":I
    goto :goto_4

    .end local v21    # "lastVersionCode":I
    .end local v22    # "result":I
    .restart local v8    # "lastVersionCode":I
    .restart local v9    # "result":I
    :catchall_4
    move-exception v0

    move/from16 v21, v8

    move/from16 v22, v9

    .line 201
    .end local v8    # "lastVersionCode":I
    .end local v9    # "result":I
    .restart local v0    # "tr":Ljava/lang/Throwable;
    .restart local v21    # "lastVersionCode":I
    .restart local v22    # "result":I
    :goto_4
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v8, v19

    .line 203
    .end local v0    # "tr":Ljava/lang/Throwable;
    .end local v19    # "currentClientVersion":Ljava/lang/String;
    .local v8, "currentClientVersion":Ljava/lang/String;
    :goto_5
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clientVersion not fit, config:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentClient:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void

    .line 207
    :cond_b
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "apiLevel not fit, config:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void

    .line 211
    :cond_c
    new-instance v9, Ljava/io/File;

    move-object/from16 v16, v7

    .end local v7    # "apiLevel":Ljava/lang/String;
    .local v16, "apiLevel":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    move-object/from16 v23, v8

    .end local v8    # "currentClientVersion":Ljava/lang/String;
    .local v23, "currentClientVersion":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/profiledealer/profileInfo/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "primaryProfFile":Ljava/io/File;
    move-object v0, v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d

    .line 213
    const-string v2, "primaryProfFile is not exists"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 216
    :cond_d
    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "primaryProfMd5":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " got:"

    if-nez v8, :cond_e

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "primaryProfMd5 mismatch, expected:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 221
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v0

    .end local v0    # "primaryProfFile":Ljava/io/File;
    .local v19, "primaryProfFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v24, v1

    .end local v1    # "cloudId":Ljava/lang/String;
    .local v24, "cloudId":Ljava/lang/String;
    const-string v1, "/data/misc/profiles/cur/0/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v25, v7

    .end local v7    # "primaryProfMd5":Ljava/lang/String;
    .local v25, "primaryProfMd5":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/primary.prof"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/profiledealer/ProfileUtil;->copySingleFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 222
    if-nez v0, :cond_f

    .line 223
    const-string v0, "primary.prof copy failed"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 226
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "copyResultMd5":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyResultMd5 mismatch, expected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 233
    :cond_10
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/misc/profiles/cur/0/com.eg.android.AlipayGphone/primary.prof"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 234
    .local v7, "profileFile":Ljava/io/File;
    move-object v7, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 235
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v20, v0

    .end local v0    # "copyResultMd5":Ljava/lang/String;
    .local v20, "copyResultMd5":Ljava/lang/String;
    const-wide/16 v0, 0x0

    move-wide/from16 v26, v0

    .line 236
    .local v26, "len":J
    cmp-long v28, v8, v0

    if-gtz v28, :cond_11

    .line 237
    const-string v0, "empty profile exit"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 240
    .end local v26    # "len":J
    :cond_11
    nop

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 247
    .local v8, "now":J
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v13, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    const-wide/16 v0, 0x0

    invoke-interface {v5, v12, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    move-wide/from16 v28, v0

    .line 250
    .local v28, "compileCount":J
    move-wide/from16 v28, v26

    cmp-long v13, v26, v0

    if-gez v13, :cond_12

    .line 251
    const-wide/16 v28, 0x0

    .line 253
    :cond_12
    const-wide/16 v0, 0x3

    cmp-long v13, v28, v0

    if-ltz v13, :cond_13

    .line 254
    const-string v0, "we have try full compile more than 10 times, wo should not try more"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void

    .line 258
    :cond_13
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide/16 v26, 0x1

    move-object v1, v6

    move-object v13, v7

    .end local v6    # "md5":Ljava/lang/String;
    .end local v7    # "profileFile":Ljava/io/File;
    .local v1, "md5":Ljava/lang/String;
    .local v13, "profileFile":Ljava/io/File;
    add-long v6, v28, v26

    invoke-interface {v0, v12, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 261
    .local v6, "t1":J
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a(Landroid/content/Context;)Z

    move-result v0

    .line 264
    .local v0, "ret":Z
    if-eqz v0, :cond_14

    const-string v12, "1"

    goto :goto_6

    :cond_14
    const-string v12, "0"

    :goto_6
    invoke-static {v4, v12, v2}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    goto :goto_7

    :cond_15
    const/4 v4, 0x2

    :goto_7
    invoke-interface {v2, v14, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "full compile "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_16

    const-string v4, "success"

    goto :goto_8

    :cond_16
    const-string v4, "fail"

    :goto_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cost: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move v12, v0

    move-object v4, v1

    .end local v0    # "ret":Z
    .end local v1    # "md5":Ljava/lang/String;
    .local v4, "md5":Ljava/lang/String;
    .local v12, "ret":Z
    sub-long v0, v26, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 241
    .end local v4    # "md5":Ljava/lang/String;
    .end local v8    # "now":J
    .end local v12    # "ret":Z
    .end local v13    # "profileFile":Ljava/io/File;
    .end local v20    # "copyResultMd5":Ljava/lang/String;
    .end local v28    # "compileCount":J
    .local v0, "copyResultMd5":Ljava/lang/String;
    .local v6, "md5":Ljava/lang/String;
    .restart local v7    # "profileFile":Ljava/io/File;
    :cond_17
    move-object/from16 v20, v0

    .end local v0    # "copyResultMd5":Ljava/lang/String;
    .restart local v20    # "copyResultMd5":Ljava/lang/String;
    const-string v0, "no profile exit"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void

    .line 193
    .end local v16    # "apiLevel":Ljava/lang/String;
    .end local v19    # "primaryProfFile":Ljava/io/File;
    .end local v20    # "copyResultMd5":Ljava/lang/String;
    .end local v21    # "lastVersionCode":I
    .end local v22    # "result":I
    .end local v23    # "currentClientVersion":Ljava/lang/String;
    .end local v24    # "cloudId":Ljava/lang/String;
    .end local v25    # "primaryProfMd5":Ljava/lang/String;
    .local v1, "cloudId":Ljava/lang/String;
    .local v7, "apiLevel":Ljava/lang/String;
    .local v8, "lastVersionCode":I
    .restart local v9    # "result":I
    :cond_18
    move-object/from16 v24, v1

    move-object v4, v6

    move-object/from16 v16, v7

    move/from16 v21, v8

    move/from16 v22, v9

    .line 194
    .end local v1    # "cloudId":Ljava/lang/String;
    .end local v6    # "md5":Ljava/lang/String;
    .end local v7    # "apiLevel":Ljava/lang/String;
    .end local v8    # "lastVersionCode":I
    .end local v9    # "result":I
    .restart local v4    # "md5":Ljava/lang/String;
    .restart local v16    # "apiLevel":Ljava/lang/String;
    .restart local v21    # "lastVersionCode":I
    .restart local v22    # "result":I
    .restart local v24    # "cloudId":Ljava/lang/String;
    :goto_9
    const-string v0, "profileInfoObject is invalid, params empty"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 137
    .end local v4    # "md5":Ljava/lang/String;
    .end local v10    # "profileInfoObject":Lorg/json/JSONObject;
    .end local v11    # "profileInfo":Ljava/lang/String;
    .end local v15    # "clientVersion":Ljava/lang/String;
    .end local v16    # "apiLevel":Ljava/lang/String;
    .end local v17    # "currentVersion":I
    .end local v18    # "isODexSizeZero":Z
    .end local v21    # "lastVersionCode":I
    .end local v22    # "result":I
    .end local v24    # "cloudId":Ljava/lang/String;
    .restart local v8    # "lastVersionCode":I
    :catchall_5
    move-exception v0

    move/from16 v21, v8

    .line 138
    .end local v8    # "lastVersionCode":I
    .local v0, "tr":Ljava/lang/Throwable;
    .restart local v21    # "lastVersionCode":I
    :goto_a
    const-string v1, "get package info error"

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    const-string v1, "upgrade"

    invoke-static {v1, v2, v2}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 114
    .end local v0    # "tr":Ljava/lang/Throwable;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v21    # "lastVersionCode":I
    :cond_19
    :goto_b
    return-void
.end method

.method public static mayDoCompile(Landroid/content/Context;)Z
    .locals 10

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 74
    return v0

    .line 77
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    const/4 v1, 0x4

    const-string v2, "nougat_full_compile"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    const-string v2, "full_compile_version_code"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 82
    nop

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 85
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v4

    .line 87
    const-string v5, "NougatPolicy"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 89
    :goto_0
    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    .line 90
    return v5

    .line 92
    :cond_2
    const-wide/16 v6, 0x0

    const-string v2, "full_compile_count"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 93
    const-wide/16 v8, 0x3

    cmp-long v2, v6, v8

    if-ltz v2, :cond_3

    .line 94
    return v0

    .line 96
    :cond_3
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->b(Landroid/content/Context;)Z

    move-result p0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    return v5

    .line 100
    :cond_4
    const-string p0, "full_compile_result"

    invoke-interface {v1, p0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 101
    const-string v2, "last_full_compile_time"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 102
    if-eq p0, v5, :cond_5

    cmp-long p0, v1, v3

    if-nez p0, :cond_5

    .line 103
    return v5

    .line 106
    :cond_5
    return v0

    .line 78
    :cond_6
    :goto_1
    return v0
.end method
