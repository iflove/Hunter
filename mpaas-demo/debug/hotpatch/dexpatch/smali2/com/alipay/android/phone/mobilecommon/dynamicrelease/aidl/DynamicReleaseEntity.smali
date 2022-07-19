.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
.super Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;
.source "DynamicReleaseEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity$1;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity$1;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)V
    .locals 10
    .param p1, "drv"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 77
    iget-object v2, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    iget-object v5, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileMD5:Ljava/lang/String;

    iget-object v6, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileUrl:Ljava/lang/String;

    iget-object v7, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileContent:Ljava/lang/String;

    iget-object v8, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->issueDesc:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileSize:I

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileSize:I

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "drv"    # Ljava/lang/String;
    .param p2, "resId"    # Ljava/lang/String;
    .param p3, "resVersion"    # Ljava/lang/String;
    .param p4, "resType"    # Ljava/lang/String;
    .param p5, "issueDesc"    # Ljava/lang/String;
    .param p6, "location"    # Ljava/lang/String;

    .line 67
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "drv"    # Ljava/lang/String;
    .param p2, "resId"    # Ljava/lang/String;
    .param p3, "resVersion"    # Ljava/lang/String;
    .param p4, "resType"    # Ljava/lang/String;
    .param p5, "fileMD5"    # Ljava/lang/String;
    .param p6, "fileUrl"    # Ljava/lang/String;
    .param p7, "fileContent"    # Ljava/lang/String;
    .param p8, "issueDesc"    # Ljava/lang/String;
    .param p9, "location"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->b:I

    .line 45
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resType:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileMD5:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileUrl:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileContent:Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileSize:I

    .line 53
    iput-object p8, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->issueDesc:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->c:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getDynamicReleaseVersion()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIssueDesc()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->issueDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getQuickRollback()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->b:I

    return v0
.end method

.method public setQuickRollback(I)V
    .locals 0
    .param p1, "quickRlbk"    # I

    .line 114
    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->b:I

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicReleaseEntity{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicReleaseVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", quickRollback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", location=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileMD5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->issueDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method
