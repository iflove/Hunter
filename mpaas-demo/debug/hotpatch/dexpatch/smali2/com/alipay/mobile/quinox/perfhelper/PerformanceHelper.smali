.class public Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;
.super Ljava/lang/Object;
.source "PerformanceHelper.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static c:Z

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->a:Ljava/util/List;

    const-string v1, "com.taobao.wireless.security"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "com.alipay.android.phone.mobilesdk.aspect"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "com.alipay.pushsdk.BroadcastActionReceiver"

    const-string v1, "com.xiaomi.push.service.receivers.NetworkStatusReceiver"

    const-string v2, "com.alipay.mobile.healthcommon.accountsync.SyncService"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->b:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->c:Z

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->e:Z

    .line 50
    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustLooper(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 380
    const-string v0, "mytest"

    const-string v1, "adjust looper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method public static afterStartApp(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 250
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->c:Z

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->c:Z

    .line 252
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->e:Z

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->e:Z

    .line 256
    :cond_0
    return-void
.end method

.method public static beforeStartApp(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "mytest"

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "O"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    return-void

    .line 234
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isArt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isYunOs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isX86()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    :cond_2
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    const-string v0, "invalid mCanHookArt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 245
    :cond_3
    sput-boolean v2, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->c:Z

    .line 246
    sput-boolean v2, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->e:Z

    .line 247
    return-void

    .line 227
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid apilevel: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public static disableBlackListComponentState(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->recoverBlackListComponentStateIfNeed(Landroid/content/Context;Ljava/util/Map;)V

    .line 330
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v1, "componentStateMap":Ljava/util/Map;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 332
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    move-object v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 333
    sget-object v2, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->b:[Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 335
    .local v6, "component":Ljava/lang/String;
    :try_start_0
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v7, "componentName":Landroid/content/ComponentName;
    nop

    .line 338
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 337
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 341
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_0
    goto :goto_1

    .line 344
    :catchall_0
    move-exception v7

    .line 345
    .local v7, "t":Ljava/lang/Throwable;
    const-string v8, "PerformanceHelper"

    invoke-static {v8, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    .end local v6    # "component":Ljava/lang/String;
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 350
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 351
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "black_list_component_need_recover"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    return-object v1
.end method

.method public static hookArtCl()V
    .locals 2

    .line 151
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->hookArtClNative()V

    return-void

    .line 154
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "hookArtCl: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static native hookArtClNative()V
.end method

.method public static init()V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->initNative(I)V

    return-void

    .line 63
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "init: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static initBizBlackList(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 271
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    const-string v1, "preload_black_list_entry"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 273
    .local v1, "blackListStr":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "list":[Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 276
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    .end local v0    # "list":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static native initNative(I)V
.end method

.method public static isInPreloadBlackList([Ljava/lang/StackTraceElement;)Z
    .locals 7

    .line 282
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    :try_start_0
    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 286
    :cond_0
    const/4 v1, -0x1

    .line 288
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 289
    aget-object v3, p0, v2

    .line 290
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.alipay.mobile.framework.LauncherApplicationAgent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getInstance"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    add-int/lit8 v1, v2, 0x1

    .line 293
    goto :goto_1

    .line 288
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_2
    :goto_1
    if-gez v1, :cond_3

    .line 298
    return v0

    .line 301
    :cond_3
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 302
    aget-object v2, p0, v1

    .line 303
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 308
    goto :goto_2

    .line 310
    :cond_4
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 311
    aget-object p0, p0, v1

    .line 312
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 313
    if-eqz p0, :cond_6

    .line 314
    sget-object v1, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 315
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 316
    return v4

    .line 318
    :cond_5
    goto :goto_3

    .line 323
    :cond_6
    goto :goto_4

    .line 321
    :catchall_0
    move-exception p0

    .line 322
    const-string v1, "PerformanceHelper"

    invoke-static {v1, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    :goto_4
    return v0

    .line 283
    :cond_7
    :goto_5
    return v0
.end method

.method public static log(I)V
    .locals 1
    .param p0, "reason"    # I

    .line 195
    const-string v0, "hookLollipopGc"

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->log(ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method public static log(ILjava/lang/String;)V
    .locals 2
    .param p0, "reason"    # I
    .param p1, "subType"    # Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hook failed, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mytest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public static needHookArtCl(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 266
    const-string v0, "perf_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    const-string v1, "needHookArtCl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needHookDexOpt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "bundleVer"    # Ljava/lang/String;

    .line 208
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    return v1

    .line 211
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    const-string v2, "perf_preferences"

    invoke-virtual {v0, p0, v2, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 213
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    return v1

    .line 217
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    .line 221
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static pauseDex2Oat(I)V
    .locals 2
    .param p0, "apilevel"    # I

    .line 110
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->pauseDex2OatNative(I)V

    return-void

    .line 113
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "pauseDex2Oat: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private static native pauseDex2OatNative(I)V
.end method

.method public static pauseGc()I
    .locals 2

    .line 130
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->pauseGcNative()I

    move-result v0

    return v0

    .line 133
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "pauseGc: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, -0x3

    return v0
.end method

.method public static pauseGcLollipop(I)I
    .locals 2
    .param p0, "apiLevel"    # I

    .line 161
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->pauseGcLollipopNative(I)I

    move-result v0

    return v0

    .line 164
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "pauseGcLollipop: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v0, -0x63

    return v0
.end method

.method private static native pauseGcLollipopNative(I)I
.end method

.method private static native pauseGcNative()I
.end method

.method public static recoverBlackListComponentStateIfNeed(Landroid/content/Context;Ljava/util/Map;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentStates"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 357
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 358
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    const-string v3, "black_list_component_need_recover"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 359
    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 361
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->b:[Ljava/lang/String;

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 363
    .local v6, "component":Ljava/lang/String;
    const/4 v7, 0x0

    .line 364
    .local v7, "state":I
    if-eqz p1, :cond_0

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 365
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 368
    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v7, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    goto :goto_1

    .line 370
    :catchall_0
    move-exception v8

    .line 371
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "PerformanceHelper"

    invoke-static {v9, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    .end local v6    # "component":Ljava/lang/String;
    .end local v7    # "state":I
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    return-void
.end method

.method public static resumeDex2Oat(I)V
    .locals 2
    .param p0, "apilevel"    # I

    .line 120
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeDex2OatNative(I)V

    return-void

    .line 123
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "resumeDex2Oat: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private static native resumeDex2OatNative(I)V
.end method

.method public static resumeGc()V
    .locals 2

    .line 141
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeGcNative()V

    return-void

    .line 144
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "resumeGc: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static resumeGcLollipop(I)V
    .locals 2
    .param p0, "apiLevel"    # I

    .line 172
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->resumeGcLollipopNative(I)V

    return-void

    .line 175
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "resumeGcLollipop: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private static native resumeGcLollipopNative(I)V
.end method

.method private static native resumeGcNative()V
.end method

.method public static setDex2OatOptimized(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 259
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->e:Z

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->e:Z

    .line 263
    :cond_0
    return-void
.end method

.method public static setLibPerfLoaded(Z)V
    .locals 2
    .param p0, "loaded"    # Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libperf loaded = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], product abi bit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductABIBit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerformanceHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-boolean p0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    .line 55
    return-void
.end method

.method public static startHookOpt()V
    .locals 2

    .line 73
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->startHookOptNative()V

    return-void

    .line 76
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "startHookOpt: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private static native startHookOptNative()V
.end method

.method public static startHookVerify(I)I
    .locals 2
    .param p0, "apiLevel"    # I

    .line 99
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->startHookVerifyNative(I)I

    move-result v0

    return v0

    .line 102
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "startHookVerify: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, -0x3

    return v0
.end method

.method private static native startHookVerifyNative(I)I
.end method

.method public static stopHookOpt()V
    .locals 2

    .line 86
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->stopHookOptNative()V

    return-void

    .line 89
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "stopHookOpt: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private static native stopHookOptNative()V
.end method

.method public static stopJit()V
    .locals 2

    .line 182
    sget-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->f:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->stopJitNative()V

    return-void

    .line 185
    :cond_0
    const-string v0, "PerformanceHelper"

    const-string v1, "stopJit: libperf not init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private static native stopJitNative()V
.end method
