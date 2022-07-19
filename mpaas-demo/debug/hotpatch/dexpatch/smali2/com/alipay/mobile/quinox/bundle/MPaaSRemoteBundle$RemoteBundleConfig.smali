.class public Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
.super Ljava/lang/Object;
.source "MPaaSRemoteBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteBundleConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bundleName:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig$1;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->bundleName:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->version:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->size:Ljava/lang/String;

    .line 173
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "size"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->bundleName:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->version:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->size:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->bundleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return-void
.end method
