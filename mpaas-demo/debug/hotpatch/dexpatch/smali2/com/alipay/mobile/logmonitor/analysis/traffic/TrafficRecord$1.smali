.class final Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord$1;
.super Ljava/lang/Object;
.source "TrafficRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->b()Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    .local v1, "record":Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a()V

    .line 59
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a(Landroid/os/Parcel;)V

    .line 61
    invoke-static {v1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;->a(Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;)Z

    .line 62
    return-object v1
.end method

.method private static a(I)[Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;
    .locals 1
    .param p0, "size"    # I

    .line 66
    new-array v0, p0, [Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord$1;->a(Landroid/os/Parcel;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord$1;->a(I)[Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficRecord;

    move-result-object p1

    return-object p1
.end method
