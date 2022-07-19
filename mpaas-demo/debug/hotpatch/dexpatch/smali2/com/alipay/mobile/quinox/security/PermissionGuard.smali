.class public final Lcom/alipay/mobile/quinox/security/PermissionGuard;
.super Ljava/lang/Object;
.source "PermissionGuard.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/high16 v0, -0x80000000

    sput v0, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a()V
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    sget v0, Landroid/system/OsConstants;->S_IXOTH:I

    sput v0, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a:I

    return-void

    .line 41
    :cond_0
    :try_start_0
    const-string v0, "libcore.io.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "S_IXOTH"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "permission_guard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 14

    .line 86
    const-string v0, "permission_guard"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 88
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v6

    .line 89
    invoke-virtual {v6, p0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "quinox_perm_guard_interval"

    .line 90
    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    if-eqz v6, :cond_0

    .line 92
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v6

    .line 95
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v6

    const-string v7, "framework_preferences"

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 99
    const-wide/16 v9, 0x0

    invoke-interface {v6, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 100
    cmp-long v7, v4, v9

    if-lez v7, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v7, v9, v4

    if-gez v7, :cond_1

    goto/16 :goto_7

    .line 104
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    const-string v4, "start checkPrivateDirPermission"

    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    nop

    .line 111
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    goto :goto_1

    .line 112
    :catchall_1
    move-exception v5

    .line 113
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_1
    const/4 v5, 0x1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 117
    :goto_2
    nop

    .line 118
    if-eqz v1, :cond_4

    .line 120
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 123
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/2addr v4, v5

    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 126
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    goto :goto_3

    .line 128
    :catchall_2
    move-exception v4

    .line 129
    invoke-static {v0, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 135
    return-void

    .line 138
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readable="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", writable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    nop

    .line 143
    :try_start_3
    const-string v6, "permission_guard_probe"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 144
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 145
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 146
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    xor-int/2addr v5, v6

    goto :goto_4

    .line 148
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 149
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 154
    goto :goto_4

    .line 152
    :catchall_3
    move-exception v5

    .line 153
    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    .line 157
    :goto_4
    if-nez v5, :cond_7

    .line 158
    const-string p0, "external dir is not writable, skip!"

    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void

    .line 163
    :cond_7
    const-string v5, "permission_guard_record"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 165
    if-eqz v5, :cond_9

    .line 166
    array-length v6, v5

    :goto_5
    if-ge v8, v6, :cond_9

    aget-object v7, v5, v8

    .line 168
    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 170
    invoke-virtual {v11, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_8

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "skip, as last recordTime is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 172
    return-void

    .line 176
    :cond_8
    goto :goto_6

    .line 174
    :catchall_4
    move-exception v7

    .line 175
    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 180
    :cond_9
    const-string v2, "dangerousUpload"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_5
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 185
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 188
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 189
    const-string v2, "readable"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "writable"

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "BIZ_FRAME"

    const-string v2, "QUINOX_ERROR"

    const-string v3, "PrivateDirPermission"

    invoke-static {v1, v2, v3, p0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->dangerousUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 195
    :cond_a
    return-void

    .line 193
    :catchall_5
    move-exception p0

    .line 194
    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    return-void

    .line 101
    :cond_b
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "skip checkInterval = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .locals 7

    .line 237
    nop

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-gt v0, v3, :cond_1

    .line 240
    :try_start_0
    const-class v0, Ljava/io/File;

    const-string v3, "doChmod"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    sget v6, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a:I

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v1

    .line 240
    invoke-static {v0, p0, v3, v5, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 244
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 248
    :cond_0
    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    const-string v3, "permission_guard"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 251
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    const-string v3, "quinox_permission_guard_compat"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 254
    if-eqz v0, :cond_2

    .line 255
    invoke-static {p0}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->b(Ljava/io/File;)Z

    move-result v2

    .line 258
    :cond_2
    return v2
.end method

.method public static abolishExecutableAsync(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    invoke-static {p0}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/security/PermissionGuard$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/security/PermissionGuard$1;-><init>(Landroid/content/Context;)V

    const-string v2, "abolishExecutableAsync"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public static abolishExecutableSync(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "bRet":Z
    invoke-static {}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a()V

    .line 207
    sget v1, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a:I

    const/high16 v2, -0x80000000

    if-eq v2, v1, :cond_0

    .line 208
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {v1}, Lcom/alipay/mobile/quinox/security/PermissionGuard;->a(Ljava/io/File;)Z

    move-result v0

    .line 212
    :cond_0
    return v0
.end method

.method private static b(Ljava/io/File;)Z
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "bRet":Z
    const-string v1, ""

    .line 264
    .local v1, "errorMsg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 266
    .local v2, "error":Ljava/lang/Throwable;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 268
    :try_start_0
    const-string v3, "libcore.io.Libcore"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "os"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 269
    .local v4, "os":Ljava/lang/Object;
    const-string v5, "chmod"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    new-array v6, v6, [Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    const/16 v8, 0x1e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 269
    invoke-static {v3, v5, v7, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const/4 v0, 0x1

    .line 275
    .end local v4    # "os":Ljava/lang/Object;
    goto :goto_0

    .line 272
    :catchall_0
    move-exception v3

    .line 273
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "permission_guard"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    move-object v2, v3

    .line 294
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 295
    const-string v3, "setExecutableFailed"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 298
    :cond_1
    return v0
.end method
