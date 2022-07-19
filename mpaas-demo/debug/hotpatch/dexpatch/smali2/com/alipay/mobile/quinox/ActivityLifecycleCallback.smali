.class public Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:Z

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static didOnResumeBefore:Z

.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static sAlive:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->c:Z

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    sput-boolean v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->didOnResumeBefore:Z

    .line 60
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->g:Ljava/util/LinkedHashSet;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->h:Ljava/util/List;

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$1;-><init>(Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;)V

    .line 67
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method private static a(Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;)V
    .locals 3
    .param p0, "displayInfo"    # Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;

    .line 260
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    .line 261
    const-string v0, "ActivityLifecycleCallback"

    const-string v1, "ActivityDisplayInfo size > 50, forget endRecordActivityDisplay ?"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 40
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static addFirstActivityCreatedCallback(Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 2
    .param p0, "callback"    # Lcom/alipay/mobile/quinox/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/quinox/utils/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 275
    const-class v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;

    monitor-enter v0

    .line 276
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static endRecordActivityDisplay()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;",
            ">;"
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    .local v0, "displayInfos":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 253
    return-object v0

    .line 255
    .end local v0    # "displayInfos":Ljava/util/List;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isApplicationInBackground()Z
    .locals 3

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 206
    sget v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    .line 208
    :cond_1
    return v1
.end method

.method public static isApplicationInBackgroundV2()Z
    .locals 1

    .line 218
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch()Z

    move-result v0

    return v0

    .line 221
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInBackground()Z

    move-result v0

    return v0
.end method

.method public static isApplicationInForeground()Z
    .locals 3

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 193
    sget v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    .line 195
    :cond_1
    return v1
.end method

.method public static isFirstActivityCreated()Z
    .locals 2

    .line 269
    const-class v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;

    monitor-enter v0

    .line 270
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->c:Z

    monitor-exit v0

    return v1

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setBackgroundCallback(Ljava/lang/Object;)V
    .locals 4
    .param p0, "callback"    # Ljava/lang/Object;

    .line 228
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 229
    sput-object p0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->e:Ljava/lang/Object;

    .line 231
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onBackground"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 232
    sput-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Throwable;
    sput-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->f:Ljava/lang/reflect/Method;

    .line 235
    const-string v0, "ActivityLifecycleCallback"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 238
    :cond_0
    sput-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->e:Ljava/lang/Object;

    .line 239
    sput-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->f:Ljava/lang/reflect/Method;

    .line 241
    return-void
.end method

.method public static startRecordActivityDisplay()V
    .locals 3

    .line 244
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    sget v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->sAlive:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->sAlive:I

    .line 79
    sget-boolean v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->c:Z

    if-nez v0, :cond_2

    .line 80
    const-class v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;

    monitor-enter v0

    .line 81
    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    const-string v1, "first_created_activity_name"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/data/DataProvider;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 86
    const-string v1, "first_created_activity_refer"

    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/data/DataProvider;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/utils/Callback;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/quinox/utils/Callback;->onCallback(Ljava/lang/Object;)V

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_0

    .line 99
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_1
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "ActivityLifecycleCallback"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 102
    :cond_2
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 105
    sget v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->sAlive:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 106
    sput v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->sAlive:I

    if-gtz v0, :cond_1

    .line 107
    instance-of v0, p1, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    .line 108
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;->isPreloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->waitToFinish()V

    .line 114
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 115
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 146
    sget v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->b:I

    .line 147
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 118
    const-string v0, "Quinox.ActivityLifecycleCallback"

    sget v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->b:I

    .line 119
    sput-boolean v2, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->didOnResumeBefore:Z

    .line 123
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResumed(activity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "className":Ljava/lang/String;
    const-string v2, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.quinox.LauncherActivity"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.quinox.LauncherActivity.alias"

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.permission.PermissionGateActivity"

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.alipay.mobile.quinox.SchemeLauncherActivity"

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupPending(Z)V

    .line 132
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$2;-><init>(Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    .line 137
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 132
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v1    # "className":Ljava/lang/String;
    :cond_0
    return-void

    .line 139
    :catchall_0
    move-exception v1

    .line 140
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 150
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 153
    sget v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->a:I

    .line 155
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->a(Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;)V

    .line 158
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 159
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6

    .line 162
    sget v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 163
    sput v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->a:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 164
    const-string v0, "ActivityLifecycleCallback"

    const-string v3, "application is being background"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v3, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->e:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v4, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->f:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 167
    :try_start_0
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    goto :goto_0

    .line 168
    :catchall_0
    move-exception v3

    .line 169
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :cond_0
    :goto_0
    instance-of v0, p1, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;

    .line 174
    invoke-interface {v0}, Lcom/alipay/mobile/quinox/preload/PreloadableActivity;->isPreloading()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 175
    :goto_1
    if-nez v1, :cond_2

    .line 176
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPrefLagFix;->timeWait()V

    .line 179
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_activity_stop_time"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/data/DataProvider;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->a(Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;)V

    .line 184
    :cond_3
    return-void
.end method
