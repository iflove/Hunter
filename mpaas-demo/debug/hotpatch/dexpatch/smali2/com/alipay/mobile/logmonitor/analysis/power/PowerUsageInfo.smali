.class public Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
.super Ljava/lang/Object;
.source "PowerUsageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;,
        Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
    }
.end annotation


# instance fields
.field private a:Lcom/android/internal/app/IBatteryStats;

.field private b:I

.field private c:Lcom/android/internal/os/PowerProfile;

.field private d:Lcom/android/internal/os/BatteryStatsImpl;

.field private e:J

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:I

.field private k:F

.field private l:I

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    .line 68
    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    .line 70
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 115
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    .line 118
    :try_start_0
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    .line 119
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 124
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PowerUsageInfo ,uid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    nop

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    return-void

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppPath,exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .locals 3
    .param p1, "drainType"    # Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .line 924
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v2, p4, v0

    if-lez v2, :cond_0

    .line 925
    iput-wide p4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 926
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    .line 927
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p4, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    move-object v1, v2

    .line 930
    .local v1, "bs":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    move-object v1, v0

    iput-wide p2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->d:J

    .line 932
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    return-object v1
.end method

.method private a(J)V
    .locals 10
    .param p1, "uSecNow"    # J

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 766
    .local v0, "phoneOnTimeMs":J
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "radio.active"

    .line 767
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    long-to-double v4, v0

    mul-double v2, v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v8, v2, v4

    .line 769
    .local v8, "phoneOnPower":D
    sget-object v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object v2, p0

    move-wide v4, v0

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    nop

    .end local v0    # "phoneOnTimeMs":J
    .end local v8    # "phoneOnPower":D
    return-void

    .line 770
    :catchall_0
    move-exception v0

    .line 774
    return-void
.end method

.method private static a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    .locals 6
    .param p0, "bs"    # Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .param p1, "from"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .line 905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 906
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 910
    .local v1, "wbs":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    iget-wide v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    .line 911
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    iget-wide v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    .line 912
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    iget-wide v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    .line 913
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    iget-wide v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    .line 914
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    iget-wide v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 915
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    iget-wide v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    .line 916
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    iget-wide v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .end local v1    # "wbs":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 918
    :catchall_0
    move-exception v0

    .line 921
    return-void
.end method

.method private static a(D)Z
    .locals 5
    .param p0, "lvalue"    # D

    .line 945
    const-wide/16 v0, 0x0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(J)V
    .locals 20
    .param p1, "uSecNow"    # J

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    const-wide/16 v0, 0x0

    .line 780
    .local v0, "power":D
    :try_start_0
    iget-object v2, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v2, v8, v9, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    move-wide v10, v2

    .line 781
    .local v10, "screenOnTimeMs":J
    const-wide/16 v2, 0x0

    long-to-double v12, v10

    iget-object v6, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v14, "screen.on"

    .line 783
    invoke-virtual {v6, v14}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    mul-double v12, v12, v14

    add-double/2addr v12, v2

    .line 784
    .end local v0    # "power":D
    .local v12, "power":D
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "screen.full"

    .line 785
    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    move-wide v14, v0

    .line 786
    .local v14, "screenFullPower":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 787
    int-to-float v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v1, v1

    mul-double v1, v1, v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v1, v1, v16

    .line 789
    .local v1, "screenBinPower":D
    iget-object v3, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v6, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v3, v0, v8, v9, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v16

    div-long v16, v16, v4

    move-wide/from16 v18, v16

    .line 791
    .local v18, "brightnessTime":J
    move-wide/from16 v4, v18

    .end local v18    # "brightnessTime":J
    .local v4, "brightnessTime":J
    long-to-double v6, v4

    mul-double v6, v6, v1

    add-double/2addr v12, v6

    .line 786
    .end local v1    # "screenBinPower":D
    .end local v4    # "brightnessTime":J
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v4, 0x3e8

    move-object/from16 v7, p0

    goto :goto_0

    .line 797
    .end local v0    # "i":I
    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v0

    .line 798
    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object/from16 v1, p0

    move-wide v3, v10

    move-wide v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    nop

    .end local v10    # "screenOnTimeMs":J
    .end local v12    # "power":D
    .end local v14    # "screenFullPower":D
    return-void

    .line 799
    :catchall_0
    move-exception v0

    .line 802
    return-void
.end method

.method private c(J)V
    .locals 20
    .param p1, "uSecNow"    # J

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    .line 806
    :try_start_0
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    move-wide v10, v0

    .line 807
    .local v10, "onTimeMs":J
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 812
    .local v4, "runningTimeMs":J
    iget-wide v12, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e:J

    sub-long/2addr v0, v12

    .line 813
    move-wide v4, v0

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    .line 814
    const-wide/16 v4, 0x0

    move-wide v12, v4

    goto :goto_0

    .line 813
    :cond_0
    move-wide v12, v4

    .line 816
    .end local v4    # "runningTimeMs":J
    .local v12, "runningTimeMs":J
    :goto_0
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "wifi.on"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 817
    .local v0, "wifiOn":D
    iget-object v4, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v14, v4

    .line 819
    .local v14, "wifiActive":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v16, v14, v4

    cmpl-double v6, v0, v16

    if-lez v6, :cond_1

    .line 820
    div-double v0, v14, v4

    move-wide/from16 v16, v0

    goto :goto_1

    .line 819
    :cond_1
    move-wide/from16 v16, v0

    .line 822
    .end local v0    # "wifiOn":D
    .local v16, "wifiOn":D
    :goto_1
    mul-long v2, v2, v10

    long-to-double v0, v2

    mul-double v0, v0, v16

    long-to-double v2, v12

    mul-double v2, v2, v16

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v18, v0, v2

    .line 828
    .local v18, "wifiPower":D
    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    add-double v5, v18, v0

    move-object/from16 v1, p0

    move-wide v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    .line 830
    iget-object v1, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    .end local v10    # "onTimeMs":J
    .end local v12    # "runningTimeMs":J
    .end local v14    # "wifiActive":D
    .end local v16    # "wifiOn":D
    .end local v18    # "wifiPower":D
    return-void

    .line 831
    :catchall_0
    move-exception v0

    .line 834
    return-void
.end method

.method private d(J)V
    .locals 11
    .param p1, "uSecNow"    # J

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 838
    .local v2, "btOnTimeMs":J
    move-wide v6, v0

    .end local v2    # "btOnTimeMs":J
    .local v6, "btOnTimeMs":J
    long-to-double v0, v0

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string v3, "bluetooth.on"

    .line 840
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 842
    .local v0, "btPower":D
    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v4

    move v10, v4

    .line 843
    .local v10, "btPingCount":I
    int-to-double v4, v10

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string v9, "bluetooth.at"

    .line 844
    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double v4, v4, v8

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    .line 845
    sget-object v5, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    add-double v8, v0, v2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v2

    .line 847
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    .end local v0    # "btPower":D
    .end local v6    # "btOnTimeMs":J
    .end local v10    # "btPingCount":I
    return-void

    .line 848
    :catchall_0
    move-exception v0

    .line 851
    return-void
.end method

.method private e(J)V
    .locals 18
    .param p1, "uSecNow"    # J

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    .line 855
    :try_start_0
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 856
    invoke-virtual {v0, v8, v9, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    move-wide v10, v0

    .line 858
    .local v10, "idleTimeMs":J
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string v1, "cpu.idle"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 859
    .local v0, "idleP":D
    iget-object v2, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string v3, "cpu.active"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v12, v2

    .line 861
    .local v12, "idleAc":D
    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    div-double v4, v12, v2

    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    .line 862
    div-double v0, v12, v2

    move-wide v14, v0

    goto :goto_0

    .line 861
    :cond_0
    move-wide v14, v0

    .line 864
    .end local v0    # "idleP":D
    .local v14, "idleP":D
    :goto_0
    long-to-double v0, v10

    mul-double v0, v0, v14

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v16, v0, v2

    .line 866
    .local v16, "idlePower":D
    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object/from16 v1, p0

    move-wide v3, v10

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    nop

    .end local v10    # "idleTimeMs":J
    .end local v12    # "idleAc":D
    .end local v14    # "idleP":D
    .end local v16    # "idlePower":D
    return-void

    .line 867
    :catchall_0
    move-exception v0

    .line 870
    return-void
.end method

.method private f(J)V
    .locals 18
    .param p1, "uSecNow"    # J

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    .line 874
    const-wide/16 v0, 0x0

    .line 876
    .local v0, "power":D
    const-wide/16 v2, 0x0

    .line 877
    .local v2, "signalTimeMs":J
    const/4 v4, 0x0

    move-wide v10, v2

    .end local v2    # "signalTimeMs":J
    .local v4, "i":I
    .local v10, "signalTimeMs":J
    :goto_0
    const/4 v2, 0x5

    const-wide/16 v12, 0x3e8

    if-ge v4, v2, :cond_0

    .line 878
    :try_start_0
    iget-object v2, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v2, v4, v8, v9, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    div-long/2addr v2, v12

    .line 880
    .local v2, "strengthTimeMs":J
    div-long v5, v2, v12

    long-to-double v5, v5

    iget-object v12, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v13, "radio.on"

    .line 882
    invoke-virtual {v12, v13, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v12

    mul-double v5, v5, v12

    add-double/2addr v0, v5

    .line 884
    add-long/2addr v10, v2

    .line 877
    .end local v2    # "strengthTimeMs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 886
    .end local v4    # "i":I
    :cond_0
    iget-object v2, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v2, v8, v9, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v12

    move-wide v14, v2

    .line 888
    .local v14, "scanningTimeMs":J
    div-long v2, v14, v12

    long-to-double v2, v2

    iget-object v4, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "radio.scanning"

    .line 891
    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double v16, v0, v2

    .line 892
    .end local v0    # "power":D
    .local v16, "power":D
    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object/from16 v1, p0

    move-wide v3, v10

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    .line 893
    .local v0, "bs":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    const-wide/16 v1, 0x0

    cmp-long v3, v10, v1

    if-eqz v3, :cond_1

    .line 894
    iget-object v1, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iget v3, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v1, v2, v8, v9, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v1

    div-long/2addr v1, v12

    long-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    long-to-double v3, v10

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->p:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    .end local v0    # "bs":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .end local v10    # "signalTimeMs":J
    .end local v14    # "scanningTimeMs":J
    .end local v16    # "power":D
    :cond_1
    return-void

    .line 897
    :catchall_0
    move-exception v0

    .line 900
    return-void
.end method

.method private i()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 6

    .line 272
    const/4 v0, 0x0

    .line 275
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 276
    return-object v2

    .line 278
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v1

    .line 280
    .local v1, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 281
    .local v2, "parcel":Landroid/os/Parcel;
    move-object v2, v3

    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 282
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 283
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v0, v3

    .line 284
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    .line 287
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v1    # "data":[B
    .end local v2    # "parcel":Landroid/os/Parcel;
    goto :goto_0

    .line 288
    :catchall_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PowerUsageInfo"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private static j()Z
    .locals 2

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private k()V
    .locals 80

    .line 301
    move-object/from16 v1, p0

    const-string v2, "*"

    const-string/jumbo v3, "sensor"

    const-string v4, "PowerUsageInfo"

    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/SensorManager;

    .line 302
    iget v6, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 305
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v7

    .line 306
    new-array v8, v7, [D

    .line 307
    new-array v9, v7, [J

    .line 308
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    .line 309
    iget-object v11, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string v12, "cpu.active"

    invoke-virtual {v11, v12, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v11

    aput-wide v11, v8, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l()D

    move-result-wide v11

    .line 314
    const-wide/16 v13, 0x0

    cmpg-double v0, v11, v13

    if-gez v0, :cond_1

    .line 315
    return-void

    .line 317
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    move-wide/from16 v20, v11

    mul-long v10, v15, v17

    invoke-virtual {v0, v10, v11, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v10

    .line 319
    nop

    .line 320
    nop

    .line 321
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v12

    .line 322
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    .line 325
    const/16 v16, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v14, v16

    move-wide/from16 v25, v22

    const/4 v13, 0x0

    :goto_1
    const-string v0, "cpu.awake"

    const-wide v27, 0x408f400000000000L    # 1000.0

    if-ge v13, v15, :cond_2e

    .line 326
    :try_start_1
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v3

    move-object/from16 v3, v29

    check-cast v3, Landroid/os/BatteryStats$Uid;

    .line 328
    nop

    .line 329
    nop

    .line 330
    nop

    .line 332
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v29

    .line 334
    nop

    .line 335
    nop

    .line 336
    nop

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    nop

    .line 341
    nop

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 346
    const-string v31, ""

    .line 347
    nop

    .line 348
    nop

    .line 349
    move-object/from16 v32, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    move/from16 v33, v15

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v15

    move-object/from16 v34, v14

    iget v14, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    move/from16 v35, v13

    if-ne v15, v14, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 353
    :goto_2
    const-string v15, "=========== "

    if-eqz v14, :cond_3

    .line 354
    :try_start_2
    iget-object v13, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v38, v5

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 355
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v39, v0

    const-string v0, "UID: "

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " NAME: "

    .line 357
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Battery Real Time: "

    .line 358
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v10, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/16 v1, 0x7c

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 353
    :cond_3
    move-object/from16 v39, v0

    move-object/from16 v38, v5

    .line 366
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 367
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v13, v16

    move-wide/from16 v42, v22

    move-wide/from16 v44, v42

    const-wide/16 v40, 0x0

    const-wide/16 v46, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    .line 369
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    move-object/from16 v5, v48

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    .line 371
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v49

    .line 373
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v51

    .line 375
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v53

    .line 377
    const-wide/16 v55, 0xa

    mul-long v53, v53, v55

    add-long v44, v44, v53

    .line 378
    add-long v49, v49, v51

    move-object/from16 v48, v2

    mul-long v1, v49, v55

    .line 381
    nop

    .line 382
    move-object/from16 v49, v0

    move-wide/from16 v52, v10

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v0, v7, :cond_4

    .line 383
    invoke-virtual {v5, v0, v6}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v54

    aput-wide v54, v9, v0

    .line 384
    int-to-long v10, v10

    aget-wide v54, v9, v0

    add-long v10, v10, v54

    long-to-int v10, v10

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 386
    :cond_4
    if-nez v10, :cond_5

    .line 387
    const/4 v10, 0x1

    .line 390
    :cond_5
    nop

    .line 391
    const/4 v0, 0x0

    const-wide/16 v54, 0x0

    :goto_6
    if-ge v0, v7, :cond_6

    .line 392
    move v11, v6

    aget-wide v5, v9, v0

    long-to-double v5, v5

    move/from16 v56, v11

    move-object/from16 v50, v12

    int-to-double v11, v10

    div-double/2addr v5, v11

    .line 393
    long-to-double v11, v1

    mul-double v5, v5, v11

    aget-wide v11, v8, v0

    mul-double v5, v5, v11

    add-double v54, v54, v5

    .line 391
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v50

    move/from16 v6, v56

    goto :goto_6

    .line 395
    :cond_6
    move/from16 v56, v6

    move-object/from16 v50, v12

    add-long v42, v42, v1

    .line 397
    if-eqz v14, :cond_7

    const-wide/16 v5, 0x0

    cmpl-double v0, v54, v5

    if-eqz v0, :cond_7

    .line 398
    const-string/jumbo v0, "process: %s power: %.2f time: %d"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    .line 399
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v6, v10

    div-double v10, v54, v27

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v6, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 398
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v1, v50

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 397
    :cond_7
    move-object/from16 v1, v50

    .line 406
    :goto_7
    add-double v40, v40, v54

    .line 409
    if-eqz v13, :cond_a

    .line 410
    move-object/from16 v2, v48

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    .line 413
    :cond_8
    cmpg-double v0, v46, v54

    if-gez v0, :cond_9

    .line 414
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 415
    nop

    .line 416
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    move-wide/from16 v46, v54

    .line 418
    :cond_9
    move-object v12, v1

    move-object/from16 v0, v49

    move-wide/from16 v10, v52

    move/from16 v6, v56

    goto/16 :goto_4

    .line 409
    :cond_a
    move-object/from16 v2, v48

    .line 411
    :goto_8
    nop

    .line 412
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    move-object v12, v1

    move-object/from16 v0, v49

    move-wide/from16 v10, v52

    move-wide/from16 v46, v54

    move/from16 v6, v56

    goto/16 :goto_4

    .line 367
    :cond_b
    move/from16 v56, v6

    move-wide/from16 v52, v10

    move-object v1, v12

    move-wide/from16 v5, v44

    goto :goto_9

    .line 366
    :cond_c
    move/from16 v56, v6

    move-wide/from16 v52, v10

    move-object v1, v12

    move-wide/from16 v5, v22

    move-wide/from16 v42, v5

    const-wide/16 v40, 0x0

    .line 422
    :goto_9
    cmp-long v0, v5, v42

    if-lez v0, :cond_e

    .line 423
    if-eqz v14, :cond_d

    const-wide/16 v10, 0x2710

    add-long v42, v42, v10

    cmp-long v0, v5, v42

    if-lez v0, :cond_d

    .line 424
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v10, "WARNING! Cputime is more than 10 seconds behind Foreground time."

    invoke-interface {v0, v4, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_d
    move-wide v10, v5

    goto :goto_a

    .line 422
    :cond_e
    move-wide/from16 v10, v42

    .line 430
    :goto_a
    div-double v12, v40, v27

    .line 431
    if-eqz v14, :cond_f

    invoke-static {v12, v13}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v0

    if-nez v0, :cond_f

    .line 433
    const-string v31, "cpu"

    .line 434
    nop

    .line 435
    nop

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v48, v2

    const-string v2, " total cpu power: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    move/from16 v29, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v42, v10

    move-wide/from16 v40, v12

    goto :goto_b

    .line 431
    :cond_f
    move-object/from16 v48, v2

    move/from16 v29, v7

    .line 446
    move-wide/from16 v42, v22

    const-wide/16 v40, 0x0

    :goto_b
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v0

    .line 447
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v44, v22

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 448
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 452
    move-object/from16 v46, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 453
    if-eqz v7, :cond_10

    move-wide/from16 v49, v5

    move-wide/from16 v5, v52

    move/from16 v8, v56

    invoke-virtual {v7, v5, v6, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v52

    goto :goto_d

    :cond_10
    move-wide/from16 v49, v5

    move-wide/from16 v5, v52

    move/from16 v8, v56

    move-wide/from16 v52, v22

    .line 454
    :goto_d
    if-eqz v7, :cond_11

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    goto :goto_e

    :cond_11
    const/4 v7, 0x0

    .line 456
    :goto_e
    if-eqz v14, :cond_12

    .line 457
    move-object/from16 v47, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v54, v9

    const-string v9, " wakelock: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " count: "

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time: "

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v55, v10

    div-long v9, v52, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 456
    :cond_12
    move-object/from16 v47, v0

    move-object/from16 v54, v9

    move-wide/from16 v55, v10

    .line 467
    :goto_f
    add-long v44, v44, v52

    .line 468
    move-wide/from16 v52, v5

    move-object/from16 v0, v47

    move-wide/from16 v5, v49

    move-object/from16 v9, v54

    move-wide/from16 v10, v55

    move/from16 v56, v8

    move-object/from16 v8, v46

    goto/16 :goto_c

    .line 469
    :cond_13
    move-wide/from16 v49, v5

    move-object/from16 v46, v8

    move-object/from16 v54, v9

    move-wide/from16 v5, v52

    move/from16 v8, v56

    move-wide/from16 v55, v10

    div-long v9, v44, v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 470
    add-long v25, v25, v9

    .line 473
    move-object v2, v1

    long-to-double v0, v9

    move-object/from16 v7, p0

    :try_start_3
    iget-object v11, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v15, v39

    invoke-virtual {v11, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v44

    mul-double v0, v0, v44

    div-double v0, v0, v27

    .line 474
    add-double/2addr v12, v0

    .line 476
    if-eqz v14, :cond_15

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v11

    if-nez v11, :cond_15

    .line 478
    cmpl-double v11, v0, v40

    if-lez v11, :cond_14

    .line 479
    nop

    .line 480
    const-string/jumbo v31, "wakelock"

    .line 481
    move-wide/from16 v40, v0

    move-wide/from16 v42, v9

    .line 484
    :cond_14
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    const-string v15, "=========== wakelock power: %.2f"

    move-wide/from16 v44, v9

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v10, v1

    invoke-static {v15, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    goto :goto_10

    .line 476
    :cond_15
    move-wide/from16 v44, v9

    .line 489
    :goto_10
    :try_start_4
    invoke-virtual {v3, v5, v6, v8}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    div-long v9, v0, v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 490
    if-eqz v14, :cond_16

    .line 491
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "=========== wifilock time: "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_11

    .line 493
    :catchall_0
    move-exception v0

    goto :goto_12

    .line 495
    :cond_16
    :goto_11
    goto :goto_13

    .line 493
    :catchall_1
    move-exception v0

    move-wide/from16 v9, v22

    .line 494
    :goto_12
    :try_start_6
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    .line 499
    :goto_13
    :try_start_7
    iget v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v52
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 500
    :try_start_8
    iget v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v57
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 501
    add-long v0, v52, v57

    long-to-double v0, v0

    mul-double v59, v0, v20

    .line 502
    add-double v12, v12, v59

    .line 503
    if-eqz v14, :cond_18

    :try_start_9
    invoke-static/range {v59 .. v60}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v0, :cond_18

    .line 505
    cmpl-double v0, v59, v40

    if-lez v0, :cond_17

    .line 506
    nop

    .line 507
    :try_start_a
    const-string/jumbo v31, "tcp"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 508
    move-wide/from16 v42, v22

    move-wide/from16 v40, v59

    goto :goto_14

    .line 516
    :catchall_2
    move-exception v0

    move-wide/from16 v40, v59

    goto :goto_17

    .line 511
    :cond_17
    :goto_14
    :try_start_b
    const-string v0, "=========== tcp power: %.2f receive: %d send: %d"

    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/Object;

    .line 512
    invoke-static/range {v59 .. v60}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v11, v15

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x1

    aput-object v1, v11, v15

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v11, v15

    .line 511
    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 513
    const/16 v1, 0x7c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_15

    .line 516
    :catchall_3
    move-exception v0

    goto :goto_17

    .line 518
    :cond_18
    :goto_15
    move-wide/from16 v61, v57

    move-wide/from16 v63, v59

    move-wide/from16 v78, v9

    move-wide/from16 v9, v52

    move-wide/from16 v52, v78

    goto :goto_18

    .line 516
    :catchall_4
    move-exception v0

    move-wide/from16 v57, v22

    goto :goto_16

    :catchall_5
    move-exception v0

    move-wide/from16 v52, v22

    move-wide/from16 v57, v52

    :goto_16
    const-wide/16 v59, 0x0

    .line 517
    :goto_17
    :try_start_c
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    move-wide/from16 v61, v57

    move-wide/from16 v63, v59

    move-wide/from16 v78, v9

    move-wide/from16 v9, v52

    move-wide/from16 v52, v78

    .line 522
    :goto_18
    :try_start_d
    invoke-virtual {v3, v5, v6, v8}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move-wide/from16 v57, v9

    :try_start_e
    div-long v9, v0, v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 523
    long-to-double v0, v9

    :try_start_f
    iget-object v11, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v15, "wifi.on"

    .line 524
    invoke-virtual {v11, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v59
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    mul-double v0, v0, v59

    div-double v0, v0, v27

    .line 525
    add-double/2addr v12, v0

    .line 526
    if-eqz v14, :cond_1a

    :try_start_10
    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-nez v11, :cond_1a

    .line 528
    cmpl-double v11, v0, v40

    if-lez v11, :cond_19

    .line 529
    :try_start_11
    const-string/jumbo v31, "wifi"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 530
    nop

    .line 531
    move-wide/from16 v40, v0

    move-wide/from16 v42, v9

    .line 534
    :cond_19
    :try_start_12
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    const-string v15, "=========== wifi running power: %.2f running time: %dms"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-wide/from16 v59, v12

    const/4 v12, 0x2

    :try_start_13
    new-array v13, v12, [Ljava/lang/Object;

    .line 535
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v13, v1

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-interface {v11, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_19

    .line 537
    :catchall_6
    move-exception v0

    move-wide/from16 v12, v59

    goto :goto_1b

    :catchall_7
    move-exception v0

    move-wide/from16 v59, v12

    goto :goto_1b

    .line 526
    :cond_1a
    move-wide/from16 v59, v12

    .line 539
    :goto_19
    move-wide/from16 v12, v59

    goto :goto_1c

    .line 537
    :catchall_8
    move-exception v0

    goto :goto_1b

    :catchall_9
    move-exception v0

    goto :goto_1a

    :catchall_a
    move-exception v0

    move-wide/from16 v57, v9

    :goto_1a
    move-wide/from16 v9, v22

    .line 538
    :goto_1b
    :try_start_14
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    .line 543
    :goto_1c
    :try_start_15
    invoke-virtual {v3, v5, v6, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    move-wide/from16 v59, v9

    :try_start_16
    div-long v9, v0, v17
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 544
    long-to-double v0, v9

    :try_start_17
    iget-object v11, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v15, "wifi.scan"

    invoke-virtual {v11, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v65
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    mul-double v0, v0, v65

    div-double v0, v0, v27

    .line 546
    add-double/2addr v12, v0

    .line 547
    if-eqz v14, :cond_1c

    :try_start_18
    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    if-nez v11, :cond_1c

    .line 549
    cmpl-double v11, v0, v40

    if-lez v11, :cond_1b

    .line 550
    :try_start_19
    const-string/jumbo v31, "wifiscan"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 551
    nop

    .line 552
    move-wide/from16 v40, v0

    move-wide/from16 v42, v9

    .line 555
    :cond_1b
    :try_start_1a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    const-string v15, "=========== wifi scanning power: %.2f time: %dms"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    move-wide/from16 v65, v12

    const/4 v12, 0x2

    :try_start_1b
    new-array v13, v12, [Ljava/lang/Object;

    .line 556
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v13, v1

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-interface {v11, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_1d

    .line 558
    :catchall_b
    move-exception v0

    move-wide/from16 v12, v65

    goto :goto_1f

    :catchall_c
    move-exception v0

    move-wide/from16 v65, v12

    goto :goto_1f

    .line 547
    :cond_1c
    move-wide/from16 v65, v12

    .line 560
    :goto_1d
    move-wide/from16 v12, v65

    goto :goto_20

    .line 558
    :catchall_d
    move-exception v0

    goto :goto_1f

    :catchall_e
    move-exception v0

    goto :goto_1e

    :catchall_f
    move-exception v0

    move-wide/from16 v59, v9

    :goto_1e
    move-wide/from16 v9, v22

    .line 559
    :goto_1f
    :try_start_1c
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    :goto_20
    nop

    .line 564
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v65, v9

    move-wide v9, v12

    move-wide/from16 v67, v22

    move-wide/from16 v69, v67

    const-wide/16 v11, 0x0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 566
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    .line 568
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v13

    .line 569
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 570
    invoke-virtual {v15, v5, v6, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v71

    move-wide/from16 v73, v5

    div-long v5, v71, v17

    .line 571
    invoke-virtual {v15, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v15

    .line 574
    move-object/from16 v39, v0

    const/16 v0, -0x2710

    move/from16 v47, v8

    if-eq v13, v0, :cond_20

    .line 590
    const/4 v0, -0x1

    move-object/from16 v1, v38

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 591
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 592
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v8, v38

    check-cast v8, Landroid/hardware/Sensor;

    .line 594
    move-object/from16 v38, v0

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;

    invoke-direct {v0, v7, v8}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;Landroid/hardware/Sensor;)V

    .line 595
    if-eqz v8, :cond_1e

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a()I

    move-result v0

    if-ne v0, v13, :cond_1e

    .line 597
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getPower()F

    move-result v0

    move-object/from16 v72, v1

    float-to-double v0, v0

    .line 598
    move-object/from16 v76, v2

    move-object/from16 v75, v3

    long-to-double v2, v5

    mul-double v0, v0, v2

    div-double v0, v0, v27

    .line 599
    add-double/2addr v9, v0

    .line 600
    add-double/2addr v11, v0

    .line 601
    add-long v67, v67, v5

    .line 603
    if-eqz v14, :cond_1d

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 604
    const-string/jumbo v2, "sensor info: %s type: %d power: %.2f count: %d time: %dms"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 605
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v77

    const/16 v19, 0x0

    aput-object v77, v3, v19

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v36, 0x1

    aput-object v8, v3, v36

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v3, v1

    .line 604
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    move-object/from16 v2, v76

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 603
    :cond_1d
    move-object/from16 v2, v76

    const/16 v3, 0x7c

    goto :goto_23

    .line 595
    :cond_1e
    move-object/from16 v72, v1

    move-object/from16 v75, v3

    const/16 v3, 0x7c

    .line 611
    :goto_23
    move-object/from16 v0, v38

    move-object/from16 v1, v72

    move-object/from16 v3, v75

    goto/16 :goto_22

    .line 591
    :cond_1f
    move-object/from16 v72, v1

    move-object/from16 v75, v3

    const/16 v3, 0x7c

    move-object v13, v4

    move-object/from16 v8, v72

    const/4 v15, 0x3

    goto :goto_24

    .line 576
    :cond_20
    move-object/from16 v75, v3

    move-object/from16 v8, v38

    const/16 v3, 0x7c

    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string v13, "gps.on"

    invoke-virtual {v0, v13}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v37
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 577
    nop

    .line 579
    move-object v13, v4

    long-to-double v3, v5

    mul-double v37, v37, v3

    div-double v37, v37, v27

    .line 580
    add-double v9, v9, v37

    .line 581
    add-double v11, v11, v37

    .line 583
    if-eqz v14, :cond_21

    :try_start_1d
    invoke-static/range {v37 .. v38}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v0

    if-nez v0, :cond_21

    .line 584
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "=========== gps sensor: %s power: %.2f count: %d time: %dms"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 585
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x0

    aput-object v1, v4, v19

    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v36, 0x1

    aput-object v1, v4, v36

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v4, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x3

    aput-object v1, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-interface {v0, v13, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v69, v5

    move-object/from16 v38, v8

    move-object v4, v13

    move-object/from16 v0, v39

    move/from16 v8, v47

    move-wide/from16 v5, v73

    move-object/from16 v3, v75

    goto/16 :goto_21

    .line 583
    :cond_21
    const/4 v15, 0x3

    .line 617
    move-wide/from16 v69, v5

    :goto_24
    move-object/from16 v38, v8

    move-object v4, v13

    move-object/from16 v0, v39

    move/from16 v8, v47

    move-wide/from16 v5, v73

    move-object/from16 v3, v75

    goto/16 :goto_21

    .line 619
    :cond_22
    move-object/from16 v75, v3

    move-object v13, v4

    move-wide/from16 v73, v5

    move/from16 v47, v8

    move-object/from16 v8, v38

    if-eqz v14, :cond_24

    .line 620
    cmpl-double v0, v11, v40

    if-lez v0, :cond_23

    .line 621
    nop

    .line 622
    nop

    .line 623
    move-wide/from16 v40, v11

    move-object/from16 v31, v30

    move-wide/from16 v42, v67

    .line 626
    :cond_23
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "=========== UID: %d TOTALPOWER: %.2f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {v75 .. v75}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-wide/from16 v3, v40

    move-wide/from16 v5, v42

    goto :goto_25

    .line 619
    :cond_24
    move-object/from16 v0, v31

    move-wide/from16 v3, v40

    move-wide/from16 v5, v42

    .line 630
    :goto_25
    const-wide/16 v14, 0x0

    cmpl-double v12, v9, v14

    if-nez v12, :cond_26

    invoke-virtual/range {v75 .. v75}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v24

    if-nez v24, :cond_25

    goto :goto_26

    :cond_25
    move-object/from16 v38, v8

    move-wide/from16 v36, v9

    move-object/from16 v11, v75

    goto/16 :goto_28

    .line 631
    :cond_26
    :goto_26
    new-instance v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    sget-object v15, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/16 v19, 0x0

    aput-wide v9, v1, v19

    move-object/from16 v11, v75

    invoke-direct {v14, v15, v11, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 633
    move-object/from16 v38, v8

    move-wide/from16 v36, v9

    move-wide/from16 v8, v55

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    .line 634
    move-wide/from16 v8, v69

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    .line 635
    move-wide/from16 v9, v59

    iput-wide v9, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    .line 636
    move-wide/from16 v8, v49

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    .line 637
    move-wide/from16 v8, v44

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 638
    move-wide/from16 v8, v57

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    .line 639
    move-wide/from16 v8, v61

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    .line 640
    move-wide/from16 v9, v52

    iput-wide v9, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->n:J

    .line 641
    move-wide/from16 v8, v63

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->m:D

    .line 642
    move-wide/from16 v9, v65

    iput-wide v9, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    .line 643
    move-wide/from16 v8, v67

    iput-wide v8, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    .line 645
    iput-object v0, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->r:Ljava/lang/String;

    .line 646
    iput-wide v3, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->s:D

    .line 647
    iput-wide v5, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->t:J

    .line 648
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->u:Ljava/lang/String;

    .line 651
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_27

    .line 652
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 653
    :cond_27
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_28

    .line 654
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 656
    :cond_28
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    :goto_27
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    if-nez v0, :cond_29

    .line 659
    goto :goto_29

    .line 662
    :cond_29
    :goto_28
    move-object/from16 v14, v34

    :goto_29
    if-eqz v12, :cond_2d

    .line 663
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_2a

    .line 664
    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    add-double v0, v0, v36

    iput-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    goto :goto_2b

    .line 665
    :cond_2a
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_2b

    .line 666
    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    add-double v0, v0, v36

    iput-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    goto :goto_2b

    .line 668
    :cond_2b
    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v2, v36, v0

    if-lez v2, :cond_2c

    .line 669
    move-wide/from16 v9, v36

    iput-wide v9, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    goto :goto_2a

    .line 668
    :cond_2c
    move-wide/from16 v9, v36

    .line 670
    :goto_2a
    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v0, v9

    iput-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    .line 325
    :cond_2d
    :goto_2b
    add-int/lit8 v0, v35, 0x1

    move-object v1, v7

    move-object v4, v13

    move/from16 v7, v29

    move-object/from16 v3, v30

    move-object/from16 v12, v32

    move/from16 v15, v33

    move-object/from16 v5, v38

    move-object/from16 v8, v46

    move/from16 v6, v47

    move-object/from16 v2, v48

    move-object/from16 v9, v54

    move-wide/from16 v10, v73

    move v13, v0

    goto/16 :goto_1

    .line 702
    :catchall_10
    move-exception v0

    goto/16 :goto_2d

    :catchall_11
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_2d

    .line 678
    :cond_2e
    move-object v15, v0

    move-object v7, v1

    move-object v13, v4

    move/from16 v47, v6

    move-object/from16 v34, v14

    if-eqz v34, :cond_30

    .line 679
    iget-object v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    mul-long v1, v1, v17

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v0

    div-long v0, v0, v17

    .line 681
    iget-object v2, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    div-long v2, v2, v17

    add-long v25, v25, v2

    sub-long v0, v0, v25

    .line 684
    cmp-long v2, v0, v22

    if-lez v2, :cond_30

    .line 686
    long-to-double v2, v0

    iget-object v4, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v2, v2, v4

    div-double v2, v2, v27

    .line 692
    move-object/from16 v14, v34

    iget-wide v4, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    add-long/2addr v4, v0

    iput-wide v4, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 693
    iget-wide v0, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    add-double/2addr v0, v2

    iput-wide v0, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    .line 694
    iget-object v0, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->c:[D

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    add-double/2addr v4, v2

    aput-wide v4, v0, v1

    .line 695
    iget-wide v0, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    iget-wide v4, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v6, v0, v4

    if-lez v6, :cond_2f

    .line 696
    iget-wide v0, v14, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    iput-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 698
    :cond_2f
    iget-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v0, v2

    iput-wide v0, v7, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    goto :goto_2c

    .line 702
    :catchall_12
    move-exception v0

    goto :goto_2e

    .line 704
    :cond_30
    :goto_2c
    return-void

    .line 702
    :catchall_13
    move-exception v0

    move-object v7, v1

    :goto_2d
    move-object v13, v4

    .line 703
    :goto_2e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v13, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 706
    return-void
.end method

.method private l()D
    .locals 22

    move-object/from16 v1, p0

    .line 715
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v2, "wifi.active"

    .line 716
    invoke-virtual {v0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    .line 717
    .local v2, "WIFI_POWER":D
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v6, "radio.active"

    .line 718
    invoke-virtual {v0, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v6, v4

    .line 719
    .local v6, "MOBILE_POWER":D
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v4, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 720
    invoke-virtual {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v4

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 721
    invoke-virtual {v0, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 722
    .local v4, "mobileData":J
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v8

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v10, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 723
    invoke-virtual {v0, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    sub-long/2addr v8, v4

    .line 724
    .local v8, "wifiData":J
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v14

    .line 725
    .local v16, "radioDataUptimeMs":J
    move-wide/from16 v16, v10

    const-wide/16 v18, 0x8

    cmp-long v0, v10, v14

    if-eqz v0, :cond_0

    mul-long v10, v4, v18

    mul-long v10, v10, v12

    div-long v10, v10, v16

    goto :goto_0

    :cond_0
    const-wide/32 v10, 0x30d40

    .line 728
    .local v10, "mobileBps":J
    :goto_0
    div-long v12, v10, v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v12, v12

    div-double v12, v6, v12

    .line 729
    .local v12, "mobileCostPerByte":D
    const-wide v18, 0x40fe848000000000L    # 125000.0

    div-double v18, v2, v18

    .line 730
    .local v18, "wifiCostPerByte":D
    add-long v20, v8, v4

    cmp-long v0, v20, v14

    if-eqz v0, :cond_1

    .line 731
    long-to-double v14, v4

    mul-double v14, v14, v12

    long-to-double v0, v8

    mul-double v0, v0, v18

    add-double/2addr v14, v0

    add-long v0, v4, v8

    long-to-double v0, v0

    div-double/2addr v14, v0

    return-wide v14

    .line 735
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0

    .line 737
    .end local v2    # "WIFI_POWER":D
    .end local v4    # "mobileData":J
    .end local v6    # "MOBILE_POWER":D
    .end local v8    # "wifiData":J
    .end local v10    # "mobileBps":J
    .end local v12    # "mobileCostPerByte":D
    .end local v16    # "radioDataUptimeMs":J
    .end local v18    # "wifiCostPerByte":D
    :catchall_0
    move-exception v0

    .line 738
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method private m()V
    .locals 5

    .line 744
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 745
    .local v0, "which":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 746
    .local v1, "uSecTime":J
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v3

    .line 753
    .local v3, "uSecNow":J
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(J)V

    .line 754
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b(J)V

    .line 755
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c(J)V

    .line 756
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d(J)V

    .line 757
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e(J)V

    .line 758
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f(J)V

    .line 760
    return-void
.end method

.method private n()V
    .locals 14

    .line 949
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 950
    .local v0, "ifilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    move-object v3, v2

    .line 952
    .local v3, "batteryStatus":Landroid/content/Intent;
    move-object v3, v1

    if-eqz v1, :cond_5

    .line 953
    const-string/jumbo v1, "status"

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x0

    move v6, v5

    .line 955
    .local v6, "status":I
    move v6, v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v7, :cond_1

    const/4 v1, 0x5

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 958
    .local v1, "isCharging":Z
    :goto_1
    const-string/jumbo v9, "plugged"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move v10, v5

    .line 960
    .local v10, "chargePlug":I
    move v10, v9

    if-ne v9, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 961
    .local v7, "usbCharge":Z
    :goto_2
    if-ne v10, v8, :cond_3

    const/4 v5, 0x1

    .line 962
    .local v5, "acCharge":Z
    :cond_3
    const-string v8, "level"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 964
    .local v8, "level":I
    const-string/jumbo v9, "scale"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 966
    .local v9, "scale":I
    const/high16 v11, -0x40800000    # -1.0f

    .line 967
    .local v11, "batteryPct":F
    if-eq v8, v4, :cond_4

    if-eq v9, v4, :cond_4

    .line 968
    int-to-float v4, v8

    int-to-float v12, v9

    div-float v11, v4, v12

    .line 970
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v2, "message":Ljava/lang/StringBuilder;
    move-object v2, v4

    const-string v12, "isCharging = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 972
    const-string v4, ", usbCharge = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 973
    const-string v4, ", acCharge = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 974
    const-string v4, ", percent = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 975
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PowerUsageInfo"

    invoke-interface {v4, v13, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    .end local v1    # "isCharging":Z
    .end local v2    # "message":Ljava/lang/StringBuilder;
    .end local v5    # "acCharge":Z
    .end local v6    # "status":I
    .end local v7    # "usbCharge":Z
    .end local v8    # "level":I
    .end local v9    # "scale":I
    .end local v10    # "chargePlug":I
    .end local v11    # "batteryPct":F
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    return v0
.end method

.method public final b()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cpuTime--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v1, "|wakelockTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, "|wifiscanningTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, "|sensorTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v1, "|drainDetail--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-object v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    return-object v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->r:Ljava/lang/String;

    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()D
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    if-eqz v0, :cond_0

    .line 177
    iget-wide v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->s:D

    return-wide v0

    .line 179
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    if-eqz v0, :cond_0

    .line 184
    iget-wide v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->t:J

    return-wide v0

    .line 186
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final g()Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    return-object v0
.end method

.method public final h()Z
    .locals 8

    .line 201
    const/4 v0, 0x0

    .line 205
    .local v0, "find":Z
    :try_start_0
    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 206
    return v2

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    .line 210
    if-nez v1, :cond_1

    .line 212
    return v2

    .line 215
    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 216
    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    .line 217
    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    .line 218
    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    .line 219
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e:J

    .line 221
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 223
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 225
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n()V

    .line 226
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k()V

    .line 228
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m()V

    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 231
    const/4 v1, 0x1

    .line 232
    .local v1, "index":I
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 233
    return v2

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 241
    .local v3, "sipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    move-object v3, v4

    iget-object v4, v4, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a:Landroid/os/BatteryStats$Uid;

    if-nez v4, :cond_3

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 243
    goto :goto_0

    .line 245
    :cond_3
    iget v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    iget-object v5, v3, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 246
    const/4 v0, 0x1

    .line 248
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v4, "PowerUsageInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CPU Run Time: ### cpuTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", cpuFgTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", wakelockTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-wide v4, v3, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    iget-wide v6, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    div-double/2addr v4, v6

    double-to-float v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v2, v2, v4

    .line 254
    .local v2, "percentOfTotal":F
    iput v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    .line 255
    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    .line 256
    iput-object v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 258
    goto :goto_1

    .line 260
    .end local v2    # "percentOfTotal":F
    :cond_4
    nop

    .end local v3    # "sipper":Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    add-int/lit8 v1, v1, 0x1

    .line 261
    goto :goto_0

    .line 263
    :cond_5
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh ,mPercentOfTotal:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",find:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    nop

    .end local v1    # "index":I
    goto :goto_2

    .line 265
    :catchall_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh,exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return v0
.end method
