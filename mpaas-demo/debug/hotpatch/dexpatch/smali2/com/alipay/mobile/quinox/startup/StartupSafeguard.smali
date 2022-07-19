.class public final Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;
    }
.end annotation


# static fields
.field static final ANOMALOUS_STARTUP_CRASH:Ljava/lang/String; = "crash"

.field static final ANOMALOUS_STARTUP_PENDING:Ljava/lang/String; = "pending"

.field static final CRASH:Ljava/lang/String; = "crash"

.field public static final FRAME_LIB_NO_COPY_BUNDLE:Ljava/lang/String; = "1000"

.field public static final FRAME_LIB_NO_COPY_LIB:Ljava/lang/String; = "1001"

.field public static final KEY_CHECK_MD5_FOR_BUNDLES:Ljava/lang/String; = "key_check_md5_for_bundles"

.field public static final KEY_CHECK_MD5_FOR_NATIVE_LIB:Ljava/lang/String; = "key_check_md5_for_native_lib"

.field static final KEY_CONTINUOUS_CRASH_TIMES:Ljava/lang/String; = "key_continuous_crash_times"

.field public static final KEY_ENSURE_NATIVE_LIBS_ONLY:Ljava/lang/String; = "key_ensure_native_libs_only_"

.field static final KEY_LAST_CRASH_SUSPECT_REPORT_TIME:Ljava/lang/String; = "key_lcsrt"

.field static final KEY_LAUNCH_TIME_WHEN_C_CRASH:Ljava/lang/String; = "key_launch_time_when_c_crash"

.field public static final KEY_LAUNCH_TIME_WHEN_C_STARTUP_CRASH:Ljava/lang/String; = "key_launch_time_when_c_startup_crash"

.field static final KEY_LAUNCH_TIME_WHEN_J_CRASH:Ljava/lang/String; = "key_launch_time_when_j_crash"

.field public static final KEY_LAUNCH_TIME_WHEN_J_STARTUP_CRASH:Ljava/lang/String; = "key_launch_time_when_j_startup_crash"

.field static final KEY_LAUNCH_TIME_WHEN_S_DEAD:Ljava/lang/String; = "key_launch_time_when_s_dead"

.field static final KEY_MAIN_LAST_CLICK_TIME:Ljava/lang/String; = "key_m_l_c_t"

.field static final KEY_MAIN_LAST_LAUNCH_TIME:Ljava/lang/String; = "key_m_l_l_t"

.field static final KEY_STARTUP_RECORD_CRASH_TIMES:Ljava/lang/String; = "key_startup_record_times"

.field static final KEY_STARTUP_RECORD_PENDING_TIMES:Ljava/lang/String; = "key_startup_record_times"

.field static final MF_KEY_IPP_COMPONENTS:Ljava/lang/String; = "ipp.components"

.field static final MF_KEY_IPP_COMPONENTS_V2:Ljava/lang/String; = "ipp.components.v2"

.field public static final MTBIZ_FRAME:Ljava/lang/String; = "BIZ_FRAME"

.field public static final MTBIZ_FRAME_LIB_NO_COPY:Ljava/lang/String; = "FRAME_BUNDLE_NO_COPY"

.field static final MULTIDEX_INSTALL:Ljava/lang/String; = "androidx.multidex.MultiDex.install"

.field public static final PERFORMANCE_PREFERENCES:Ljava/lang/String; = "perf_preferences"

.field public static final TAG:Ljava/lang/String; = "StartupSafeguard"

.field private static a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

.field public static gcSum:I

.field public static volatile hasExtractBundles:Z

.field public static mAllClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mLauncherActivated:Z

.field public static mShouldOptimizeBootFinishSpeed:Z

.field public static processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

.field public static processStartupTime:J

.field public static sRunAnomalyDetection:Z

.field private static t:J

.field private static u:J


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:Z

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field mInternalPrepareMonitorTimerTask:Ljava/util/TimerTask;

.field public mProcessAttachTime:J

.field private n:Ljava/lang/String;

.field private o:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private p:J

.field private q:I

.field private r:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;

.field private s:Ljava/util/TimerTask;

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private w:J

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private y:I

.field private final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 142
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->gcSum:I

    .line 147
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processStartupTime:J

    .line 148
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 153
    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->hasExtractBundles:Z

    .line 173
    sput-object v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mAllClasses:Ljava/util/Set;

    .line 178
    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mShouldOptimizeBootFinishSpeed:Z

    .line 180
    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mLauncherActivated:Z

    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->sRunAnomalyDetection:Z

    .line 1384
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->t:J

    .line 1385
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->u:J

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->h:Z

    .line 188
    const-string v0, "FRAME_CLIENT_STARTUP_DEAD"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:Ljava/lang/String;

    .line 190
    const-string v0, "1111"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->j:Ljava/lang/String;

    .line 191
    const-string v0, "1112"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->k:Ljava/lang/String;

    .line 192
    const-string v0, "1113"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->l:Ljava/lang/String;

    .line 193
    const-string v0, "1114"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->m:Ljava/lang/String;

    .line 194
    const-string v0, "1115"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->n:Ljava/lang/String;

    .line 292
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->p:J

    .line 293
    iput v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->v:Ljava/lang/ref/WeakReference;

    .line 1387
    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->w:J

    .line 1389
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1395
    iput v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I

    .line 1397
    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mInternalPrepareMonitorTimerTask:Ljava/util/TimerTask;

    .line 1399
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1401
    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->A:J

    .line 1402
    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->B:J

    .line 1618
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->C:J

    .line 1619
    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    .line 1620
    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mProcessAttachTime:J

    .line 1951
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->E:Z

    .line 211
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->o:Ljava/util/concurrent/CountDownLatch;

    .line 212
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 860
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    const-string v1, "framework_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 861
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 862
    .local v0, "times":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 863
    return v0
.end method

.method private a(Z)I
    .locals 7

    .line 732
    const-string v0, "framework_safeguard_preferences"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 735
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object p1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 736
    const-string v2, "key_launch_time_when_j_crash"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 737
    cmp-long p1, v5, v3

    if-lez p1, :cond_1

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->C:J

    cmp-long p1, v5, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 739
    :goto_1
    if-eqz p1, :cond_2

    .line 740
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a()V

    .line 743
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object p1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 744
    const-string v0, "key_continuous_crash_times"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 745
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0xa

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 747
    return v1
.end method

.method private a()V
    .locals 4

    .line 755
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "framework_safeguard_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 756
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "key_continuous_crash_times"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 759
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;ZLjava/lang/Object;)V
    .locals 4
    .param p1, "times"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "isJava"    # Z
    .param p4, "crashInfo"    # Ljava/lang/Object;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bootFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finalClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "_reason":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleContinuousCrash times="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartupSafeguard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleContinuousCrash isJava="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1044
    const-string v1, "handleContinuousCrash too much times, just disable ipp components"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Z)V

    .line 1049
    return-void

    .line 1040
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e()V

    .line 1041
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(IZLjava/lang/Object;)V

    .line 1042
    return-void

    .line 1036
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d()V

    .line 1037
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(IZLjava/lang/Object;)V

    .line 1038
    return-void

    .line 1032
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c()V

    .line 1033
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(IZLjava/lang/Object;)V

    .line 1034
    return-void
.end method

.method private a(IZLjava/lang/Object;)V
    .locals 24

    .line 1085
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, " pc "

    const-string v4, "    0"

    const-string v5, "/oat/arm/base.odex"

    const-string v6, "dexpatch/workspace"

    const-string v7, "StartupSafeguard"

    const-string v8, "analyzeCrashAndRecover, redo ensureNativeLibs"

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "key_ensure_native_libs_only_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1088
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v9

    iget-object v10, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v11, "framework_preferences"

    const/4 v12, 0x0

    .line 1293
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1088
    invoke-virtual {v9, v10, v11, v12}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1089
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1091
    const/4 v8, 0x2

    if-eqz p2, :cond_a

    if-eqz v2, :cond_a

    .line 1092
    instance-of v9, v2, Ljava/lang/Throwable;

    if-eqz v9, :cond_a

    .line 1093
    nop

    .line 1094
    nop

    .line 1095
    nop

    .line 1097
    move-object v9, v2

    check-cast v9, Ljava/lang/Throwable;

    move-object v11, v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1098
    :goto_0
    if-eqz v11, :cond_5

    .line 1099
    instance-of v10, v11, Landroid/content/res/Resources$NotFoundException;

    if-nez v10, :cond_0

    instance-of v10, v11, Landroid/view/InflateException;

    if-eqz v10, :cond_1

    .line 1101
    :cond_0
    const/4 v14, 0x1

    .line 1103
    :cond_1
    instance-of v10, v11, Ljava/lang/UnsatisfiedLinkError;

    if-eqz v10, :cond_2

    .line 1104
    const/4 v15, 0x1

    .line 1106
    :cond_2
    instance-of v10, v11, Lcom/alipay/mobile/quinox/error/BundleResourceException;

    if-eqz v10, :cond_3

    .line 1107
    const/4 v14, 0x1

    .line 1109
    :cond_3
    instance-of v10, v11, Ljava/lang/ClassCastException;

    if-eqz v10, :cond_4

    .line 1111
    const/16 v16, 0x1

    .line 1118
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    const/4 v10, 0x1

    goto :goto_0

    .line 1122
    :cond_5
    if-eqz v14, :cond_6

    .line 1123
    if-eq v0, v8, :cond_6

    .line 1124
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f()V

    .line 1129
    :cond_6
    if-nez v14, :cond_7

    if-nez v15, :cond_7

    if-eqz v16, :cond_8

    .line 1130
    :cond_7
    if-eq v0, v8, :cond_8

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->fullCheckExtraction()V

    .line 1141
    :cond_8
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->parse(Ljava/lang/Throwable;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->isAndFixCrash()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b()V

    .line 1146
    :cond_9
    if-eqz v0, :cond_a

    const-wide/16 v9, 0x3e8

    invoke-virtual {v0, v9, v10}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->isCrashAfterHotPatch(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b()V

    .line 1153
    :cond_a
    if-nez p2, :cond_33

    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 1154
    check-cast v2, Ljava/lang/String;

    .line 1155
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v9, "signal 11 (SIGSEGV), code 1 (SEGV_MAPERR)"

    const-string v10, "dex"

    const-string v14, "\t"

    const-string v15, "  pc "

    const-string v12, "    #0"

    const-string v11, " "

    const-string v8, ""

    move-object/from16 v17, v5

    const-string v5, "\n"

    if-nez v0, :cond_17

    .line 1156
    const-string v0, "signal 11 (SIGSEGV), code 2 (SEGV_ACCERR)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1157
    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v18, v13

    goto/16 :goto_6

    .line 1158
    :cond_c
    :goto_1
    nop

    .line 1159
    nop

    .line 1160
    const/4 v0, 0x0

    :goto_2
    move-object/from16 v18, v13

    const/4 v13, 0x2

    if-ge v0, v13, :cond_15

    .line 1161
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1162
    move-object/from16 v19, v3

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1163
    if-le v3, v13, :cond_13

    if-lez v13, :cond_13

    move-object/from16 v20, v4

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v21, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_14

    .line 1164
    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1165
    invoke-virtual {v3, v14, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1166
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1167
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    array-length v6, v3

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v6, :cond_e

    move/from16 v22, v6

    aget-object v6, v3, v13

    .line 1170
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 1173
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_d
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v22

    goto :goto_3

    .line 1175
    :cond_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x4

    if-lt v3, v6, :cond_14

    .line 1176
    const/4 v3, 0x3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1178
    iget-object v3, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1179
    const-string v3, "app_plugins_opt"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "app_SGLib"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "app_ucmsdk"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1180
    :cond_f
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1181
    nop

    .line 1182
    goto :goto_4

    .line 1183
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "/data/data/"

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1184
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1185
    nop

    .line 1186
    nop

    .line 1199
    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    .line 1188
    :cond_11
    const/4 v3, 0x3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1190
    iget-object v3, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1191
    const-string v3, "/app_plugins_lib/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "/lib/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1192
    :cond_12
    const-string v3, ".so"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1193
    nop

    .line 1194
    const/4 v6, 0x0

    goto :goto_5

    .line 1163
    :cond_13
    move-object/from16 v20, v4

    move-object/from16 v21, v6

    .line 1160
    :cond_14
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v6, v21

    goto/16 :goto_2

    :cond_15
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1199
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "analyzeCrashAndRecover, clear target dex:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 1203
    :cond_16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "analyzeCrashAndRecover, md5 target so:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g()V

    goto :goto_6

    .line 1155
    :cond_17
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v18, v13

    .line 1216
    :cond_18
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1217
    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1218
    const-string v0, "signal 7 (SIGBUS), code 2 (BUS_ADRERR)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1219
    :cond_19
    const/4 v0, 0x0

    :goto_7
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1b

    .line 1220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1221
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1222
    if-le v4, v3, :cond_1a

    if-lez v3, :cond_1a

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_1a

    .line 1223
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1225
    const-string v4, "/system/bin/linker"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1226
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g()V

    .line 1227
    goto :goto_8

    .line 1219
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1232
    :cond_1b
    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1233
    const-string v0, "signal 7 (SIGBUS), code 1 (BUS_ADRALN)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1234
    const/4 v0, 0x0

    :goto_9
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1d

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1236
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1237
    if-le v4, v3, :cond_1c

    if-lez v3, :cond_1c

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_1c

    .line 1238
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1240
    const-string v4, "/mnt/asec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1241
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g()V

    .line 1242
    goto :goto_a

    .line 1234
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1249
    :cond_1d
    :goto_a
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->parse(Ljava/lang/String;)Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;

    move-result-object v0

    .line 1250
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->isAndFixCrash()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1251
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b()V

    .line 1254
    :cond_1e
    if-eqz v0, :cond_1f

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->isCrashAfterHotPatch(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1255
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b()V

    .line 1260
    :cond_1f
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1261
    nop

    .line 1262
    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x5

    if-ge v3, v4, :cond_23

    .line 1263
    new-instance v4, Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v6, v20

    :try_start_1
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, v19

    :try_start_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1264
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v2, v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 1265
    if-le v12, v4, :cond_22

    if-lez v4, :cond_22

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v13, v15, :cond_22

    .line 1266
    invoke-virtual {v2, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1267
    invoke-virtual {v4, v14, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1268
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1269
    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1270
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    array-length v13, v4

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v13, :cond_21

    move/from16 v19, v13

    aget-object v13, v4, v15

    .line 1272
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_20

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_20

    .line 1275
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    :cond_20
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v19

    goto :goto_c

    .line 1277
    :cond_21
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v13, 0x4

    if-lt v4, v13, :cond_22

    .line 1278
    const/4 v4, 0x3

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1280
    iget-object v4, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1281
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1282
    invoke-virtual {v12, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1283
    nop

    .line 1284
    const/4 v0, 0x1

    goto :goto_d

    .line 1262
    :cond_22
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v20, v6

    move-object/from16 v19, v9

    goto/16 :goto_b

    .line 1297
    :catchall_0
    move-exception v0

    move-object/from16 v9, v19

    goto :goto_f

    .line 1262
    :cond_23
    move-object/from16 v9, v19

    move-object/from16 v6, v20

    const/4 v0, 0x0

    .line 1289
    :goto_d
    if-eqz v0, :cond_25

    .line 1290
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1291
    const-string v0, "com.alipay.dexpatch.compat.DexPatchBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1292
    const-string v3, "cleanPatches"

    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v12, 0x0

    :try_start_3
    aput-object v4, v10, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v4, v10, v12

    invoke-virtual {v0, v3, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1293
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v12, 0x0

    :try_start_5
    aput-object v18, v4, v12

    const/4 v3, 0x1

    aput-object v18, v4, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    .line 1297
    :catchall_1
    move-exception v0

    goto :goto_10

    .line 1290
    :cond_24
    const/4 v12, 0x0

    goto :goto_e

    .line 1297
    :catchall_2
    move-exception v0

    goto :goto_f

    .line 1289
    :cond_25
    const/4 v12, 0x0

    goto :goto_e

    .line 1260
    :cond_26
    move-object/from16 v9, v19

    move-object/from16 v6, v20

    const/4 v12, 0x0

    .line 1299
    :goto_e
    goto :goto_11

    .line 1297
    :catchall_3
    move-exception v0

    move-object/from16 v9, v19

    move-object/from16 v6, v20

    :goto_f
    const/4 v12, 0x0

    .line 1298
    :goto_10
    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1303
    :goto_11
    :try_start_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1304
    nop

    .line 1305
    nop

    .line 1306
    nop

    .line 1307
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_12
    const/4 v15, 0x3

    if-ge v0, v15, :cond_31

    .line 1308
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1309
    add-int/lit8 v12, v15, 0x1

    invoke-virtual {v2, v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 1310
    if-le v12, v15, :cond_2f

    if-lez v15, :cond_2f

    move-object/from16 v20, v6

    add-int/lit8 v6, v12, 0x1

    move-object/from16 v19, v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_2e

    .line 1311
    invoke-virtual {v2, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1312
    invoke-virtual {v6, v14, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1313
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1314
    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1315
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    array-length v12, v6

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v12, :cond_28

    move-object/from16 p2, v2

    aget-object v2, v6, v15

    .line 1317
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_27

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_27

    .line 1320
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    :cond_27
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    goto :goto_13

    .line 1322
    :cond_28
    move-object/from16 p2, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2d

    .line 1323
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1325
    iget-object v12, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1326
    invoke-virtual {v9, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 1327
    if-nez v0, :cond_29

    .line 1328
    const/4 v12, 0x1

    goto :goto_14

    .line 1327
    :cond_29
    move v12, v4

    .line 1330
    :goto_14
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2a

    .line 1331
    move v4, v12

    const/4 v12, 0x1

    goto :goto_16

    .line 1330
    :cond_2a
    move v4, v12

    move v12, v10

    goto :goto_16

    .line 1326
    :cond_2b
    const/4 v9, 0x1

    goto :goto_15

    .line 1325
    :cond_2c
    const/4 v9, 0x1

    goto :goto_15

    .line 1322
    :cond_2d
    const/4 v2, 0x3

    const/4 v9, 0x1

    .line 1335
    :goto_15
    move v12, v10

    :goto_16
    move v10, v12

    const/4 v12, 0x2

    goto :goto_18

    .line 1310
    :cond_2e
    move-object/from16 p2, v2

    goto :goto_17

    :cond_2f
    move-object/from16 p2, v2

    move-object/from16 v20, v6

    move-object/from16 v19, v9

    :goto_17
    const/4 v2, 0x3

    const/4 v6, 0x4

    const/4 v9, 0x1

    .line 1336
    const/4 v12, 0x2

    if-ne v0, v12, :cond_30

    .line 1337
    const/4 v13, 0x1

    .line 1307
    :cond_30
    :goto_18
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p2

    move-object/from16 v9, v19

    move-object/from16 v6, v20

    const/4 v12, 0x0

    goto/16 :goto_12

    .line 1341
    :cond_31
    if-eqz v4, :cond_32

    if-eqz v10, :cond_32

    if-eqz v13, :cond_32

    .line 1342
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processInfo:Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-gt v0, v2, :cond_32

    .line 1344
    iget-object v0, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->clearCompileData(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1351
    :cond_32
    return-void

    .line 1349
    :catchall_4
    move-exception v0

    .line 1350
    invoke-static {v7, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1353
    :cond_33
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "times"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bootFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finalClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "_reason":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "times="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartupSafeguard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_0
    return-void

    .line 888
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void

    .line 885
    :cond_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "times"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "_reason"    # Ljava/lang/String;

    .line 899
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b()V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearApplicationUserData(All) : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 903
    const-string v0, "footprint"

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 905
    const-string v0, "pending"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    return-void

    .line 909
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clear all user data: times="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 912
    .local v3, "excludes":Ljava/util/Set;
    move-object v3, v0

    const-string v4, "framework_safeguard_preferences"

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 913
    const-string v0, "logging_crash_analysis.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 916
    const-string v0, "CrashCountInfo.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 917
    const-string v0, "com.alipay.android.phone.socialcardsdk.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 918
    const-string v0, "com.alipay.android.phone.social.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 919
    const-string v0, "com.alipay.android.phone.socialcontact.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    const-string v0, "com.alipay.android.phone.socialchat.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 921
    const-string v0, "com.alipay.android.phone.socialtimeline.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 922
    const-string v0, "com.alipay.mobile.emotion.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 923
    const-string v0, "com.alipay.android.phone.social.search.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    const-string v0, "secuitySharedDataStore.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 925
    const-string v0, "linearallocpatch.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 927
    const-string v0, "MultiDex.lock"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 928
    const-string v0, "ProcUtil.sp.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 929
    const-string v0, "virtualImeiAndImsi.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 930
    const-string v0, "alipay_tid_storage.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 931
    const-string v0, "perf_preferences.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 933
    const-string v0, "lib"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 934
    const-string v0, "mdap"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 935
    const-string v0, "applog"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 936
    const-string v0, "logcat"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 937
    const-string v0, "SGMANAGER_DATA2"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 938
    const-string v0, "LauncherServiceError"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-main.LoggingCache.xml"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-tools.LoggingCache.xml"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 941
    const-string v0, "permission_configs.xml"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 942
    const-string v0, "records.pb"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    const-string v0, "permissions"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 946
    .local v2, "excludePrefixes":Ljava/util/Set;
    move-object v2, v0

    const-string v4, "contactsdb"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    const-string v0, "chatmsgdb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 948
    const-string v0, "timelinedb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 949
    const-string v0, "multimedia"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 950
    const-string v0, "alipayclient"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 951
    const-string v0, "aliuser"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 952
    const-string v0, "socialmobiledb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 953
    const-string v0, "socialcarddb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 954
    const-string v0, "discussioncontactdb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 955
    const-string v0, "discussionchatdb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-static {p1, v3, v2}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearApplicationUserData(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    .line 959
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setConservativeStartup()V

    .line 960
    const-string v0, "prohibit suppress gc"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method private static a(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 7
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "context"    # Landroid/content/Context;

    .line 830
    const-string v0, "HelperValve"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 831
    return v1

    .line 834
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 835
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 836
    .local v3, "receiverInfo":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 837
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v5, 0x0

    .line 840
    .local v5, "providerInfo":Landroid/content/pm/ProviderInfo;
    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {v2, p0, v6}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v6

    .line 843
    goto :goto_0

    .line 841
    :catchall_0
    move-exception v6

    .line 842
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 845
    .end local v6    # "tr":Ljava/lang/Throwable;
    :goto_0
    const/4 v6, 0x4

    :try_start_1
    invoke-virtual {v2, p0, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v6

    .line 848
    goto :goto_1

    .line 846
    :catchall_1
    move-exception v6

    .line 847
    .restart local v6    # "tr":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 850
    .end local v6    # "tr":Ljava/lang/Throwable;
    :goto_1
    const/16 v6, 0x8

    :try_start_2
    invoke-virtual {v2, p0, v6}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v0

    .line 853
    goto :goto_2

    .line 851
    :catchall_2
    move-exception v6

    .line 852
    .restart local v6    # "tr":Ljava/lang/Throwable;
    invoke-static {v0, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 855
    .end local v6    # "tr":Ljava/lang/Throwable;
    :goto_2
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    return v1

    :cond_2
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->p:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200()J
    .locals 2

    .line 75
    sget-wide v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->u:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->h()V

    return-void
.end method

.method static synthetic access$1406(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I

    return v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->w:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .param p1, "x1"    # Z

    .line 75
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$506(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->v:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v1, "cleanPatches"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "times"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "_reason"    # Ljava/lang/String;

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearApplicationUserData(Partial) : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 966
    const-string v0, "footprint"

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 968
    const-string v0, "pending"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    return-void

    .line 972
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "clear some user data: times="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 975
    .local v2, "excludePrefixes":Ljava/util/Set;
    move-object v2, v0

    const-string v3, "contactsdb"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 976
    const-string v0, "chatmsgdb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 977
    const-string v0, "timelinedb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 978
    const-string v0, "multimedia"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 979
    const-string v0, "alipayclient"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 980
    const-string v0, "aliuser"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    const-string v0, "socialmobiledb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 982
    const-string v0, "socialcarddb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 983
    const-string v0, "discussioncontactdb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 984
    const-string v0, "discussionchatdb"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 985
    invoke-static {p1, v2}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearApplicationDatabase(Landroid/content/Context;Ljava/util/Set;)V

    .line 988
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 989
    .local v1, "excludes":Ljava/util/Set;
    move-object v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-main.LoggingCache.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-tools.LoggingCache.xml"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_config.xml"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 992
    const-string v0, "logging_crash_analysis.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 993
    const-string v0, "framework_preferences"

    const-string v3, ".xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 994
    const-string v0, "framework_safeguard_preferences"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 995
    const-string v0, "hotpatch_filepath_md5_storage.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 996
    const-string v0, "DynamicRelease.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 997
    const-string v0, "DynamicReleaseTools.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 998
    const-string v0, "CrashCountInfo.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 999
    const-string v0, "com.alipay.android.phone.socialcardsdk.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1000
    const-string v0, "com.alipay.android.phone.social.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1001
    const-string v0, "com.alipay.android.phone.socialcontact.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1002
    const-string v0, "com.alipay.android.phone.socialchat.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1003
    const-string v0, "com.alipay.android.phone.socialtimeline.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1004
    const-string v0, "com.alipay.mobile.emotion.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1005
    const-string v0, "com.alipay.android.phone.social.search.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1006
    const-string v0, "secuitySharedDataStore.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1007
    const-string v0, "_andfix_.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1008
    const-string v0, "_dexpatch_.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1009
    const-string v0, "instant_run.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1010
    const-string v0, "linearallocpatch.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1011
    const-string v0, "multidex.version.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1012
    const-string v0, "multidex.opt.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1013
    const-string v0, "ProcUtil.sp.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1014
    const-string v0, "virtualImeiAndImsi.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1015
    const-string v0, "alipay_tid_storage.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1016
    const-string v0, "perf_preferences.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1017
    const-string v0, "permission_configs.xml"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1019
    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearSharePreference(Landroid/content/Context;Ljava/util/Set;)V

    .line 1020
    return-void
.end method

.method private b(Z)V
    .locals 20
    .param p1, "enable"    # Z

    move-object/from16 v1, p0

    const-string v2, "StartupSafeguard"

    .line 768
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 769
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    move-object v4, v0

    iget-object v5, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v5, v0

    .line 771
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 772
    .local v0, "ippComponents":Ljava/lang/String;
    const/4 v6, 0x0

    .line 773
    .local v6, "ippComponents2":Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 774
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "ipp.components"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 775
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "ipp.components.v2"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v6, v0

    goto :goto_0

    .line 777
    :cond_0
    move-object v7, v6

    move-object v6, v0

    .end local v0    # "ippComponents":Ljava/lang/String;
    .local v6, "ippComponents":Ljava/lang/String;
    .local v7, "ippComponents2":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-string v8, " = "

    const-string v9, "stack"

    const-string v10, ";"

    const/4 v12, 0x2

    if-nez v0, :cond_6

    .line 778
    :try_start_1
    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 779
    array-length v15, v14

    move-object v0, v3

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v11, v15, :cond_5

    aget-object v17, v14, v11

    .line 780
    .local v3, "ippComponent":Ljava/lang/String;
    move-object/from16 v3, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-nez v17, :cond_4

    .line 784
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v13, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-direct {v0, v13, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 785
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 786
    .local v13, "state":I
    if-eqz p1, :cond_2

    .line 787
    if-ne v13, v12, :cond_1

    .line 788
    const/4 v12, 0x1

    :try_start_3
    invoke-virtual {v4, v0, v12, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v18, v3

    goto :goto_2

    .line 797
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v13    # "state":I
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v16, v13

    goto :goto_3

    .line 787
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    const/4 v12, 0x1

    move-object/from16 v18, v3

    goto :goto_2

    .line 791
    :cond_2
    const/4 v12, 0x1

    const/4 v12, 0x2

    if-eq v13, v12, :cond_3

    .line 792
    move-object/from16 v18, v3

    const/4 v3, 0x1

    .end local v3    # "ippComponent":Ljava/lang/String;
    .local v18, "ippComponent":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v4, v0, v12, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 797
    .end local v0    # "component":Landroid/content/ComponentName;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v16, v13

    goto :goto_3

    .line 791
    .end local v18    # "ippComponent":Ljava/lang/String;
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v3    # "ippComponent":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v3

    .line 795
    .end local v3    # "ippComponent":Ljava/lang/String;
    .restart local v18    # "ippComponent":Ljava/lang/String;
    :goto_2
    :try_start_5
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 796
    .local v3, "componentEnable":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v19, v5

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v19, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 799
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v3    # "componentEnable":I
    move/from16 v16, v13

    goto :goto_4

    .line 797
    :catchall_2
    move-exception v0

    move/from16 v16, v13

    goto :goto_3

    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v16, v13

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3

    .end local v18    # "ippComponent":Ljava/lang/String;
    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v3, "ippComponent":Ljava/lang/String;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    .line 798
    .end local v3    # "ippComponent":Ljava/lang/String;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v18    # "ippComponent":Ljava/lang/String;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3
    :try_start_7
    invoke-static {v2, v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 780
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v18    # "ippComponent":Ljava/lang/String;
    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "ippComponent":Ljava/lang/String;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    .line 779
    .end local v3    # "ippComponent":Ljava/lang/String;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    const/4 v12, 0x2

    goto/16 :goto_1

    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    move-object/from16 v19, v5

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_5

    .line 777
    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    move-object/from16 v19, v5

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v0, v3

    const/16 v16, 0x0

    .line 802
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    if-nez p1, :cond_a

    .line 803
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 804
    array-length v10, v5

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_a

    aget-object v12, v5, v11

    .line 805
    .restart local v3    # "ippComponent":Ljava/lang/String;
    move-object v3, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-nez v12, :cond_9

    .line 809
    :try_start_8
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-direct {v12, v13, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 810
    .local v0, "component":Landroid/content/ComponentName;
    move-object v0, v12

    iget-object v13, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 811
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 812
    .local v16, "state":I
    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    .line 813
    const/4 v12, 0x1

    :try_start_9
    invoke-virtual {v4, v0, v13, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_7

    .line 812
    .end local v16    # "state":I
    :cond_7
    const/4 v12, 0x1

    .line 815
    :goto_7
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v14

    .line 816
    .local v14, "componentEnable":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    .line 818
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v14    # "componentEnable":I
    :catchall_5
    move-exception v0

    goto :goto_9

    .line 810
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_8
    const/4 v13, 0x2

    .line 820
    .end local v0    # "component":Landroid/content/ComponentName;
    :goto_8
    goto :goto_a

    .line 818
    :catchall_6
    move-exception v0

    const/4 v13, 0x2

    .line 819
    .local v0, "e":Ljava/lang/Throwable;
    :goto_9
    :try_start_a
    invoke-static {v2, v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_a

    .line 805
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_9
    const/4 v13, 0x2

    .line 804
    .end local v3    # "ippComponent":Ljava/lang/String;
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 825
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "ippComponents":Ljava/lang/String;
    .end local v7    # "ippComponents2":Ljava/lang/String;
    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_a
    return-void

    .line 823
    :catchall_7
    move-exception v0

    .line 824
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private c()V
    .locals 2

    .line 1052
    const-string v0, "StartupSafeguard"

    const-string v1, "handleContinuousCrash first time, disable ipp components"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Z)V

    .line 1055
    return-void
.end method

.method private d()V
    .locals 2

    .line 1058
    const-string v0, "StartupSafeguard"

    const-string v1, "handleContinuousCrash, disable ipp components, clear app_plugins_opt"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Z)V

    .line 1063
    return-void
.end method

.method private e()V
    .locals 2

    .line 1077
    const-string v0, "StartupSafeguard"

    const-string v1, "handleContinuousCrash, disable ipp components, \u6240\u6709lib\u4e0ebundle\u7684md5\u68c0\u67e5\u4e0e\u91ca\u653e"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Z)V

    .line 1081
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->fullCheckExtraction()V

    .line 1082
    return-void
.end method

.method private f()V
    .locals 3

    .line 1359
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1361
    const-string v1, "quinox_use_origin_assets"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1362
    return-void
.end method

.method private g()V
    .locals 4

    .line 1371
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "framework_safeguard_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1372
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_check_md5_for_native_lib"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1373
    const-string v0, "StartupSafeguard"

    const-string v1, "trig fullCheckLibs"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .locals 2

    .line 224
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    if-nez v0, :cond_1

    .line 225
    const-class v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    monitor-enter v0

    .line 226
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 229
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 231
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    return-object v0
.end method

.method public static getLoadingClassNum()I
    .locals 1

    .line 1605
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mAllClasses:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1606
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    .line 1609
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 3

    .line 1427
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1428
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    const-string v1, "StartupSafeguard"

    const-string v2, "internalPreparePending is paused, wait for resumeInternalPreparePending()"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1434
    goto :goto_0

    .line 1432
    :catch_0
    move-exception v1

    .line 1433
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "StartupSafeguard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1435
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v1, "StartupSafeguard"

    const-string v2, "waitIfInternalPreparePendingPaused finished"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public final analyzeNativeCrash(Landroid/content/Context;)V
    .locals 6

    .line 1690
    nop

    .line 1692
    :try_start_0
    const-string v0, "crash"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 1693
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1694
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 1695
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 1696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1697
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1698
    new-instance p1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$5;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$5;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    .line 1706
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1707
    nop

    .line 1709
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1710
    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    .line 1713
    if-eqz v3, :cond_1

    .line 1715
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CrashSDK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jni.log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1716
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v4, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processNativeCrashFile(Ljava/io/Reader;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1717
    const/4 v2, 0x1

    .line 1720
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IgnoreOnEmpty"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1721
    add-int/lit8 v0, v0, 0x1

    .line 1724
    :cond_1
    goto :goto_0

    .line 1727
    :cond_2
    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_5

    .line 1729
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "framework_safeguard_preferences"

    invoke-virtual {p1, v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1730
    const-string v0, "key_launch_time_when_j_crash"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1731
    cmp-long p1, v3, v1

    if-lez p1, :cond_4

    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->C:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_5

    .line 1732
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    :cond_5
    return-void

    .line 1735
    :catchall_0
    move-exception p1

    .line 1736
    const-string v0, "StartupSafeguard"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1738
    return-void
.end method

.method public final fullCheckExtraction()V
    .locals 4

    .line 1365
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "framework_safeguard_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_check_md5_for_native_lib"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_check_md5_for_bundles"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1367
    const-string v0, "StartupSafeguard"

    const-string v1, "trig fullCheckExtraction"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    return-void
.end method

.method public final getCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->o:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public final getMainCurrentLaunchTime()J
    .locals 2

    .line 2018
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    return-wide v0
.end method

.method public final getMainUILaunched()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->h:Z

    return v0
.end method

.method public final getPausePrepareDuration()J
    .locals 2

    .line 1423
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->B:J

    return-wide v0
.end method

.method public final getProcessAttachTime()J
    .locals 2

    .line 2014
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mProcessAttachTime:J

    return-wide v0
.end method

.method public final getStackTraceString(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;
    .locals 8
    .param p1, "threadReference"    # Ljava/lang/ref/WeakReference;
    .param p2, "nullThenMain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1577
    const/4 v0, 0x0

    .line 1579
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1580
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    move-object v0, v2

    goto :goto_0

    .line 1598
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1581
    :cond_0
    if-eqz p2, :cond_1

    .line 1582
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v0, v2

    .line 1584
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 1585
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    move-object v3, v1

    .line 1586
    .local v3, "ste":[Ljava/lang/StackTraceElement;
    move-object v3, v2

    if-eqz v2, :cond_4

    array-length v2, v3

    if-lez v2, :cond_4

    .line 1587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1588
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 1589
    .local v6, "steItem":Ljava/lang/StackTraceElement;
    move-object v6, v7

    if-eqz v7, :cond_2

    .line 1590
    const-string v7, "\tat "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1588
    .end local v6    # "steItem":Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1595
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1599
    .end local v3    # "ste":[Ljava/lang/StackTraceElement;
    .local v2, "tr":Ljava/lang/Throwable;
    :goto_2
    const-string v3, "StartupSafeguard"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1600
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_4
    nop

    .line 1601
    :goto_3
    return-object v1
.end method

.method public final handleContinuousCrash()V
    .locals 2

    .line 699
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleContinuousCrash(ILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method public final handleContinuousCrash(ILjava/lang/Object;)V
    .locals 5
    .param p1, "crashType"    # I
    .param p2, "crashInfo"    # Ljava/lang/Object;

    .line 704
    const-string v0, "crash"

    const-string v1, "StartupSafeguard"

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 706
    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Z)I

    move-result v3

    invoke-direct {p0, v3, v0, v2, p2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(ILjava/lang/String;ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    goto :goto_0

    .line 707
    :catchall_0
    move-exception v3

    .line 708
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 712
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ne p1, v2, :cond_2

    .line 714
    :try_start_1
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 715
    .local v3, "crashInfoStr":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/startup/NativeCrashHelper;->isUselessCrash(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 716
    const-string v0, "handleContinuousNativeCrash, but useless, just disable ipp.components."

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b(Z)V

    .line 718
    return-void

    .line 720
    :cond_1
    invoke-direct {p0, v4}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Z)I

    move-result v2

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(ILjava/lang/String;ZLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 723
    .end local v3    # "crashInfoStr":Ljava/lang/String;
    return-void

    .line 721
    :catchall_1
    move-exception v0

    .line 722
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 725
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public final handleCrashOnStartup()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v1, "key_startup_record_times"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 688
    .local v0, "times":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCrashOnStartup(times="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartupSafeguard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "crash"

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 690
    return-void
.end method

.method public final handlePendingOnInternalPrepare(JILjava/lang/String;)V
    .locals 7
    .param p1, "waitTime"    # J
    .param p3, "waitCount"    # I
    .param p4, "stack"    # Ljava/lang/String;

    .line 1524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 1525
    .local v2, "params":Ljava/util/Map;
    move-object v2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "waitTime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "waitCount"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    const-string v0, "stack"

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "bootFinish"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1532
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    const-string v3, "finalClassName"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getClientStatus()Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "clientStatus":Ljava/lang/String;
    const-string v3, "clientStatus"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->getThreadsStackTrace()Ljava/lang/String;

    move-result-object v3

    .line 1537
    .local v1, "threadsTrace":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1538
    const-string v3, "threadsTrace"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handlePendingOnInternalPrepare waitTime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " waitCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " clientStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mUILaunched:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StartupSafeguard"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->k:Ljava/lang/String;

    const-string v6, "BIZ_FRAME"

    invoke-static {v6, v3, v5, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1544
    const-string v3, "All Threads Traces:"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 1549
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1550
    const-string v3, "handlePendingOnInternalPrepare kill self after 1min."

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$4;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$4;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1572
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1574
    :cond_3
    return-void
.end method

.method public final handlePendingOnStartup(I)V
    .locals 12
    .param p1, "timeOut"    # I

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v1, "key_startup_record_times"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 496
    .local v0, "times":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time out: handlePendingOnStartup(times="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Seconds)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartupSafeguard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v3, "pending"

    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 500
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 501
    .local v4, "params":Ljava/util/Map;
    move-object v4, v1

    iget-boolean v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bootFinish"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    const-string v5, "finalClassName"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getStackTraceString(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    .line 507
    .local v6, "stack":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 508
    const-string v5, "stackFrame"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_1
    const-string v5, "fg"

    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInForeground()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v5, "bg"

    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->isApplicationInBackground()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    nop

    .end local v6    # "stack":Ljava/lang/String;
    goto :goto_0

    .line 512
    :catchall_0
    move-exception v5

    move-object v6, v5

    .line 513
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ThreadDumpUtil;->getThreadsStackTrace()Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v6, "threadsTrace":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 518
    const-string v5, "threadsTrace"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v5, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getStackTraceString(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object v5

    move-object v7, v3

    .line 522
    .local v7, "currentStackTrace":Ljava/lang/String;
    move-object v7, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 523
    const-string v5, "internalStack"

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_3
    :try_start_1
    iget-wide v8, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->p:J

    sget-wide v10, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processStartupTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x1388

    cmp-long v5, v8, v10

    if-gtz v5, :cond_8

    .line 529
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupData()Landroid/net/Uri;

    move-result-object v5

    move-object v8, v3

    .line 530
    .local v8, "startupData":Landroid/net/Uri;
    move-object v8, v5

    if-eqz v5, :cond_4

    .line 531
    const-string v5, "startupData"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->getStartupReason()Ljava/util/Map;

    move-result-object v5

    .line 534
    .local v3, "reasonMap":Ljava/util/Map;
    move-object v3, v5

    if-eqz v5, :cond_7

    .line 535
    const-string v5, "RecordType"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 536
    .local v5, "recordType":Ljava/lang/String;
    const-string v9, "ActionName"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 537
    .local v9, "actionName":Ljava/lang/String;
    const-string v10, "ComponentName"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 538
    .local v10, "componentName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 539
    const-string v11, "startupRecordType"

    invoke-interface {v4, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 542
    const-string v11, "startupActionName"

    invoke-interface {v4, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 545
    const-string v11, "startupComponentName"

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    .end local v3    # "reasonMap":Ljava/util/Map;
    .end local v5    # "recordType":Ljava/lang/String;
    .end local v8    # "startupData":Landroid/net/Uri;
    .end local v9    # "actionName":Ljava/lang/String;
    .end local v10    # "componentName":Ljava/lang/String;
    :cond_7
    move-object v3, v8

    :cond_8
    goto :goto_1

    .line 549
    :catchall_1
    move-exception v3

    .line 550
    .local v3, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    .end local v3    # "tr":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->launchAnr(Ljava/util/Map;)V

    .line 558
    iget-object v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v8, "START_UP_DEAD"

    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuRecordException(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    const-string v5, "All Threads Traces:"

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 567
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v5

    iget-object v8, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v9, "framework_safeguard_preferences"

    invoke-virtual {v5, v8, v9, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 568
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "key_launch_time_when_s_dead"

    iget-wide v8, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    invoke-interface {v1, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 571
    nop

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    goto :goto_2

    .line 569
    :catchall_2
    move-exception v1

    .line 570
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 573
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_9

    .line 574
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->clearCompileData(Landroid/content/Context;)Z

    .line 578
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/crash/UcNativeCrashApi;->onExit()V

    .line 580
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 581
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 582
    return-void
.end method

.method public final init(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    .line 216
    if-nez v0, :cond_0

    .line 217
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    .line 220
    :cond_0
    return-object p0
.end method

.method public final isConservativeStartupLite()Z
    .locals 4

    .line 1857
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1858
    const-string v1, "ConservativeStartupLite"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    const/4 v0, 0x1

    return v0

    .line 1861
    :cond_0
    return v3
.end method

.method public final isConverativeStartup()Z
    .locals 4

    .line 1833
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1834
    const-string v1, "ConservativeStartup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    const/4 v0, 0x1

    return v0

    .line 1837
    :cond_0
    return v3
.end method

.method public final isSpConserativeStartup()Z
    .locals 4

    .line 1887
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1888
    const-string v1, "SpConservativeStartup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    const/4 v0, 0x1

    return v0

    .line 1891
    :cond_0
    return v3
.end method

.method public final isStartupCrash()Z
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isStartupCrash() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isStartupPending()Z
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isStartupPending() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final needOptHostClassLoader()Z
    .locals 4

    .line 1924
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1925
    const-string v1, "OptHostClassLoader"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1926
    return v2

    .line 1928
    :cond_0
    return v3
.end method

.method public final pauseInternalPreparePending()V
    .locals 4

    .line 1405
    const-string v0, "StartupSafeguard"

    const-string v1, "pauseInternalPreparePending"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1407
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 1408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->A:J

    .line 1409
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final processNativeCrashFile(Ljava/io/Reader;Z)Z
    .locals 18

    .line 1747
    move-object/from16 v1, p0

    const-string v0, " "

    const-string v2, "StartupSafeguard"

    .line 1748
    nop

    .line 1749
    nop

    .line 1751
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2000

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1752
    nop

    .line 1753
    if-eqz p2, :cond_0

    iget-wide v5, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    goto :goto_0

    :cond_0
    iget-wide v5, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->C:J

    .line 1755
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    move-object/from16 v11, p1

    invoke-direct {v10, v11, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 1758
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 1760
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    const-string v13, "\n"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    const-string v13, "StartupCrash"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1764
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1766
    :cond_2
    const-string v13, "key_m_l_l_t"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1767
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 1768
    if-ltz v13, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v8

    if-ge v13, v14, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v16, v5, v14

    if-lez v16, :cond_4

    .line 1769
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1770
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1771
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 1772
    :goto_2
    goto :goto_3

    .line 1773
    :cond_4
    const/4 v9, 0x0

    .line 1777
    :cond_5
    :goto_3
    const-string v13, ">>>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "<<<"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1778
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1784
    :cond_6
    invoke-static {v10}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 1785
    goto :goto_5

    .line 1781
    :catchall_0
    move-exception v0

    move-object/from16 v17, v10

    move-object v10, v0

    move v0, v9

    move-object/from16 v9, v17

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v10, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 1782
    :goto_4
    :try_start_2
    invoke-static {v2, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1784
    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 1785
    move v9, v0

    .line 1786
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "isDefaultProcess:"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "isLastStartup:"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "isStartupCrash:"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    if-eqz v11, :cond_9

    .line 1790
    if-eqz v9, :cond_9

    .line 1791
    if-eqz v4, :cond_7

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleCrashOnStartup()V

    .line 1795
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handleContinuousCrash(ILjava/lang/Object;)V

    .line 1813
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v3, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v9, "framework_safeguard_preferences"

    invoke-virtual {v0, v3, v9, v7}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1814
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1815
    const-string v3, "key_launch_time_when_c_crash"

    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1816
    if-eqz v4, :cond_8

    .line 1817
    const-string v3, "key_launch_time_when_c_startup_crash"

    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_6

    .line 1819
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1823
    goto :goto_6

    .line 1821
    :catchall_2
    move-exception v0

    .line 1822
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1825
    :goto_6
    return v8

    .line 1829
    :cond_9
    return v7

    .line 1784
    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2
.end method

.method public final removeConservativeStartup()V
    .locals 4

    .line 1851
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1852
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ConservativeStartup"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1853
    return-void
.end method

.method public final removeConservativeStartupLite()V
    .locals 4

    .line 1877
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1878
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ConservativeStartupLite"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1879
    return-void
.end method

.method public final removeCpuConservativeStartup()V
    .locals 4

    .line 1905
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1906
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CpuConservativeStartup"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1907
    return-void
.end method

.method public final removeSpConservativeStartup()V
    .locals 4

    .line 1882
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1883
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SpConservativeStartup"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1884
    return-void
.end method

.method public final resumeInternalPreparePending()V
    .locals 5

    .line 1413
    const-string v0, "StartupSafeguard"

    const-string v1, "resumeInternalPreparePending"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1415
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->A:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->B:J

    .line 1419
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final runAnomalyDetection()V
    .locals 19

    .line 596
    move-object/from16 v1, p0

    const-string v2, "key_lcsrt"

    const-string v0, "key_m_l_c_t"

    const-string v3, "StartupSafeguard"

    sget-boolean v4, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->sRunAnomalyDetection:Z

    if-nez v4, :cond_0

    .line 597
    return-void

    .line 599
    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->sRunAnomalyDetection:Z

    .line 602
    nop

    .line 604
    const-wide/16 v5, -0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v7

    iget-object v8, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v9, "framework_preferences"

    invoke-virtual {v7, v8, v9, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 605
    invoke-interface {v7, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 606
    :try_start_1
    iget-object v10, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v10}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 607
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    :cond_1
    goto :goto_1

    .line 609
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide v8, v5

    .line 610
    :goto_0
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 615
    const-string v0, "BIZ_FRAME"

    const-string v7, "stack"

    const-wide/16 v12, 0x1

    cmp-long v14, v10, v8

    if-lez v14, :cond_2

    sub-long v14, v10, v8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v18, v14, v5

    if-gez v18, :cond_2

    .line 616
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 617
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "This Client May Cause Phone to Reboot.\nLastClickTime:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "\nLastBootTime:"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v6, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:Ljava/lang/String;

    iget-object v12, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->l:Ljava/lang/String;

    invoke-static {v0, v6, v12, v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_2
    :try_start_2
    iget-object v5, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuGetLaunchTimes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 632
    iget-object v6, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    .line 633
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_5

    .line 634
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 635
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 641
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v10

    iget-object v11, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v12, "framework_safeguard_preferences"

    invoke-virtual {v10, v11, v12, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 642
    const-string v10, "key_launch_time_when_j_crash"

    const-wide/16 v11, -0x1

    invoke-interface {v4, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 643
    const-string v10, "key_launch_time_when_c_crash"

    invoke-interface {v4, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 644
    const-string v10, "key_launch_time_when_s_dead"

    invoke-interface {v4, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 645
    invoke-interface {v4, v2, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 647
    cmp-long v12, v8, v13

    if-lez v12, :cond_4

    cmp-long v12, v8, v15

    if-lez v12, :cond_4

    cmp-long v12, v8, v17

    if-lez v12, :cond_4

    cmp-long v12, v8, v10

    if-gtz v12, :cond_3

    goto :goto_2

    .line 655
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 656
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "This client experiences Exception through 3 launches.\nlTime:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\nrTime:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v5, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:Ljava/lang/String;

    iget-object v6, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->n:Ljava/lang/String;

    invoke-static {v0, v5, v6, v10}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 660
    const-string v0, "This client experiences Exception through launches and reported."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v4, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 664
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    const-string v4, "ThreadDumpForReLaunches"

    invoke-virtual {v0, v2, v4}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_3

    .line 652
    :cond_4
    :goto_2
    const-string v0, "This client experiences Exception through launches."

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 680
    :cond_5
    :goto_3
    return-void

    .line 678
    :catchall_2
    move-exception v0

    .line 679
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    return-void
.end method

.method public final setConservativeStartup()V
    .locals 4

    .line 1841
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 1843
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "ConservativeStartup"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    return-void

    .line 1847
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1848
    return-void
.end method

.method public final setConservativeStartupLite()V
    .locals 4

    .line 1866
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 1868
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "ConservativeStartupLite"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1870
    return-void

    .line 1872
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1873
    return-void
.end method

.method public final setInternalPreparePending(Z)V
    .locals 5
    .param p1, "internalPreparePending"    # Z

    .line 1448
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setInternalPreparePending(internalPreparePending="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    if-eqz p1, :cond_0

    .line 1451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->w:J

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Start internalPrepare_pending_monitor, count="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$3;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    sget-wide v2, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->t:J

    const-string v4, "internalPrepare_pending_monitor"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mInternalPrepareMonitorTimerTask:Ljava/util/TimerTask;

    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mInternalPrepareMonitorTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1503
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1505
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "End internalPrepare_pending_monitor, count="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_2
    return-void
.end method

.method public final setInternalPrepareThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 1392
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->v:Ljava/lang/ref/WeakReference;

    .line 1393
    return-void
.end method

.method public final setMainUILaunched()V
    .locals 1

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->h:Z

    .line 283
    return-void
.end method

.method public final setSpConservativeStartup()V
    .locals 4

    .line 1895
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "perf_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 1897
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "SpConservativeStartup"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    return-void

    .line 1901
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1902
    return-void
.end method

.method public final setStartupCrash(Z)V
    .locals 8
    .param p1, "startupCrash"    # Z

    .line 262
    const-string v0, "StartupSafeguard"

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    const-string v1, "com.alipay.mobile.common.nativecrash.NativeCrashHandlerApi"

    const-string v2, "addCrashHeadInfo"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "StartupCrash"

    aput-object v5, v3, v6

    .line 268
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 264
    invoke-static {v1, v2, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addCrashHeadInfo("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStartupCrash(startupCrash="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public final setStartupPending(Z)V
    .locals 6
    .param p1, "startupPending"    # Z

    .line 300
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/CpuUtil;->getInstance()Lcom/alipay/mobile/quinox/startup/CpuUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/CpuUtil;->start(Landroid/content/Context;)V

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setUILaunched(Z)V

    .line 304
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStartupPending(startupPending="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartupSafeguard"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 308
    const/4 v3, 0x0

    sput-boolean v3, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->didOnResumeBefore:Z

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->p:J

    .line 312
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-gt v3, v4, :cond_0

    const/16 v3, 0x3c

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e

    .line 313
    .local v3, "timeOut":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start startup_pending_monitor, count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " M HZ, timeOut="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Seconds)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->r:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;

    if-nez v0, :cond_1

    .line 317
    new-instance v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->r:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;

    .line 318
    iput v3, v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;->timeOut:I

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->s:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 322
    iput-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->s:Ljava/util/TimerTask;

    .line 324
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->r:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$StartupPendingRunnable;

    mul-int/lit16 v2, v3, 0x3e8

    int-to-long v4, v2

    const-string v2, "startup_pending_monitor"

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->s:Ljava/util/TimerTask;

    .line 325
    .end local v3    # "timeOut":I
    return-void

    .line 326
    :cond_3
    sget-boolean v3, Lcom/alipay/profiledealer/ProfileUtil;->DUMP_PROFILE:Z

    if-eqz v3, :cond_4

    .line 328
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/profiledealer/ProfileUtil;->stopDumpProfileDelayed(Landroid/content/Context;)V

    .line 346
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->s:Ljava/util/TimerTask;

    if-eqz v3, :cond_5

    .line 347
    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 348
    iput-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->s:Ljava/util/TimerTask;

    .line 350
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "End startup_pending_monitor, count="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 352
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void

    .line 405
    :cond_6
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Should be call on UI Thread. (startupPending==false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_7
    return-void
.end method

.method public final setStopJitState(I)V
    .locals 12
    .param p1, "state"    # I

    const-string v0, "JITDisable"

    .line 1962
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1963
    const-string v1, "stopJit not Dalvik"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    return-void

    .line 1966
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1967
    .local v1, "release":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1968
    .local v2, "model":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopJit release:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " model:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    const-string v3, "4.2.2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1971
    const-string v3, "stopJit not 4.2.2"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    return-void

    .line 1974
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 1975
    .local v4, "modelSet":Ljava/util/Set;
    move-object v4, v3

    const-string v5, "HM NOTE 1TD"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1976
    const-string v3, "HM NOTE 1W"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1977
    const-string v3, "Coolpad 9976T"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1978
    const-string v3, "DOOV S2x"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1979
    const-string v3, "100C"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1980
    const-string v3, "Hasee X50 TS"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1981
    const-string v3, "100Cw"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1982
    const-string v3, "InFocus M320u"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1983
    const-string v3, "HTC D616w"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1984
    const-string v3, "Nibiru H1"

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1985
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1986
    const-string v3, "stopJit not target models"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    return-void

    .line 1990
    :cond_2
    const-string v3, "StopJitGuard"

    .line 1991
    .local v3, "keyGuard":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v7, "perf_preferences"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1993
    .local v5, "sp":Landroid/content/SharedPreferences;
    const/4 v6, 0x1

    if-nez p1, :cond_4

    .line 1994
    const-string v7, "ShouldStopJit"

    .line 1995
    .local v7, "keyShould":Ljava/lang/String;
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1996
    .local v9, "shouldStopJit":Z
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1998
    .local v10, "guardFine":Z
    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 1999
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2000
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/PerformanceHelper;->stopJit()V

    .line 2001
    iput-boolean v6, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->E:Z

    .line 2003
    .end local v7    # "keyShould":Ljava/lang/String;
    .end local v9    # "shouldStopJit":Z
    .end local v10    # "guardFine":Z
    :cond_3
    return-void

    :cond_4
    if-ne p1, v6, :cond_5

    .line 2004
    iget-boolean v7, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->E:Z

    if-eqz v7, :cond_5

    .line 2005
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    .end local v1    # "release":Ljava/lang/String;
    .end local v2    # "model":Ljava/lang/String;
    .end local v3    # "keyGuard":Ljava/lang/String;
    .end local v4    # "modelSet":Ljava/util/Set;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_5
    return-void

    .line 2008
    :catchall_0
    move-exception v1

    .line 2009
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "stopJit error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2011
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final setUILaunched(Z)V
    .locals 1
    .param p1, "uiLaunched"    # Z

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    return-void
.end method

.method public final setupNativeCrashEnv(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    const-string v2, "framework_safeguard_preferences"

    const-string v0, "key_m_l_l_t"

    const-string v3, "StartupSafeguard"

    .line 1631
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v5, 0x0

    move-object/from16 v6, p1

    :try_start_1
    invoke-virtual {v4, v6, v2, v5}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1632
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-wide/16 v7, -0x1

    invoke-interface {v4, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->C:J

    .line 1633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    .line 1634
    iget-wide v7, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mProcessAttachTime:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gez v11, :cond_0

    .line 1635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->mProcessAttachTime:J

    .line 1637
    :cond_0
    iget-wide v7, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->C:J

    sput-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastMainLaunchTime:J

    .line 1638
    iget-wide v7, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    sput-wide v7, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sCurrentMainLaunchTime:J

    .line 1639
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    .line 1640
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v9, v7

    iget-wide v10, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    invoke-interface {v7, v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1644
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1649
    const/4 v7, 0x2

    const/4 v10, 0x1

    :try_start_2
    const-string v11, "com.alipay.mobile.common.nativecrash.NativeCrashHandlerApi"

    const-string v12, "addCrashHeadInfo"

    new-array v13, v7, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v5

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v10

    new-array v14, v7, [Ljava/lang/String;

    aput-object v0, v14, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v15, v9

    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_3
    iget-wide v8, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    .line 1653
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v10

    .line 1649
    invoke-static {v11, v12, v13, v14}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1656
    const/4 v0, 0x0

    goto :goto_1

    .line 1654
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_1
    move-exception v0

    move-object v15, v9

    .line 1655
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .local v0, "tr":Ljava/lang/Throwable;
    .restart local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    :try_start_4
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1659
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_1
    :try_start_5
    const-string v8, "com.alipay.mobile.common.logging.api.HiddenNativeCrashListener"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1660
    .local v0, "hiddenListenerClazz":Ljava/lang/Class;
    move-object v0, v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 1661
    .local v8, "hiddenListener":Ljava/lang/Object;
    const-string v9, "setAgentListener"

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v5

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v10

    invoke-virtual {v0, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v11, 0x0

    .line 1662
    .local v11, "register":Ljava/lang/reflect/Method;
    move-object v11, v9

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1663
    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "quinox"

    aput-object v9, v7, v5

    new-instance v9, Lcom/alipay/mobile/quinox/startup/NativeCrashListener;

    invoke-direct {v9}, Lcom/alipay/mobile/quinox/startup/NativeCrashListener;-><init>()V

    aput-object v9, v7, v10

    invoke-virtual {v11, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1666
    .end local v0    # "hiddenListenerClazz":Ljava/lang/Class;
    .end local v8    # "hiddenListener":Ljava/lang/Object;
    .end local v11    # "register":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 1664
    :catchall_2
    move-exception v0

    .line 1665
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1669
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_2
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v7

    if-eq v0, v7, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 1670
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getUpgrade()Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v7

    if-ne v0, v7, :cond_2

    .line 1671
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v7, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v0, v7, v2, v5}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_launch_time_when_j_crash"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_launch_time_when_c_crash"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_launch_time_when_s_dead"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1676
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .line 1674
    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v6, p1

    .line 1675
    .restart local v0    # "tr":Ljava/lang/Throwable;
    :goto_3
    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1677
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final stopOptHostClassLoader()V
    .locals 12

    const-string v0, "OptHostClassLoader"

    const-string v1, "StartupSafeguard"

    .line 1933
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v4, "perf_preferences"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 1934
    .local v4, "sp":Landroid/content/SharedPreferences;
    move-object v4, v2

    const/4 v6, 0x1

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1935
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1938
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->createPerformanceBuilderObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v3

    .line 1939
    .local v0, "performanceBuilder":Ljava/lang/Object;
    const-string v7, "stopOptHostClassLoader"

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->invokePerformanceBuilder(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 1940
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->performance(Ljava/lang/Object;)V

    .line 1941
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1944
    .end local v0    # "performanceBuilder":Ljava/lang/Object;
    return-void

    .line 1942
    :catchall_0
    move-exception v0

    .line 1943
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1948
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 1946
    :catchall_1
    move-exception v0

    .line 1947
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1949
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method

.method public final trackStartup(ZLjava/lang/String;)V
    .locals 0
    .param p1, "bootFinish"    # Z
    .param p2, "finalClassName"    # Ljava/lang/String;

    .line 235
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    .line 236
    iput-object p2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public final updateLaunchTimeWhenCrash()V
    .locals 6

    .line 1911
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string v2, "framework_safeguard_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1912
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1913
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const-string v3, "key_launch_time_when_j_crash"

    iget-wide v4, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1914
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->isStartupCrash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    const-string v0, "key_launch_time_when_j_startup_crash"

    iget-wide v3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->D:J

    invoke-interface {v1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1917
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1920
    nop

    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    return-void

    .line 1918
    :catchall_0
    move-exception v0

    .line 1919
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "StartupSafeguard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1921
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method
