.class public Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
.super Ljava/lang/Object;
.source "TrafficRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord$1;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "reqSize"    # J
    .param p4, "respSize"    # J
    .param p6, "channel"    # Ljava/lang/String;
    .param p7, "owner"    # Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c()Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 72
    .local v2, "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a()V

    .line 74
    iput-object p0, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a:Ljava/lang/String;

    .line 75
    iput-object p1, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->b:Ljava/lang/String;

    .line 76
    iput-wide p2, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    .line 77
    iput-wide p4, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    .line 79
    iput-object v1, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    .line 80
    iput-object p6, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->f:Ljava/lang/String;

    .line 81
    iput-object p7, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->g:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->j:Z

    .line 84
    return-object v2
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->j:Z

    return v0
.end method

.method static synthetic b()Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    .locals 1

    .line 6
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c()Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    .locals 1

    .line 89
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;-><init>()V

    .line 90
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->j:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->b:Ljava/lang/String;

    .line 101
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    .line 102
    iput-wide v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    .line 104
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->f:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->g:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->i:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public final a(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->f:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->g:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->i:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 119
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v0, ", currentPage: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, ", currentUrl: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
