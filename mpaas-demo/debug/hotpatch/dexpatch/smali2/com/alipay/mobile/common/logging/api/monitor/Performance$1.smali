.class final Lcom/alipay/mobile/common/logging/api/monitor/Performance$1;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/monitor/Performance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 175
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .locals 1
    .param p1, "size"    # I

    .line 180
    new-array v0, p1, [Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$1;->newArray(I)[Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    move-result-object p1

    return-object p1
.end method
