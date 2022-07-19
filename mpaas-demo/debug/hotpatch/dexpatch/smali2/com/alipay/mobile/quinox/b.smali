.class public final Lcom/alipay/mobile/quinox/b;
.super Ljava/lang/Object;
.source "QuinoxMultiDex.java"


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 4
    .param p1, "launcherApplication"    # Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/b;->c:J

    .line 37
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/b;->d:Ljava/util/concurrent/CountDownLatch;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/b;->f:Z

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 50
    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 51
    .local v0, "mPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/quinox/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v0    # "mPackageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "QuinoxMultiDex"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {p1}, Landroidx/multidex/MultiDexExtractor;->getMultiDexOptPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    const-string v2, "MultiDexDoneVersion"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "storedVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/quinox/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/b;->e:Z

    .line 58
    return-void
.end method

.method private h()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/quinox/b;->g:Ljava/lang/String;

    const-string v1, "main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    const-string v0, "QuinoxMultiDex"

    const-string v1, "setHookStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const/4 v2, 0x0

    const-string v3, "perf_preferences"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hookoptstart"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    return-void
.end method

.method private j()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/quinox/b;->g:Ljava/lang/String;

    const-string v1, "main"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    const-string v0, "QuinoxMultiDex"

    const-string v1, "setHookEnd"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hookoptstart"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "QuinoxMultiDex"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public final a(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 104
    const-string v0, "QuinoxMultiDex"

    .line 106
    :try_start_0
    const-string v1, "ro.yunos.vm.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 110
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "yunos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_1
    const-string v2, "AOC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 126
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/b;->f:Z

    if-eqz v3, :cond_0

    .line 127
    invoke-static {}, Landroidx/multidex/MultiDex;->setHookOpt()V

    .line 128
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/b;->i()V

    .line 130
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "needHookOpt: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/quinox/b;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v3, p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 132
    iget-boolean p1, p0, Lcom/alipay/mobile/quinox/b;->f:Z

    if-eqz p1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/b;->j()V

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "startup : android.support.multidex.MultiDex.install() cost "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/quinox/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 139
    nop

    .line 145
    iget-boolean p1, p0, Lcom/alipay/mobile/quinox/b;->e:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/alipay/mobile/quinox/b;->f:Z

    if-nez p1, :cond_3

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "writeversion: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/b;->f:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mytest"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {p1}, Landroidx/multidex/MultiDexExtractor;->getMultiDexOptPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 148
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/b;->b:Ljava/lang/String;

    const-string v2, "MultiDexDoneVersion"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    :cond_3
    :try_start_2
    const-string p1, "com.alipay.android.hackbyte.ClassVerifier"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 154
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    return-void

    .line 156
    :catchall_1
    move-exception p1

    .line 157
    const-string v1, "load ClassVerifier error!"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void

    .line 138
    :catchall_2
    move-exception p1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;

    .line 186
    const-string v0, "QuinoxMultiDex"

    const-string v1, "setNeedHookOpt: true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/alipay/mobile/quinox/b;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 189
    .local v0, "spName":Ljava/lang/String;
    const-string v1, "main"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "perf_preferences"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_0
    const-string v0, "perf_preferences"

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hookopt_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 197
    .local v2, "hooked":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hooked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mytest"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-nez v2, :cond_1

    .line 199
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    iput-boolean v5, p0, Lcom/alipay/mobile/quinox/b;->f:Z

    .line 202
    :cond_1
    return-void
.end method

.method public final b()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/b;->c:J

    return-wide v0
.end method

.method public final c()Z
    .locals 6

    .line 83
    invoke-static {}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->isVMCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    .local v0, "bRet":Z
    const/4 v1, 0x0

    .line 89
    .local v1, "needInstallNow":Z
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/b;->e:Z

    if-nez v2, :cond_1

    .line 90
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/b;->h()Z

    move-result v1

    .line 94
    :goto_0
    if-eqz v1, :cond_2

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/quinox/b;->c:J

    .line 96
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/quinox/b;->a(Ljava/lang/ClassLoader;)V

    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/quinox/b;->c:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/quinox/b;->c:J

    .line 100
    :cond_2
    return v0
.end method

.method public final d()V
    .locals 4

    .line 163
    const-string v0, "QuinoxMultiDex"

    const-string v1, "replaceComponentClassLoader() begin."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mPackageInfo"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "packageInfo":Ljava/lang/Object;
    new-instance v2, Lcom/alipay/mobile/quinox/classloader/b;

    const-class v3, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/quinox/classloader/b;-><init>(Lcom/alipay/mobile/quinox/b;Ljava/lang/ClassLoader;)V

    .line 167
    .local v2, "componentClassLoader":Lcom/alipay/mobile/quinox/classloader/b;
    const-string v3, "mClassLoader"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v1    # "packageInfo":Ljava/lang/Object;
    .end local v2    # "componentClassLoader":Lcom/alipay/mobile/quinox/classloader/b;
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "replaceComponentClassLoader() end."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public final e()V
    .locals 5

    .line 175
    const-string v0, "QuinoxMultiDex"

    const-string v1, "rollbackComponentClassLoader() begin."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mPackageInfo"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 178
    .local v2, "packageInfo":Ljava/lang/Object;
    const-string v3, "mClassLoader"

    const-class v4, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v2    # "packageInfo":Ljava/lang/Object;
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v1, "rollbackComponentClassLoader() end."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public final f()V
    .locals 11

    .line 228
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/b;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 229
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    const-string v4, "hookoptstart"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "QuinoxMultiDex"

    const-string v5, "reportHookError"

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v5

    .line 235
    .local v1, "performanceBuilder":Ljava/lang/Object;
    const-string v6, "hookdvmopterror"

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    .line 236
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;)V

    .line 237
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v1    # "performanceBuilder":Ljava/lang/Object;
    return-void

    .line 238
    :catchall_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/b;->e:Z

    return v0
.end method
