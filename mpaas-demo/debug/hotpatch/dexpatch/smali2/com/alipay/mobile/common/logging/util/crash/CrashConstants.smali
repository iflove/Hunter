.class public Lcom/alipay/mobile/common/logging/util/crash/CrashConstants;
.super Ljava/lang/Object;
.source "CrashConstants.java"


# static fields
.field public static final CRASH_TYPE_HARDWARE_ACCELERATE:I = 0x64

.field public static final CRASH_TYPE_UNKNOWN:I = 0x0

.field static final SP_KEY_CRASH_TYPES:Ljava/lang/String; = "crashTypes"

.field static final SP_KEY_H5_CRASHED:Ljava/lang/String; = "h5Crashed"

.field static final SP_KEY_LAST_NEBULAX_CRASH_INFO:Ljava/lang/String; = "lastNebulaxCrashInfo"

.field static final SP_NAME:Ljava/lang/String; = "perf_preferences"

.field public static sCrashDefWaitTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/common/logging/util/crash/CrashConstants;->sCrashDefWaitTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
