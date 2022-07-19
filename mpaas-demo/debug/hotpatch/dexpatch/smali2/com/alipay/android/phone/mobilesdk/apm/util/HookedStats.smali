.class public Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;
.super Ljava/lang/Object;
.source "HookedStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/alipay/android/phone/mobilesdk/apm/util/HookedPoint;

.field protected b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->a(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;

    .line 9
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 75
    if-nez p1, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "sPoint":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "readFromParcel"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedPoint;->valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/apm/util/HookedPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/HookedPoint;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->c:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->d:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->e:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->f:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->g:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->h:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->i:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->j:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/HookedPoint;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->b:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->c:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->e:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->f:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->g:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->h:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->i:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->j:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 98
    const-string v1, "\t"

    invoke-static {v1, v0}, Lcom/alipay/mobile/monitor/util/MonitorUtils;->concatArray(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 53
    if-nez p1, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->a:Lcom/alipay/android/phone/mobilesdk/apm/util/HookedPoint;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedPoint;->name()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "sPoint":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "writeToParcel"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->d:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->e:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/HookedStats;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
