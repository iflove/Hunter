.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
.super Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;
.source "DynamicReleaseModel.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final COLUMN_NAME_DRT:Ljava/lang/String; = "drt"

.field public static final COLUMN_NAME_DRV:Ljava/lang/String; = "drv"

.field public static final COLUMN_NAME_FILE_CONTENT:Ljava/lang/String; = "fileContent"

.field public static final COLUMN_NAME_FILE_MD5:Ljava/lang/String; = "fileMD5"

.field public static final COLUMN_NAME_FILE_URL:Ljava/lang/String; = "fileUrl"

.field public static final COLUMN_NAME_PROCESSED:Ljava/lang/String; = "processed"

.field public static final COLUMN_NAME_RES_ID:Ljava/lang/String; = "resId"

.field public static final COLUMN_NAME_RES_STATUS:Ljava/lang/String; = "resStatus"

.field public static final COLUMN_NAME_RES_TYPE:Ljava/lang/String; = "resType"

.field public static final COLUMN_NAME_RES_VERSION:Ljava/lang/String; = "resVersion"

.field public static final TABLE_NAME:Ljava/lang/String; = "dynamic_release_item"


# instance fields
.field public drt:Ljava/lang/String;

.field public drv:Ljava/lang/String;

.field public id:I

.field public processed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicReleaseModel{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", drv=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", processed=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->processed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-super {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/BaseResourceItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method
