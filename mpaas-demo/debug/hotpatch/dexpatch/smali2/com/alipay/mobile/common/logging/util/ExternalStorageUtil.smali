.class public Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;
.super Ljava/lang/Object;
.source "ExternalStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    :try_start_0
    const-string/jumbo v0, "sdcard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExternalStorageUtil"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "tr":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    return-object p0

    .line 109
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create files directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalStorageUtil"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_1
    return-object p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 119
    const-string v1, "ExternalStorageUtilSP"

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    .line 120
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v6, "UseSDCardRoot"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "useSDCardRootStoreStr":Ljava/lang/String;
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    const-string/jumbo v6, "mounted"

    .line 122
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 124
    .local v6, "hasSDCardPermission":Z
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 125
    :goto_2
    if-eqz v8, :cond_a

    .line 126
    new-instance v8, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "/.ExternalStorageUtil.lock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    .local v8, "processLock":Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;
    :try_start_1
    invoke-virtual {v8}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->lock()V

    .line 130
    const-string v9, "ExternalStorageUtilSP"

    invoke-virtual {p0, v9, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 131
    move-object v5, v3

    const-string v9, "UseSDCardRoot"

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 132
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-virtual {p0, v3, v4, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "mounted"

    .line 133
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    move v6, v3

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 136
    :cond_5
    :goto_4
    if-eqz v7, :cond_9

    .line 137
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 138
    .local v3, "useSDCardRoot":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 139
    move v3, v6

    goto :goto_5

    .line 141
    :cond_6
    if-nez v6, :cond_7

    .line 142
    const/4 v3, 0x0

    .line 145
    :cond_7
    :goto_5
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "UseSDCardRoot"

    if-eqz v3, :cond_8

    const-string/jumbo v9, "true"

    goto :goto_6

    :cond_8
    const-string v9, "false"

    :goto_6
    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;

    .line 147
    .end local v3    # "useSDCardRoot":Z
    goto :goto_7

    .line 148
    :cond_9
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :goto_7
    :try_start_2
    invoke-virtual {v8}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->unlock()V

    .line 152
    goto :goto_8

    .line 151
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;->unlock()V

    throw v2

    .line 154
    .end local v8    # "processLock":Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil$ProcessLock;
    :cond_a
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;

    .line 156
    :goto_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "ExternalStorageUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "use_sdcard_root="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v1    # "useSDCardRootStoreStr":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "hasSDCardPermission":Z
    :cond_b
    sget-object v1, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_c

    .line 159
    monitor-exit v0

    return v2

    .line 161
    :cond_c
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return v1

    .line 117
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getESRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 74
    return-object v0

    .line 76
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->b(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 77
    :goto_0
    if-nez v1, :cond_2

    .line 78
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 81
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ExternalStorageUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 47
    return-object v0

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->getESRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 50
    .local v0, "rootDir":Ljava/io/File;
    move-object v0, v1

    if-nez v1, :cond_1

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sdcard"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/ExternalStorageUtil;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 54
    :cond_1
    return-object v0
.end method
