.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DynamicReleaseDatabaseHelper.java"


# static fields
.field public static final DYNAMIC_RELEASE_DB:Ljava/lang/String; = "dynamic_release.db"

.field public static final DYNAMIC_RELEASE_DB_CRYPTO:Ljava/lang/String; = "DynamicRelease.db"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 276
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper$1;

    invoke-direct {v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper$1;-><init>()V

    const-string v2, "dynamic_release.db"

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 284
    return-void
.end method

.method private static a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;)Ljava/lang/String;
    .locals 7
    .param p0, "model"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO dynamic_release_item(drt,drv,resType,resStatus,resVersion,resId,fileMD5,fileContent,fileUrl,processed) VALUES (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resType:Ljava/lang/String;

    .line 264
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "\'"

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileMD5:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileContent:Ljava/lang/String;

    .line 269
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileContent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->processed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)Ljava/lang/String;
    .locals 7
    .param p0, "drt"    # Ljava/lang/String;
    .param p1, "drv"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO dynamic_release_item(drt,drv,resType,resStatus,resVersion,resId,fileMD5,fileContent,fileUrl,processed) VALUES (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    .line 232
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "\'"

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileMD5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileContent:Ljava/lang/String;

    .line 237
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'false\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "drt"    # Ljava/lang/String;
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resVer"    # Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM dynamic_release_item WHERE drt=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND resId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " AND resVersion=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;",
            ">;"
        }
    .end annotation

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "list":Ljava/util/List;
    if-eqz p0, :cond_2

    .line 680
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .end local v0    # "list":Ljava/util/List;
    .local v1, "list":Ljava/util/List;
    const/4 v0, 0x0

    .line 683
    :cond_0
    new-instance v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    invoke-direct {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;-><init>()V

    .line 684
    .local v0, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    move-object v0, v2

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->id:I

    .line 686
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drt:Ljava/lang/String;

    .line 687
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drv:Ljava/lang/String;

    .line 689
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resType:Ljava/lang/String;

    .line 690
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resStatus:Ljava/lang/Integer;

    .line 691
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    .line 692
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    .line 694
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileMD5:Ljava/lang/String;

    .line 695
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileContent:Ljava/lang/String;

    .line 696
    const/16 v2, 0x9

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileUrl:Ljava/lang/String;

    .line 698
    const/16 v2, 0xa

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->processed:Z

    .line 699
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    .end local v0    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Ljava/util/List;)V

    move-object v0, v1

    .line 704
    .end local v1    # "list":Ljava/util/List;
    .local v0, "list":Ljava/util/List;
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_2
    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "resId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 415
    :try_start_0
    const-string v0, "DynamicRelease"

    const-string v1, "db.rawQuery(SELECT * FROM dynamic_release_item WHERE drt=? AND resId=? AND processed=? ORDER BY _id ASC)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM dynamic_release_item WHERE drt=? AND resId=? AND processed=? ORDER BY _id ASC"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 414
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    .end local p1    # "drt":Ljava/lang/String;
    .end local p2    # "resId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Ljava/util/List;)V
    .locals 7
    .param p0, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;",
            ">;)V"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v0, "rollbackItems":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 723
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 725
    .local v2, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    iget-object v3, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 726
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 729
    .end local v2    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    :cond_0
    goto :goto_0

    .line 732
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 733
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 737
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 738
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 739
    .restart local v2    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 740
    .local v3, "_iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 741
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 742
    .local v4, "_model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    iget-object v5, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drt:Ljava/lang/String;

    iget-object v6, v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drt:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    iget-object v6, v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    .line 743
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    iget-object v6, v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    .line 744
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 746
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 750
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 754
    goto :goto_1

    .line 756
    .end local v4    # "_model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    :cond_2
    goto :goto_2

    .line 757
    .end local v2    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    .end local v3    # "_iterator":Ljava/util/Iterator;
    :cond_3
    goto :goto_1

    .line 777
    :cond_4
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "drt"    # Ljava/lang/String;
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resVer"    # Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM dynamic_release_item WHERE drt=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND resId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND resVersion!=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "drt"    # Ljava/lang/String;
    .param p1, "resId"    # Ljava/lang/String;
    .param p2, "resVer"    # Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE dynamic_release_item SET processed=\'true\' WHERE drt=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND resId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND resVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' AND resStatus=\'1\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 354
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    if-nez v0, :cond_1

    .line 355
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    monitor-enter v0

    .line 356
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    .line 359
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 361
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public checkApplyOperationLegal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drt"    # Ljava/lang/String;
    .param p3, "resId"    # Ljava/lang/String;
    .param p4, "resVersion"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x1

    .line 433
    .local v0, "bRet":Z
    sget-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 434
    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v3, "bundleVersion":Ljava/lang/String;
    invoke-static {v1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 436
    .end local v3    # "bundleVersion":Ljava/lang/String;
    goto :goto_1

    .line 437
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 438
    .local v1, "list":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkApplyOperationLegal() list="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 442
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 443
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 445
    .local v3, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    move-object v3, v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    const/4 v0, 0x0

    .line 447
    goto :goto_1

    .line 442
    .end local v3    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 453
    .end local v1    # "list":Ljava/util/List;
    .end local v4    # "i":I
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkApplyOperationLegal(drt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): bRet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return v0
.end method

.method public checkRollbackOperationLegal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drt"    # Ljava/lang/String;
    .param p3, "resId"    # Ljava/lang/String;
    .param p4, "resVersion"    # Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "bRet":Z
    sget-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 473
    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 474
    .local v3, "bundleVersion":Ljava/lang/String;
    invoke-static {v1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 475
    .end local v3    # "bundleVersion":Ljava/lang/String;
    goto :goto_1

    .line 477
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 478
    .local v1, "list":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkRollbackOperationLegal() list="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 481
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 482
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 484
    .local v3, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    move-object v3, v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    const/4 v0, 0x1

    .line 486
    goto :goto_1

    .line 481
    .end local v3    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 492
    .end local v1    # "list":Ljava/util/List;
    .end local v4    # "i":I
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkRollbackOperationLegal(drt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): bRet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return v0
.end method

.method public declared-synchronized clear(Ljava/util/Set;)V
    .locals 10
    .param p1, "updateBundleNames"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "models":Ljava/util/List;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    const-string v2, "DynamicRelease"

    const-string v3, "db.rawQuery(SELECT * FROM dynamic_release_item WHERE processed=? ORDER BY _id ASC)"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT * FROM dynamic_release_item WHERE processed=? ORDER BY _id ASC"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v1

    .line 374
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 375
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v4, "DynamicRelease"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clear() models="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 379
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 381
    .local v1, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    iget-object v4, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 382
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 384
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    :cond_0
    iget-object v4, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->drt:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    iget-object v6, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v8, "Reused"

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->getLogParams()Ljava/util/Map;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 386
    .end local v1    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    goto :goto_0

    .line 390
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 391
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "DynamicRelease"

    const-string v4, "db.execSQL(DELETE FROM dynamic_release_item)"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v3, "DELETE FROM dynamic_release_item"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 395
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 398
    .restart local v1    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    invoke-static {v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "sql":Ljava/lang/String;
    const-string v5, "DynamicRelease"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "db.execSQL("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    .end local v1    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    .end local v4    # "sql":Ljava/lang/String;
    goto :goto_1

    .line 402
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 405
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 407
    :cond_3
    monitor-exit p0

    return-void

    .line 369
    .end local v0    # "models":Ljava/util/List;
    .end local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "updateBundleNames":Ljava/util/Set;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertDynamicResourceItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "drv"    # Ljava/lang/String;
    .param p3, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 601
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 604
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DynamicRelease"

    const-string v2, "db.execSQL(DELETE FROM dynamic_release_item WHERE processed=\'false\')"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v1, "DELETE FROM dynamic_release_item WHERE processed=\'false\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 607
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 608
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 610
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 611
    .local v2, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    invoke-static {p1, p2, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "sql":Ljava/lang/String;
    const-string v4, "DynamicRelease"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "db.execSQL("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    .end local v2    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    .end local v3    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 617
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 615
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 617
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 618
    monitor-exit p0

    return-void

    .line 617
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    :catchall_1
    move-exception v1

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 620
    :cond_1
    monitor-exit p0

    return-void

    .line 600
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "drt":Ljava/lang/String;
    .end local p2    # "drv":Ljava/lang/String;
    .end local p3    # "items":Ljava/util/List;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 288
    const-string v0, "DynamicRelease"

    const-string v1, "DynamicReleaseDatabaseHelper.onCreate()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "db.execSQL(CREATE TABLE IF NOT EXISTS dynamic_release_item (_id INTEGER PRIMARY KEY AUTOINCREMENT  NOT NULL,drt TEXT NOT NULL,drv TEXT NOT NULL,resType TEXT,resStatus INTEGER NOT NULL,resVersion TEXT NOT NULL,resId TEXT NOT NULL,fileMD5 TEXT,fileContent TEXT,fileUrl TEXT,processed BOOLEAN NOT NULL))"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "CREATE TABLE IF NOT EXISTS dynamic_release_item (_id INTEGER PRIMARY KEY AUTOINCREMENT  NOT NULL,drt TEXT NOT NULL,drv TEXT NOT NULL,resType TEXT,resStatus INTEGER NOT NULL,resVersion TEXT NOT NULL,resId TEXT NOT NULL,fileMD5 TEXT,fileContent TEXT,fileUrl TEXT,processed BOOLEAN NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 340
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicReleaseDatabaseHelper.onUpgrade("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DynamicRelease"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "db.execSQL(DROP TABLE IF EXISTS dynamic_release_item)"

    const-string v3, "DROP TABLE IF EXISTS dynamic_release_item"

    const/4 v4, 0x2

    if-eq p3, v4, :cond_0

    .line 330
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 335
    return-void

    .line 301
    :cond_0
    const/4 v4, 0x1

    if-ne v4, p2, :cond_3

    .line 302
    const-string v0, "db.rawQuery(SELECT * FROM dynamic_release_item WHERE processed=? ORDER BY _id ASC)"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "SELECT * FROM dynamic_release_item WHERE processed=? ORDER BY _id ASC"

    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "models":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onUpgrade() models="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 310
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 313
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 314
    invoke-static {v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "sql":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "db.execSQL("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    .end local v4    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 323
    .end local v0    # "models":Ljava/util/List;
    :cond_2
    return-void

    .line 324
    :cond_3
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 328
    return-void
.end method

.method public declared-synchronized queryAppliedBundle()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 624
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v0, "appliedBundles":Ljava/util/List;
    const-string v1, "DynamicRelease"

    const-string v2, "db.rawQuery(SELECT * FROM dynamic_release_item WHERE drt=? AND processed=? ORDER BY _id ASC)"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM dynamic_release_item WHERE drt=? AND processed=? ORDER BY _id ASC"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 628
    invoke-virtual {v5}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 627
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 629
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 631
    .local v3, "list":Ljava/util/List;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 633
    .local v2, "iterator":Ljava/util/Iterator;
    move-object v2, v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 636
    .local v1, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    new-instance v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;

    iget-object v5, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    iget-object v6, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    nop

    .end local v1    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 640
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 623
    .end local v0    # "appliedBundles":Ljava/util/List;
    .end local v3    # "list":Ljava/util/List;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryAppliedDynamicResourceItem()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, "extParams":Ljava/util/Map;
    :try_start_0
    const-string v1, "DynamicRelease"

    const-string v2, "db.rawQuery(SELECT * FROM dynamic_release_item WHERE processed=? ORDER BY _id ASC)"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT * FROM dynamic_release_item WHERE processed=? ORDER BY _id ASC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 653
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 655
    .local v1, "list":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DynamicRelease"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryAppliedDynamicResourceItem() list="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v2

    .line 660
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 661
    .local v3, "iterator":Ljava/util/Iterator;
    move-object v3, v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 664
    .local v2, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    iget-object v5, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    nop

    .end local v2    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 668
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 648
    .end local v0    # "extParams":Ljava/util/Map;
    .end local v1    # "list":Ljava/util/List;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryPreviousDynamicResourceItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    .locals 6
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "resId"    # Ljava/lang/String;
    .param p3, "resVersion"    # Ljava/lang/String;

    .line 509
    const/4 v0, 0x0

    .line 512
    .local v0, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 515
    .local v3, "list":Ljava/util/List;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 518
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;

    .line 520
    .local v2, "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    move-object v2, v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 521
    new-instance v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    invoke-direct {v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;-><init>()V

    .line 523
    move-object v0, v4

    iget-object v5, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resType:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    .line 524
    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resStatus:Ljava/lang/Integer;

    iput-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    .line 525
    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resVersion:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    .line 526
    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->resId:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    .line 528
    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileMD5:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileMD5:Ljava/lang/String;

    .line 529
    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileContent:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileContent:Ljava/lang/String;

    .line 530
    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;->fileUrl:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileUrl:Ljava/lang/String;

    .line 531
    goto :goto_1

    .line 517
    .end local v2    # "model":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseModel;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 535
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryPreviousDynamicResourceItem(drt="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", resVersion="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): preItem="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DynamicRelease"

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-object v0
.end method

.method public declared-synchronized updateDynamicResourceItemProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V
    .locals 8
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "drv"    # Ljava/lang/String;
    .param p3, "rollbackEntities"    # Ljava/util/List;
    .param p4, "applyEntities"    # Ljava/util/List;
    .param p5, "applyRollbackItems"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 554
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DynamicRelease"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateDynamicResourceItemProcessed(drt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", drv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 557
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 559
    if-eqz p4, :cond_0

    :try_start_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 561
    .local v3, "item":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    iget-object v4, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "sql":Ljava/lang/String;
    const-string v5, "DynamicRelease"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "db.execSQL("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 565
    iget-object v5, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v6, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 566
    const-string v5, "DynamicRelease"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "db.execSQL("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    .end local v3    # "item":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .end local v4    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 571
    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 574
    .restart local v3    # "item":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    iget-object v4, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    invoke-interface {p5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 576
    iget-object v4, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "sql":Ljava/lang/String;
    goto :goto_2

    .line 579
    .end local v4    # "sql":Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    invoke-static {p1, v4, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .restart local v4    # "sql":Ljava/lang/String;
    :goto_2
    const-string v5, "DynamicRelease"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "db.execSQL("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    .end local v3    # "item":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .end local v4    # "sql":Ljava/lang/String;
    goto :goto_1

    .line 586
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 589
    monitor-exit p0

    return-void

    .line 588
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    :catchall_1
    move-exception v0

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 553
    .end local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "drt":Ljava/lang/String;
    .end local p2    # "drv":Ljava/lang/String;
    .end local p3    # "rollbackEntities":Ljava/util/List;
    .end local p4    # "applyEntities":Ljava/util/List;
    .end local p5    # "applyRollbackItems":Ljava/util/Set;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
