.class public Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;
.super Ljava/lang/Object;
.source "CrashCenter.java"


# static fields
.field public static final IGNORE_ON_EMPTY:Ljava/lang/String; = "IgnoreOnEmpty"

.field private static final TAG:Ljava/lang/String; = "CrashCenter"

.field public static sCurrentMainLaunchTime:J

.field public static sLastHotPatchLoadBundle:Ljava/lang/String;

.field public static sLastHotPatchLoadTime:J

.field public static sLastJavaCrashTime:J

.field public static sLastJavaStartupCrashLaunchTime:J

.field public static sLastMainLaunchTime:J

.field public static sLastNativeStartupCrashLaunchTime:J

.field public static sStartupFailTimes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastMainLaunchTime:J

    .line 32
    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sCurrentMainLaunchTime:J

    .line 34
    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sStartupFailTimes:J

    .line 38
    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastJavaCrashTime:J

    .line 42
    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastJavaStartupCrashLaunchTime:J

    .line 43
    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastNativeStartupCrashLaunchTime:J

    .line 47
    sput-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initCrashHistoryInfo(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    const-string v1, "framework_safeguard_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    .local v1, "frameworkSafeguardPreferences":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v3, "key_launch_time_when_j_startup_crash"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastJavaStartupCrashLaunchTime:J

    .line 54
    const-string v0, "key_launch_time_when_c_startup_crash"

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastNativeStartupCrashLaunchTime:J

    .line 55
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    const-string v3, "framework_preferences"

    invoke-virtual {v0, p0, v3, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    const-string v3, "key_startup_record_times"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sStartupFailTimes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v1    # "frameworkSafeguardPreferences":Landroid/content/SharedPreferences;
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "CrashCenter"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static isLastProcessStartupCrash()Z
    .locals 6

    .line 63
    sget-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sStartupFailTimes:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 64
    return v2

    .line 66
    :cond_0
    sget-wide v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastMainLaunchTime:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    .line 67
    sget-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastJavaStartupCrashLaunchTime:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    sget-wide v3, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastNativeStartupCrashLaunchTime:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_2

    .line 68
    :cond_1
    return v2

    .line 71
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static processNativeCrashFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "crashFile"    # Ljava/io/File;
    .param p1, "processName"    # Ljava/lang/String;

    .line 116
    const-string v0, " "

    const/4 v1, 0x0

    .line 117
    .local v1, "isCurrentProcess":Z
    const/4 v2, 0x0

    .line 119
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v3

    .line 122
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 123
    const-string v3, ">>>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "<<<"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    move v1, v3

    goto :goto_0

    .line 128
    :cond_1
    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IgnoreOnEmpty"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 135
    return-void

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "CrashCenter"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "tr":Ljava/lang/Throwable;
    goto :goto_1

    .line 134
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static scanNativeCrashes(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;

    .line 76
    :try_start_0
    const-string v0, "crash"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 77
    .local v2, "root":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v3, v1

    .line 79
    .local v3, "files":[Ljava/io/File;
    move-object v3, v0

    if-eqz v0, :cond_1

    array-length v0, v3

    if-lez v0, :cond_1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "sortFiles":Ljava/util/List;
    move-object v1, v0

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter$1;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter$1;-><init>()V

    .line 90
    .local v0, "comparator":Ljava/util/Comparator;
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    const/4 v4, 0x0

    .line 93
    .local v4, "count":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 94
    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x3

    if-ge v4, v7, :cond_1

    .line 97
    if-eqz v6, :cond_0

    .line 99
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CrashSDK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jni.log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 100
    invoke-static {v6, p1}, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->processNativeCrashFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 104
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 109
    .end local v0    # "comparator":Ljava/util/Comparator;
    .end local v1    # "sortFiles":Ljava/util/List;
    .end local v2    # "root":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "count":I
    :cond_1
    return-void

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "CrashCenter"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
