.class public Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;
.super Ljava/lang/Object;
.source "LowEndDeviceUtil.java"


# static fields
.field static sChecked:Z

.field static sForceLowEndDevice:Z

.field static sInLowEndDeviceList:Z

.field static sNeedDowngradeStart:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sForceLowEndDevice:Z

    .line 19
    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sChecked:Z

    .line 20
    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sInLowEndDeviceList:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sForceLowEndDevice:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->isLowEndDevices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    return v1

    .line 79
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isLowEndDevice(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sForceLowEndDevice:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    return v0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->isLowEndDevices(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isLowEndDevices(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 35
    .local v3, "totalRam":J
    move-wide v3, v1

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    .line 36
    const-wide v1, 0x80000000L

    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    .line 37
    return v0

    .line 42
    .end local v3    # "totalRam":J
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sChecked:Z

    if-nez v1, :cond_3

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v1, "set":Ljava/util/Set;
    const/4 v2, 0x0

    move-object v3, v2

    .line 45
    .local v3, "devices":Ljava/lang/String;
    const-string v4, "HM 2A,vivo X5L,R8107,2014501,HUAWEI P7-L07,vivo Y33,F103,Coolpad 8675,HUAWEI P7-L09,Coolpad 8675-A,HM NOTE 1TD,G621-TL00,vivo X3t,Coolpad Y75,C8817D,M463C,Coolpad 8297,Coolpad 8675-FHD,Coolpad 8297-T01,2013022,C730Lw,HM NOTE 1W,VOTO GT7,vivo Y13iL,SM-G7106,2013022,vivo Y22L,lephone T2,M623C,Coolpad 8675-HD,HM 1SC,M355,HUAWEI P7-L00,GT-I9300,HONOR H30-L01,M351,JXD,KOPO L8,H30-T00,vivo Y13,Hisense M20-T,HUAWEI C8817E,GN5001,HM 1SW,R827T,GN151,LA-S1,Hol-T00,V188S,C03,vivo Y17T,DOOV M1t,HLJ-GM-Q1,Coolpad 8720L,Lenovo A788t,YEPEN,lephone T708,F8909,HONOR H30-L01M,G620S-UL00,XM-T,UOOGOU,4G+,K-Touch H2,LA2-S,KONKA D557,HUAWEI C8816,C630Lw,HUAWEI P6-C00,DOOV L5M,Lenovo S850t,F303,Coolpad 8730L,gucci,LA-S5,vivo Y17W,Coolpad 8675-W00,HUAWEI P6-T00,K-Touch H2,KONKA D557,V183,BF_A500,Lenovo S60-t,A51kc,Coolpad 5263S,HONOR H30-L02,vivo Y22iL,SM-G7108,2013023,Coolpad 8729,R1,vivo X1St,GM,KOPO L7,WP-S,XBS,R819T,M040,Best_sonny_LT416,Lenovo A3860,Coolpad Y80D,X1 7.0,Coolpad 5263S,T1,S6,Lovme-T15,Coolpad SK1-01,Z1988,P6,P8"

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 46
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 47
    .local v2, "device":Ljava/lang/String;
    move-object v2, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 48
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v2    # "device":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 51
    :cond_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sInLowEndDeviceList:Z

    .line 52
    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sChecked:Z

    .line 55
    .end local v1    # "set":Ljava/util/Set;
    .end local v3    # "devices":Ljava/lang/String;
    :cond_3
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sInLowEndDeviceList:Z

    return v0
.end method

.method public static needDowngradeStart(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sNeedDowngradeStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->a(Landroid/content/Context;)Z

    move-result v0

    .line 67
    .local v0, "ret":Z
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    sput-object v1, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sNeedDowngradeStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    return v1
.end method

.method public static setForceLowEndDevice(Z)V
    .locals 0
    .param p0, "forceLowEndDevice"    # Z

    .line 59
    sput-boolean p0, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->sForceLowEndDevice:Z

    .line 60
    return-void
.end method
