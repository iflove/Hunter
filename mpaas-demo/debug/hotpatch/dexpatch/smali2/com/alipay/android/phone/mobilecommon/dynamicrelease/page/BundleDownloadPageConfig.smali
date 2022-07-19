.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
.super Ljava/lang/Object;
.source "BundleDownloadPageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appId:Ljava/lang/String;

.field public bundleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public canSkip:Z

.field public skipContent:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->canSkip:Z

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->canSkip:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->appId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->bundleNames:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->title:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->subTitle:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->skipContent:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->canSkip:Z

    .line 43
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "skipContent"    # Ljava/lang/String;
    .param p5, "canSkip"    # Z
    .param p6, "bundleNames"    # [Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->canSkip:Z

    .line 28
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->appId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->title:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->subTitle:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->skipContent:Ljava/lang/String;

    .line 32
    iput-boolean p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->canSkip:Z

    .line 33
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->bundleNames:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->bundleNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->skipContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;->canSkip:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    return-void
.end method
