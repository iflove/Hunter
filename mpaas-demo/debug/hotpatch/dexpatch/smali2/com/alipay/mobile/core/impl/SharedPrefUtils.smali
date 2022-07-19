.class Lcom/alipay/mobile/core/impl/SharedPrefUtils;
.super Ljava/lang/Object;
.source "SharedPrefUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Application;Ljava/lang/Class;)Landroid/content/Context;
    .locals 4
    .param p0, "appContext"    # Landroid/app/Application;
    .param p1, "contextImplClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Context;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "baseContext":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const-string v2, "SharedPrefUtils"

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getBaseContext of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "contextImpl not found: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;)V
    .locals 11
    .param p0, "contextImpl"    # Landroid/content/Context;
    .param p1, "contextImplClass"    # Ljava/lang/Class;
    .param p2, "spName"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;",
            ")V"
        }
    .end annotation

    .line 81
    const-string/jumbo v0, "sSharedPrefsCache"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 82
    .local v2, "sSharedPrefsCacheField":Ljava/lang/reflect/Field;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v1

    .line 85
    .local v4, "map":Ljava/lang/Object;
    move-object v4, v0

    const-string v5, "SharedPrefUtils"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 86
    iput-boolean v6, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    goto/16 :goto_1

    .line 87
    :cond_0
    instance-of v0, v4, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 88
    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v1

    .line 89
    .local v7, "spMap":Ljava/lang/Object;
    move-object v7, v0

    if-nez v0, :cond_1

    .line 90
    iput-boolean v6, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, v7, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 92
    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    .local v1, "entry":Ljava/util/Map$Entry;
    new-instance v0, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v0, "targetFile":Ljava/io/File;
    move-object v8, v7

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    .line 96
    .end local v0    # "targetFile":Ljava/io/File;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    .line 97
    :cond_2
    iput-boolean v6, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    goto :goto_0

    .line 100
    :cond_3
    iput-boolean v3, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unknown spMap type = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v7    # "spMap":Ljava/lang/Object;
    nop

    .line 108
    :goto_0
    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    .line 104
    :cond_4
    iput-boolean v3, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unknown map type = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_1
    move-object v0, v1

    :goto_2
    iget-boolean v7, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    if-nez v7, :cond_5

    iget-boolean v7, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    if-nez v7, :cond_5

    .line 109
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    const-string v8, "getSharedPreferencesPath"

    invoke-virtual {p1, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 110
    .local v1, "getSharedPreferencesPath":Ljava/lang/reflect/Method;
    move-object v1, v7

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 111
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 112
    .local v0, "spFile":Ljava/io/File;
    move-object v0, v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 114
    .local v3, "succeed":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delete sp file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v0    # "spFile":Ljava/io/File;
    .end local v1    # "getSharedPreferencesPath":Ljava/lang/reflect/Method;
    .end local v3    # "succeed":Z
    :cond_5
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;)V
    .locals 9
    .param p0, "contextImpl"    # Landroid/content/Context;
    .param p1, "contextImplClass"    # Ljava/lang/Class;
    .param p2, "spName"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;",
            ")V"
        }
    .end annotation

    .line 122
    const-string/jumbo v0, "sSharedPrefs"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 123
    .local v2, "sSharedPrefsField":Ljava/lang/reflect/Field;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v1

    .line 126
    .local v4, "map":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 127
    iput-boolean v5, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    goto :goto_0

    .line 128
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v0, v6, :cond_3

    instance-of v0, v4, Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    .line 129
    move-object v0, v4

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v1

    .line 130
    .local v6, "spMap":Ljava/lang/Object;
    move-object v6, v0

    if-nez v0, :cond_1

    .line 131
    iput-boolean v5, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    goto :goto_1

    .line 132
    :cond_1
    instance-of v0, v6, Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 133
    move-object v0, v6

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    goto :goto_1

    .line 135
    :cond_2
    iput-boolean v3, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    .line 136
    const-string v0, "SharedPrefUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unknown spMap = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v6    # "spMap":Ljava/lang/Object;
    goto :goto_1

    :cond_3
    instance-of v0, v4, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 139
    monitor-enter v4

    .line 140
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    .line 141
    monitor-exit v4

    move-object v6, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 143
    :cond_4
    iput-boolean v3, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    .line 144
    const-string v0, "SharedPrefUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unknown map = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    move-object v6, v1

    :goto_1
    iget-boolean v0, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    if-nez v0, :cond_5

    iget-boolean v0, p3, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    if-nez v0, :cond_5

    .line 148
    const-string v0, "getSharedPrefsFile"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {p1, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 149
    .local v6, "getSharedPrefsFile":Ljava/lang/reflect/Method;
    move-object v6, v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 150
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v5

    invoke-virtual {v6, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 151
    .local v1, "spFile":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 153
    .local v0, "succeed":Z
    const-string v3, "SharedPrefUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "delete sp file "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v0    # "succeed":Z
    .end local v1    # "spFile":Ljava/io/File;
    .end local v6    # "getSharedPrefsFile":Ljava/lang/reflect/Method;
    :cond_5
    return-void
.end method

.method static clearSp(Ljava/lang/String;)V
    .locals 8
    .param p0, "spName"    # Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 34
    .local v0, "appContext":Landroid/app/Application;
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "delete_file_to_clear_sp"

    .line 35
    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    const-string v1, "SharedPrefUtils"

    const-string v2, "clear sp opt disabled"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v0, p0}, Lcom/alipay/mobile/core/impl/SharedPrefUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void

    .line 42
    :cond_0
    new-instance v1, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;-><init>(Lcom/alipay/mobile/core/impl/SharedPrefUtils$1;)V

    .line 44
    .local v1, "result":Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;
    :try_start_0
    const-string v4, "android.app.ContextImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 45
    .local v4, "contextImplClass":Ljava/lang/Class;
    invoke-static {v0, v4}, Lcom/alipay/mobile/core/impl/SharedPrefUtils;->a(Landroid/app/Application;Ljava/lang/Class;)Landroid/content/Context;

    move-result-object v5

    .line 46
    .local v2, "contextImpl":Landroid/content/Context;
    move-object v2, v5

    if-nez v5, :cond_1

    .line 47
    iput-boolean v3, v1, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    goto :goto_1

    .line 54
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    .line 55
    .local v6, "sdkInt":I
    move v6, v5

    const/16 v7, 0x13

    if-lt v5, v7, :cond_3

    .line 56
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    const/16 v5, 0x18

    if-lt v6, v5, :cond_2

    .line 58
    :try_start_1
    invoke-static {v2, v4, p0, v1}, Lcom/alipay/mobile/core/impl/SharedPrefUtils;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v2, v4, p0, v1}, Lcom/alipay/mobile/core/impl/SharedPrefUtils;->b(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;)V

    .line 62
    :goto_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "appContext":Landroid/app/Application;
    .end local v1    # "result":Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;
    .end local p0    # "spName":Ljava/lang/String;
    :try_start_2
    throw v5

    .line 64
    .restart local v0    # "appContext":Landroid/app/Application;
    .restart local v1    # "result":Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;
    .restart local p0    # "spName":Ljava/lang/String;
    :cond_3
    invoke-static {v2, v4, p0, v1}, Lcom/alipay/mobile/core/impl/SharedPrefUtils;->b(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .end local v2    # "contextImpl":Landroid/content/Context;
    .end local v4    # "contextImplClass":Ljava/lang/Class;
    .end local v6    # "sdkInt":I
    goto :goto_1

    .line 67
    :catchall_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "SharedPrefUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fail clear sp: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    iput-boolean v3, v1, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    .line 72
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-boolean v2, v1, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    if-eqz v2, :cond_5

    .line 73
    :cond_4
    const-string v2, "SharedPrefUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fallback to system api: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", abort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->abort:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", spLoaded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/alipay/mobile/core/impl/SharedPrefUtils$Result;->spLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {v0, p0}, Lcom/alipay/mobile/core/impl/SharedPrefUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :cond_5
    return-void
.end method
