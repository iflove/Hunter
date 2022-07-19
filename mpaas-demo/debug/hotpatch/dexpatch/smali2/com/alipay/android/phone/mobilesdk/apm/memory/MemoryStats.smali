.class public Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;
.super Ljava/lang/Object;
.source "MemoryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:J

.field private static final b:J


# instance fields
.field private c:F

.field private d:I

.field private e:J

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    .line 27
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    .line 37
    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:J

    const-wide/32 v2, 0x28000

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b:J

    .line 55
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a(Landroid/os/Parcel;)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 10

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MemoryStats isDetail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MemoryStats"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    .line 76
    sget-object p1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/alipay/mobile/monitor/tools/MemoryUtil;->getMemoryInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:I

    .line 79
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    .line 80
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    .line 81
    iget p1, p1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    goto :goto_0

    .line 83
    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:I

    .line 84
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    .line 85
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    .line 86
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v1, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :goto_0
    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b:J

    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    .line 93
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:I

    int-to-long v6, v0

    const-wide/32 v8, 0x28000

    sub-long/2addr v6, v8

    .line 94
    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    .line 95
    goto :goto_1

    .line 94
    :cond_1
    move-wide v4, v6

    .line 97
    :goto_1
    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 98
    move-wide v4, v2

    .line 100
    :cond_2
    long-to-float v0, v4

    long-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:F

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:F

    .line 104
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "healthScore:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " info:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 161
    if-nez p1, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:F

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryStats"

    const-string/jumbo v2, "readFromParcel"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static g()J
    .locals 2

    .line 136
    sget-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:F

    return v0
.end method

.method public final b()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:I

    return v0
.end method

.method public final c()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 177
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    sget-wide v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/32 v1, 0x28000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-wide v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b:J

    .line 178
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 177
    const-string v1, ","

    invoke-static {v1, v0}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->concatArray(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 146
    if-nez p1, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 151
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MemoryStats"

    const-string/jumbo v2, "writeToParcel"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method
