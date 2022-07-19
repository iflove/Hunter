.class Lcom/alipay/mobile/common/fgbg/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/common/fgbg/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private processName:Ljava/lang/String;

.field private processType:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

.field private topActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/alipay/mobile/common/fgbg/ProcessInfo$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/fgbg/ProcessInfo$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processType:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->topActivity:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 44
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processName:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->UNKNOWN:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    iput-object v1, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processType:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->topActivity:Ljava/lang/String;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "processType"    # Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    .param p3, "topActivity"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processType:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    .line 53
    iput-object p3, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->topActivity:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->topActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processType:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->processType:Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/fgbg/FgBgMonitor$ProcessType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/fgbg/ProcessInfo;->topActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void
.end method
