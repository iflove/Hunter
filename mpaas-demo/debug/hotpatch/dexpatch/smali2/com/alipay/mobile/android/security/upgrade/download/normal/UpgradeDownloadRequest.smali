.class public Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;
.super Ljava/lang/Object;
.source "UpgradeDownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DownloadRequest"


# instance fields
.field private appId:Ljava/lang/String;

.field private autoInstall:Z

.field private autoLaunch:Z

.field private description:Ljava/lang/String;

.field private downloadStartTime:J

.field private downloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private needProgress:Z

.field private showDefaultNotification:Z

.field private showRunningNotification:Z

.field private targetFileName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest$1;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->targetFileName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showDefaultNotification:Z

    .line 57
    iput-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->needProgress:Z

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->targetFileName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showDefaultNotification:Z

    .line 57
    iput-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->needProgress:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->title:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->description:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showRunningNotification:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showDefaultNotification:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->appId:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->fileName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->targetFileName:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoInstall:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->needProgress:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoLaunch:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadStartTime:J

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStartTime()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadStartTime:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFileName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->targetFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoInstall()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoInstall:Z

    return v0
.end method

.method public isAutoLaunch()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoLaunch:Z

    return v0
.end method

.method public isNeedProgress()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->needProgress:Z

    return v0
.end method

.method public isShowDefaultNotification()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showDefaultNotification:Z

    return v0
.end method

.method public isShowRunningNotification()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showRunningNotification:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->appId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setAutoInstall(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoInstall:Z

    .line 142
    return-void
.end method

.method public setAutoLaunch(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoLaunch:Z

    .line 158
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->description:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDownloadStartTime(J)V
    .locals 0

    .line 229
    iput-wide p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadStartTime:J

    .line 230
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->fileName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setNeedProgress(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->needProgress:Z

    .line 150
    return-void
.end method

.method public setShowDefaultNotification(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showDefaultNotification:Z

    .line 126
    return-void
.end method

.method public setShowRunningNotification(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showRunningNotification:Z

    .line 118
    return-void
.end method

.method public setTargetFileName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->targetFileName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->title:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 187
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showRunningNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->showDefaultNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->targetFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoInstall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->needProgress:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->autoLaunch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;->downloadStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    return-void
.end method
