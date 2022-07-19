.class public Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;
.super Ljava/lang/Object;
.source "MpaasTraffic.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/traffic/MpaasTraffic$Biz;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic$1;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->a:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->b:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->c:Ljava/lang/String;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/monitor/traffic/MpaasTraffic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alipay/mobile/monitor/traffic/MpaasTraffic$1;

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestLength"    # J
    .param p4, "responseLength"    # J
    .param p6, "biz"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo p1, "unknown_url"

    .line 39
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 40
    const-wide/16 p2, 0x0

    .line 42
    :cond_1
    cmp-long v2, p4, v0

    if-gez v2, :cond_2

    .line 43
    const-wide/16 p4, 0x0

    .line 45
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    add-long v1, p2, p4

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    iput-object p6, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static obtain(Ljava/lang/String;JJ)Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestLength"    # J
    .param p3, "responseLength"    # J

    .line 132
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->obtain(Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;JJLjava/lang/String;)Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestLength"    # J
    .param p3, "responseLength"    # J
    .param p5, "biz"    # Ljava/lang/String;

    .line 128
    new-instance v7, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public addLength(J)V
    .locals 5
    .param p1, "length"    # J

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 72
    .local v0, "totalLength":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "domain: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", addLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MpaasTraffic"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getBiz()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setBiz(Ljava/lang/String;)V
    .locals 0
    .param p1, "biz"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MpaasTraffic{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", domain=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", biz=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/monitor/traffic/MpaasTraffic;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return-void
.end method
