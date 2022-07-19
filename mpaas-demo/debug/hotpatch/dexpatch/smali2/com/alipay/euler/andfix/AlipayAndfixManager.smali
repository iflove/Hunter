.class public Lcom/alipay/euler/andfix/AlipayAndfixManager;
.super Ljava/lang/Object;
.source "AlipayAndfixManager.java"


# static fields
.field static final APP_RUNNING:Ljava/lang/String; = "App_Running"

.field public static final KEY_HOTPATCH_CLEAN_PATTERN:Ljava/lang/String; = "hotpatch_clean_pattern"

.field static final TAG:Ljava/lang/String; = "DynamicRelease_AndFix"

.field private static a:Lcom/alipay/euler/andfix/AlipayAndfixManager;


# instance fields
.field private b:Lcom/alipay/euler/andfix/patch/PatchManager;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/regex/Pattern;

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->e:Z

    .line 53
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DynamicRelease_AndFix"

    const-string v2, "AlipayAndfixManager() => new PatchManager()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->c:Landroid/content/Context;

    .line 56
    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->c:Landroid/content/Context;

    .line 59
    :cond_0
    new-instance v0, Lcom/alipay/euler/andfix/patch/PatchManager;

    new-instance v1, Lcom/alipay/euler/andfix/AlipayLogger;

    invoke-direct {v1}, Lcom/alipay/euler/andfix/AlipayLogger;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 62
    iget-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/instantrun/compat/AInstantRunManager;->createInstance(Landroid/content/Context;)Lcom/alipay/instantrun/compat/AInstantRunManager;

    .line 63
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    const-string v0, "crash"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 182
    .local v3, "root":Ljava/io/File;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v4, v2

    .line 184
    .local v4, "files":[Ljava/io/File;
    move-object v4, v0

    if-eqz v0, :cond_4

    array-length v0, v4

    if-lez v0, :cond_4

    .line 185
    const-wide/16 v5, 0x0

    .line 186
    .local v5, "lastModified":J
    const/4 v0, 0x0

    .line 187
    .local v0, "lastModifiedFile":Ljava/io/File;
    array-length v7, v4

    const-wide/16 v8, 0x0

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v10, v4, v1

    .line 188
    .local v2, "file":Ljava/io/File;
    move-object v2, v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CrashSDK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "jni.log"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 190
    .local v8, "modify":J
    move-wide v8, v10

    cmp-long v12, v10, v5

    if-lez v12, :cond_0

    .line 191
    move-wide v5, v8

    .line 192
    move-object v0, v2

    .line 187
    .end local v2    # "file":Ljava/io/File;
    .end local v8    # "modify":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "DynamicRelease_AndFix"

    if-eqz v0, :cond_3

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleCrashOnStartup crash file:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v2, 0x0

    .line 201
    .local v2, "clean":Z
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v8, "App_StartUp"

    invoke-direct {p0, v7, v8}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    .line 204
    goto :goto_1

    .line 202
    :catch_0
    move-exception v7

    .line 203
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    if-nez v2, :cond_2

    .line 208
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->filter(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    return-void

    .line 209
    :catch_1
    move-exception v7

    .line 210
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    invoke-interface {v8, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v2    # "clean":Z
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    return-void

    .line 214
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v7, "handleCrashOnStartup but no crash files"

    invoke-interface {v2, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v0    # "lastModifiedFile":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "lastModified":J
    :cond_4
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "reason"    # Ljava/lang/String;

    .line 227
    const-string v0, "DynamicRelease_AndFix"

    const/4 v1, 0x0

    .line 229
    .local v1, "isr":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 230
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 233
    .local v3, "e":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 234
    .local v4, "isInvalidCrash":Z
    const/4 v5, 0x0

    .line 235
    .local v5, "isStartupCrash":Z
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    const/4 v8, 0x1

    if-eqz v6, :cond_3

    .line 236
    const-string v6, "Process Name: \'UNKNOWN\'"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "AlipayAndfixManager.handleNativeCrash break, invalid crash;"

    const-string v10, "): "

    const-string v11, "AlipayAndfixManager.handleNativeCrash("

    if-eqz v6, :cond_1

    .line 237
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v0, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v0, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v4, 0x1

    .line 241
    goto :goto_1

    .line 243
    :cond_1
    const-string/jumbo v6, "signal 15 (SIGTERM), code 0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v0, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-interface {v6, v0, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v4, 0x1

    .line 248
    goto :goto_1

    .line 250
    :cond_2
    const-string v6, "StartupCrash"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 256
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 280
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 257
    return v2

    .line 259
    :cond_4
    if-eqz v5, :cond_6

    .line 260
    :try_start_2
    const-string v6, "App_Exit"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/alipay/euler/andfix/AlipayLogger;->writeLog(Z)V

    .line 262
    iget-object v6, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->c:Landroid/content/Context;

    const-string v9, "framework_preferences"

    invoke-virtual {v6, v9, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 263
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v9, "native_crash_times"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    iget-object v6, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v6, v2}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 267
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 269
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 270
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v6

    .line 271
    if-eqz v6, :cond_5

    .line 272
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    :cond_5
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 275
    return v8

    .line 259
    .end local v3    # "e":Ljava/io/BufferedReader;
    .end local v4    # "isInvalidCrash":Z
    .end local v5    # "isStartupCrash":Z
    .end local v7    # "line":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 277
    :catchall_0
    move-exception v3

    .line 278
    .local v3, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 281
    nop

    .line 282
    return v2

    .line 280
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/alipay/euler/andfix/AlipayAndfixManager;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/euler/andfix/AlipayAndfixManager;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/alipay/euler/andfix/AlipayAndfixManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/alipay/euler/andfix/AlipayAndfixManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/alipay/euler/andfix/AlipayAndfixManager;

    invoke-direct {v1, p0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;
    .locals 1

    .line 77
    sget-object v0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a:Lcom/alipay/euler/andfix/AlipayAndfixManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized filter(Ljava/lang/String;)Z
    .locals 5
    .param p1, "exception"    # Ljava/lang/String;

    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 124
    iput-boolean v1, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->e:Z

    .line 126
    iget-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->c:Landroid/content/Context;

    const-string v2, "DynamicRelease"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    const-string v2, "hotpatch_clean_pattern"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    .line 128
    .local v2, "pattern":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v2}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->setCleanPatchPattern(Ljava/lang/String;)V

    .line 134
    .end local v2    # "pattern":Ljava/lang/String;
    .end local p0    # "this":Lcom/alipay/euler/andfix/AlipayAndfixManager;
    :cond_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->d:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "DynamicRelease_AndFix"

    const-string v4, "cleanPatchPattern.filter()==true. Go to cleanPatches()"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {v1}, Lcom/alipay/euler/andfix/AlipayLogger;->writeLog(Z)V

    .line 140
    iget-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v0, v2}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatches(Z)V

    .line 142
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/instantrun/compat/AInstantRunManager;->cleanPatches(Z)V

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-static {}, Lcom/alipay/dexpatch/DexPatchManager;->getInstance()Lcom/alipay/dexpatch/DexPatchManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZ)V

    .line 149
    :cond_1
    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "DynamicRelease_AndFix"

    const-string v1, "mCleanPatchPattern.matcher(exception).find() return false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    const-string v0, "DynamicRelease_AndFix"

    const-string v1, "mCleanPatchPattern==null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_4
    :goto_0
    monitor-exit p0

    return v2

    .line 122
    .end local p1    # "exception":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPatchManager()Lcom/alipay/euler/andfix/patch/PatchManager;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    return-object v0
.end method

.method public init(Ljava/lang/String;Z)Lcom/alipay/euler/andfix/patch/PatchManager;
    .locals 7
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "debuggable"    # Z

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "start":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PatchManager.init(versionName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", debuggable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DynamicRelease_AndFix"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->c:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->a(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->initCrashOnStartup()V

    .line 91
    iget-object v2, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v2, p1, p2}, Lcom/alipay/euler/andfix/patch/PatchManager;->init(Ljava/lang/String;Z)V

    .line 95
    invoke-static {}, Lcom/alipay/instantrun/compat/AInstantRunManager;->getInstance()Lcom/alipay/instantrun/compat/AInstantRunManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/alipay/instantrun/compat/AInstantRunManager;->init(Ljava/lang/String;Z)V

    .line 97
    iget-object v2, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/hotpatch/ApiLevelChanged;->processApiLevelChanged(Landroid/content/Context;Lcom/alipay/euler/andfix/patch/PatchManager;)Z

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "AlipayAndfixManager.init() cost "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    return-object v2
.end method

.method public initCrashOnStartup()V
    .locals 2

    .line 160
    const-string v0, "DynamicRelease_AndFix"

    const-string v1, "initCrashOnStartup.setOnNativeCrashUploadListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/alipay/euler/andfix/AlipayAndfixManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/euler/andfix/AlipayAndfixManager$1;-><init>(Lcom/alipay/euler/andfix/AlipayAndfixManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setOnNativeCrashUploadListener(Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;)V

    .line 178
    return-void
.end method

.method public declared-synchronized setCleanPatchPattern(Ljava/lang/String;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DynamicRelease_AndFix"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCleanPatchPattern("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 113
    :try_start_1
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->d:Ljava/util/regex/Pattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DynamicRelease_AndFix"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 118
    .end local p0    # "this":Lcom/alipay/euler/andfix/AlipayAndfixManager;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/euler/andfix/AlipayAndfixManager;->d:Ljava/util/regex/Pattern;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    monitor-exit p0

    return-void

    .line 108
    .end local p1    # "pattern":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
