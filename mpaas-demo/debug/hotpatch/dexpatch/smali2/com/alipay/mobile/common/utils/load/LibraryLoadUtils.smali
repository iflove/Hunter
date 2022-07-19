.class public Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;
.super Ljava/lang/Object;
.source "LibraryLoadUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/zip/ZipFile;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-class v0, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, "lib"

    sput-object v0, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->a:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->b:Ljava/util/zip/ZipFile;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "armeabi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/content/Context;
    .locals 4

    .line 208
    const-class v0, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 209
    const-string v1, "com.alipay.mobile.quinox.LauncherApplication"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 210
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v2

    .line 212
    .local v1, "context":Ljava/lang/Object;
    move-object v1, v0

    instance-of v0, v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 213
    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 215
    :cond_0
    return-object v2
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "destFile"    # Ljava/io/File;

    const-class v0, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->runningBit()I

    move-result v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 141
    .local v1, "running64":Z
    :goto_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 143
    .local v2, "cpuSet":Ljava/util/Set;
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 145
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    .line 146
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 148
    :cond_1
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->is64ABI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->is64ABI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_3
    sget-object v5, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->c:[Ljava/lang/String;

    array-length v6, v5

    move-object v7, v4

    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v8, v5, v3

    .line 157
    .local v7, "abi":Ljava/lang/String;
    move-object v7, v8

    invoke-static {v8}, Lcom/alipay/mobile/common/logging/util/DeviceUtil;->is64ABI(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 158
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v7    # "abi":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 165
    .local v3, "path":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->b:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_6

    .line 166
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->b:Ljava/util/zip/ZipFile;

    .line 169
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "extractLibFromSrcApk: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",lib:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, "in":Ljava/io/InputStream;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 174
    .local v7, "cpu":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .local v8, "entryName":Ljava/lang/String;
    :try_start_1
    sget-object v9, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->b:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 179
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v4, v9

    if-eqz v9, :cond_7

    .line 180
    sget-object v9, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->b:Ljava/util/zip/ZipFile;

    invoke-virtual {v9, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 181
    move-object v5, v9

    if-eqz v9, :cond_7

    .line 182
    goto :goto_5

    .line 192
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v9

    goto :goto_4

    .line 187
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 188
    move-object v5, v9

    if-nez v9, :cond_8

    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "load entry fail:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_8
    goto :goto_3

    .line 193
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "get entry fail:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "cpu":Ljava/lang/String;
    .end local v8    # "entryName":Ljava/lang/String;
    goto :goto_3

    .line 198
    :cond_9
    :goto_5
    if-eqz v5, :cond_b

    .line 202
    invoke-static {v5, p2}, Lcom/alipay/mobile/common/utils/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_a

    .line 205
    monitor-exit v0

    return-void

    .line 203
    :cond_a
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v6, "copy lib entry fail"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v6, "find lib entry fail"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v1    # "running64":Z
    .end local v2    # "cpuSet":Ljava/util/Set;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "libName":Ljava/lang/String;
    .end local p2    # "destFile":Ljava/io/File;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "architecture"    # Ljava/lang/String;

    .line 281
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 282
    return v0

    .line 283
    :cond_0
    const-string v1, "ARMv7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_1
    return v0
.end method

.method public static getArchitecture()Ljava/lang/String;
    .locals 5

    .line 258
    const/4 v0, 0x0

    .local v0, "tempArchitecture":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 259
    move-object v0, v1

    const-string v2, "ARMv7"

    const-string v3, "ARM"

    const-string v4, "armeabi-v7a"

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    return-object v2

    .line 263
    :cond_0
    return-object v3

    .line 266
    :cond_1
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 267
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    return-object v2

    .line 270
    :cond_2
    return-object v3
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 2
    .param p0, "library"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;ZLjava/lang/ClassLoader;)V

    .line 120
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p0, "library"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 127
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;ZLjava/lang/ClassLoader;)V

    .line 128
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "library"    # Ljava/lang/String;
    .param p1, "v7aOptimize"    # Z

    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;ZLjava/lang/ClassLoader;)V

    .line 124
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;ZLjava/lang/ClassLoader;)V
    .locals 5
    .param p0, "library"    # Ljava/lang/String;
    .param p1, "v7aOptimize"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 47
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->loadLibraryHasResult(Ljava/lang/String;ZLjava/lang/ClassLoader;)Z

    move-result v0

    .line 48
    .local v0, "result":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadLibrary "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string/jumbo v4, "success"

    goto :goto_0

    :cond_0
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static loadLibraryHasResult(Ljava/lang/String;ZLjava/lang/ClassLoader;)Z
    .locals 21
    .param p0, "library"    # Ljava/lang/String;
    .param p1, "v7aOptimize"    # Z
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 52
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 53
    .local v4, "start":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->runningBit()I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x40

    if-ne v0, v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 54
    .local v8, "running64":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v9, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "loadLibrary:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",v7aOptimize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",classLoader:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p0

    .line 56
    .local v0, "finalLibraryName":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v8, :cond_1

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->getArchitecture()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->a(Ljava/lang/String;)Z

    move-result v9

    move v10, v6

    .line 58
    .local v10, "isARMv7":Z
    if-eqz v9, :cond_1

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-v7a"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 64
    .end local v10    # "isARMv7":Z
    :cond_1
    move-object v9, v0

    .end local v0    # "finalLibraryName":Ljava/lang/String;
    .local v9, "finalLibraryName":Ljava/lang/String;
    :goto_1
    const-string v10, " end, cost:"

    const-string v11, "loadLibrary :"

    const/4 v13, 0x2

    if-nez v3, :cond_2

    .line 65
    :try_start_0
    invoke-static {v9}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_3

    .line 68
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    move-object v14, v0

    .line 69
    .local v14, "runtime":Ljava/lang/Runtime;
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v9, v0, v6

    aput-object v3, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v15, v0

    .line 71
    .local v15, "objects":[Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v12, "loadLibrary"

    new-array v7, v13, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v7, v6

    const-class v16, Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    aput-object v16, v7, v6

    invoke-virtual {v0, v12, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    move-object v12, v7

    .line 72
    .local v12, "loadLibraryMethod":Ljava/lang/reflect/Method;
    move-object v7, v0

    .end local v12    # "loadLibraryMethod":Ljava/lang/reflect/Method;
    .local v7, "loadLibraryMethod":Ljava/lang/reflect/Method;
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    invoke-virtual {v7, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v7    # "loadLibraryMethod":Ljava/lang/reflect/Method;
    goto :goto_3

    .line 74
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_2
    move-object v0, v7

    .line 75
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_3

    .line 77
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "loadLibrary0"

    new-array v12, v13, [Ljava/lang/Class;

    const-class v16, Ljava/lang/ClassLoader;

    const/16 v17, 0x0

    aput-object v16, v12, v17

    const-class v16, Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v16, v12, v13

    invoke-virtual {v6, v7, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v7, 0x0

    move-object v12, v7

    .line 78
    .restart local v12    # "loadLibraryMethod":Ljava/lang/reflect/Method;
    move-object v7, v6

    .end local v12    # "loadLibraryMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "loadLibraryMethod":Ljava/lang/reflect/Method;
    :try_start_4
    invoke-virtual {v6, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v12, v6

    aput-object v9, v12, v13

    invoke-virtual {v7, v14, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 83
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v7    # "loadLibraryMethod":Ljava/lang/reflect/Method;
    .end local v14    # "runtime":Ljava/lang/Runtime;
    .end local v15    # "objects":[Ljava/lang/Object;
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 113
    :cond_3
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v6, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_4
    goto/16 :goto_7

    .line 83
    :catchall_3
    move-exception v0

    const/4 v7, 0x0

    goto :goto_5

    :catchall_4
    move-exception v0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_5
    move-object v6, v0

    .line 84
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v12, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    invoke-interface {v0, v12, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 86
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->a()Landroid/content/Context;

    move-result-object v0

    move-object v13, v15

    .line 87
    .local v13, "context":Landroid/content/Context;
    move-object v13, v0

    if-eqz v0, :cond_7

    .line 91
    invoke-static {v9}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "libName":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "plugins_lib"

    const/4 v2, 0x0

    invoke-virtual {v13, v15, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v15

    invoke-direct {v14, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v7

    .line 95
    .local v2, "libFile":Ljava/io/File;
    move-object v2, v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v19, 0x0

    cmp-long v7, v14, v19

    if-gtz v7, :cond_5

    .line 96
    :cond_4
    invoke-static {v13, v0, v2}, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 98
    :cond_5
    if-nez v3, :cond_6

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_6

    .line 102
    :cond_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 103
    .local v7, "runtime":Ljava/lang/Runtime;
    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/4 v14, 0x1

    aput-object v3, v15, v14

    move-object v14, v15

    .line 104
    .local v14, "objects":[Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "libName":Ljava/lang/String;
    .local v16, "libName":Ljava/lang/String;
    const-string v0, "load"

    move-object/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "libFile":Ljava/io/File;
    .local v19, "libFile":Ljava/io/File;
    new-array v2, v2, [Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v18, v2, v17

    const-class v18, Ljava/lang/ClassLoader;

    const/4 v3, 0x1

    aput-object v18, v2, v3

    invoke-virtual {v15, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 105
    .local v2, "loadLibraryMethod":Ljava/lang/reflect/Method;
    move-object v2, v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 106
    invoke-virtual {v2, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 111
    .end local v2    # "loadLibraryMethod":Ljava/lang/reflect/Method;
    .end local v7    # "runtime":Ljava/lang/Runtime;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "objects":[Ljava/lang/Object;
    .end local v16    # "libName":Ljava/lang/String;
    .end local v19    # "libFile":Ljava/io/File;
    nop

    .line 113
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 115
    :goto_7
    const/4 v2, 0x1

    return v2

    .line 88
    .restart local v6    # "e":Ljava/lang/Throwable;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "context not found"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .end local v4    # "start":J
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v8    # "running64":Z
    .end local v9    # "finalLibraryName":Ljava/lang/String;
    .end local p0    # "library":Ljava/lang/String;
    .end local p1    # "v7aOptimize":Z
    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 108
    .end local v13    # "context":Landroid/content/Context;
    .restart local v4    # "start":J
    .restart local v6    # "e":Ljava/lang/Throwable;
    .restart local v8    # "running64":Z
    .restart local v9    # "finalLibraryName":Ljava/lang/String;
    .restart local p0    # "library":Ljava/lang/String;
    .restart local p1    # "v7aOptimize":Z
    .restart local p2    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_5
    move-exception v0

    .line 109
    .local v0, "exp":Ljava/lang/Throwable;
    :try_start_8
    const-string v2, "load_library"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x0

    return v2

    .line 113
    .end local v0    # "exp":Ljava/lang/Throwable;
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_6
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/utils/load/LibraryLoadUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
