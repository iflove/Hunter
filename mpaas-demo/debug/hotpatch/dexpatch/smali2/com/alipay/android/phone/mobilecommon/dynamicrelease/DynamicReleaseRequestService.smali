.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;
.super Landroid/app/Service;
.source "DynamicReleaseRequestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;
    }
.end annotation


# static fields
.field public static final ACTION_DYNAMIC_RELEASE_BARCODE:Ljava/lang/String; = "action.dynamic.release.barcode"

.field public static final KEY_BIZ_TYPE:Ljava/lang/String; = "bizType"

.field public static final KEY_MD5:Ljava/lang/String; = "md5"

.field public static final KEY_RES_ID:Ljava/lang/String; = "resId"

.field public static final KEY_RES_TYPE:Ljava/lang/String; = "resType"

.field public static final KEY_RES_VERSION:Ljava/lang/String; = "resVersion"

.field public static final KEY_ROLL_BACK:Ljava/lang/String; = "rollBack"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field private static a:Z

.field private static b:I

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a:Z

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .locals 10
    .param p0, "newVersion"    # Ljava/lang/String;
    .param p1, "oldVersion"    # Ljava/lang/String;

    .line 76
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "newVersions":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "oldVersions":[Ljava/lang/String;
    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    .local v2, "min":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 81
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 82
    .local v5, "v1":J
    aget-object v7, v0, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 83
    .local v7, "v2":J
    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 84
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 85
    :cond_0
    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 86
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 80
    .end local v5    # "v1":J
    .end local v7    # "v2":J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    .end local v4    # "i":I
    :cond_2
    if-ge v2, v3, :cond_4

    array-length v3, v1

    array-length v4, v0

    if-eq v3, v4, :cond_4

    .line 92
    array-length v3, v1

    array-length v4, v0

    if-le v3, v4, :cond_3

    .line 93
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 94
    :cond_3
    array-length v3, v1

    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 95
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->DOWNGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3

    .line 98
    :cond_4
    sget-object v3, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    return-object v3
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "param"    # Landroid/os/Bundle;

    .line 264
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .local v7, "context":Landroid/content/Context;
    const/4 v0, 0x0

    move v8, v0

    .line 267
    .local v8, "bRet":Z
    :try_start_0
    const-string v1, "dynamic_release_process_result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    .line 268
    .local v1, "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    const-string v2, "dynamic_release_process_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "dynamicReleaseType":Ljava/lang/String;
    const-string v3, "dynamic_release_process_version"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "dynamicReleaseVersion":Ljava/lang/String;
    const-string v4, "dynamic_release_process_rollback"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 271
    .local v4, "rollbackEntities":Ljava/util/List;
    const-string v5, "dynamic_release_process_apply"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 272
    .local v5, "applyEntities":Ljava/util/List;
    const-string v6, "dynamic_release_process_token"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 274
    .local v9, "token":I
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/b;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->c:Ljava/util/Map;

    .line 277
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    .line 274
    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/b;->a(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v1    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .end local v2    # "dynamicReleaseType":Ljava/lang/String;
    .end local v3    # "dynamicReleaseVersion":Ljava/lang/String;
    .end local v4    # "rollbackEntities":Ljava/util/List;
    .end local v5    # "applyEntities":Ljava/util/List;
    .end local v8    # "bRet":Z
    .end local v9    # "token":I
    .local v0, "bRet":Z
    invoke-static {v7, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;->a(Landroid/content/Context;Z)V

    .line 282
    return-void

    .line 278
    .end local v0    # "bRet":Z
    .restart local v8    # "bRet":Z
    :catchall_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "DynamicRelease"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v7, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;->a(Landroid/content/Context;Z)V

    .line 282
    return-void

    .line 281
    :catchall_1
    move-exception v0

    invoke-static {v7, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;->a(Landroid/content/Context;Z)V

    throw v0
.end method

.method private static a(ZLandroid/os/Bundle;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;)Z
    .locals 11
    .param p0, "hotpatch"    # Z
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "info"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    const-string/jumbo v0, "size"

    const-string/jumbo v1, "net"

    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, "bRet":Z
    :try_start_0
    new-instance v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    invoke-direct {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 365
    .local v5, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    move-object v5, v3

    const-string/jumbo v6, "resId"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    .line 366
    const-string/jumbo v3, "resVersion"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    .line 367
    const-string/jumbo v3, "resType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    .line 368
    iget-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->rollback:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    .line 370
    if-eqz p0, :cond_1

    iget-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    iget-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iput-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->version:Ljava/lang/String;

    .line 372
    iget-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iput-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    .line 373
    iget-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iput-object v3, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->issueDesc:Ljava/lang/String;

    goto :goto_1

    .line 375
    :cond_1
    const-string v3, "0"

    iput-object v3, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->version:Ljava/lang/String;

    .line 378
    :goto_1
    const/4 v3, 0x0

    .line 380
    .local v3, "isDiffUrl":Z
    const-string v6, "isDiff"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    .line 381
    .local v7, "isDiff":Ljava/lang/Object;
    move-object v7, v6

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "true"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 382
    const/4 v3, 0x1

    .line 384
    :cond_2
    const-string/jumbo v6, "md5"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "md5":Ljava/lang/String;
    const-string/jumbo v8, "url"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 387
    .local v8, "url":Ljava/lang/String;
    const/4 v9, 0x0

    .line 388
    .local v9, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 389
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    .line 392
    :cond_3
    if-eqz v3, :cond_4

    .line 393
    iput-object v8, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->diffUrl:Ljava/lang/String;

    .line 394
    iput-object v6, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->diffMD5:Ljava/lang/String;

    .line 395
    iput v9, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->diffFileSize:I

    .line 396
    const-string v0, "action.dynamic.release.barcode"

    iput-object v0, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->issueDesc:Ljava/lang/String;

    goto :goto_2

    .line 398
    :cond_4
    iput-object v8, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileUrl:Ljava/lang/String;

    .line 399
    iput-object v6, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileMD5:Ljava/lang/String;

    .line 400
    iput v9, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileSize:I

    .line 403
    :goto_2
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    .line 405
    iget-object v0, v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    new-instance v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v1, v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    .line 409
    iget-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    const/4 v2, 0x1

    .line 414
    .end local v3    # "isDiffUrl":Z
    .end local v5    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    .end local v6    # "md5":Ljava/lang/String;
    .end local v7    # "isDiff":Ljava/lang/Object;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "size":I
    goto :goto_3

    .line 412
    :catchall_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    return v2
.end method

.method static synthetic access$000()I
    .locals 1

    .line 52
    sget v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 52
    sget v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b:I

    return v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 52
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 52
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    const-string v0, "DynamicRelease"

    .line 292
    :try_start_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 293
    .local v3, "info":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->success:Ljava/lang/Boolean;

    .line 294
    const-string v1, "bizType"

    sget-object v5, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v5}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 295
    const-string/jumbo v1, "rollBack"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    .line 296
    .local v5, "rb":Ljava/lang/Object;
    move-object v5, v1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 297
    goto :goto_0

    .line 298
    :cond_0
    instance-of v1, v5, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 299
    move-object v1, v5

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->rollback:Ljava/lang/Boolean;

    goto :goto_2

    .line 301
    :cond_1
    instance-of v1, v5, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->rollback:Ljava/lang/Boolean;

    .line 304
    :goto_2
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$1;->$SwitchMap$com$alipay$mobileappcommon$biz$rpc$dynamic$model$wrapper$DynamicResourceBizType:[I

    iget-object v7, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v7}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v4, :cond_7

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to handle barcode: info.bizType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void

    .line 325
    :cond_3
    invoke-static {v4, p1, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a(ZLandroid/os/Bundle;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 326
    return-void

    .line 329
    :cond_4
    iget-object v1, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->rollback:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 330
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "curHotpatchVersion":Ljava/lang/String;
    iget-object v6, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->version:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to rollback HOTPATCH(info.version="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), while current HotPatch Version is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void

    .line 337
    :cond_5
    iget-object v6, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 338
    .end local v1    # "curHotpatchVersion":Ljava/lang/String;
    move-object v6, v1

    move-object v1, v2

    goto :goto_4

    .line 329
    :cond_6
    move-object v1, v2

    move-object v6, v1

    goto :goto_4

    .line 306
    :cond_7
    invoke-static {v6, p1, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a(ZLandroid/os/Bundle;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 307
    return-void

    .line 313
    :cond_8
    iget-object v1, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 314
    .local v1, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    iget-object v6, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_b

    .line 315
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 316
    .local v6, "updateBundleKeys":Ljava/util/Set;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "key":Ljava/lang/String;
    if-eqz v6, :cond_a

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_3

    .line 322
    .end local v6    # "updateBundleKeys":Ljava/util/Set;
    .end local v7    # "key":Ljava/lang/String;
    :cond_9
    goto :goto_4

    .line 318
    .restart local v6    # "updateBundleKeys":Ljava/util/Set;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to rollback Bundle("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), while updateBundleKeys="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void

    .line 314
    .end local v6    # "updateBundleKeys":Ljava/util/Set;
    .end local v7    # "key":Ljava/lang/String;
    :cond_b
    move-object v6, v2

    .line 346
    .end local v1    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleBarcode() : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v1, "infoList":Ljava/util/List;
    move-object v1, v7

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;

    invoke-direct {v7}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;-><init>()V

    .line 352
    .local v6, "result":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;
    move-object v6, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v7, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;->success:Ljava/lang/Boolean;

    .line 353
    const-string v4, "DynamicResourceResult_from_barcode"

    iput-object v4, v6, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;->message:Ljava/lang/String;

    .line 354
    iput-object v1, v6, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;->info:Ljava/util/List;

    .line 355
    new-instance v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;

    invoke-direct {v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;-><init>()V

    invoke-virtual {v4, v7, v6, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->processDynamicReleaseResult(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    nop

    .end local v1    # "infoList":Ljava/util/List;
    .end local v3    # "info":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .end local v5    # "rb":Ljava/lang/Object;
    .end local v6    # "result":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;
    return-void

    .line 356
    :catchall_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "param"    # Landroid/os/Bundle;

    .line 425
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 426
    .local v2, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->start(Landroid/os/Bundle;ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .end local v2    # "context":Landroid/content/Context;
    return-void

    .line 427
    :catchall_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 183
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DynamicReleaseRequestService.onBind(intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService$DynamicReleaseRequestServiceImpl;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "DynamicRelease"

    .line 103
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 105
    sget-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a:Z

    if-eqz v0, :cond_5

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a:Z

    .line 108
    const-string v3, "DynamicReleaseTools"

    invoke-virtual {v1, v3, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 110
    .local v3, "sp":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .line 111
    .local v4, "newVersion":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NEW:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 112
    .local v5, "upgradeEnum":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    const-string v6, "key_product_version_name"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "oldVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v9, v7

    .line 116
    .local v9, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v4, v0

    .line 118
    if-eqz v8, :cond_0

    .line 119
    invoke-static {v4, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    .line 123
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 122
    .local v9, "e":Ljava/lang/Throwable;
    invoke-static {v2, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "DynamicReleaseRequestService.onCreate(): newVersion="

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", oldVersion="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", upgradeEnum="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->NONE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-eq v0, v5, :cond_5

    .line 130
    const-string v0, "DynamicRelease.db"

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 131
    .local v9, "dbCrypto":Ljava/io/File;
    move-object v9, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    .line 136
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->b(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 138
    .local v10, "updateBundleNames":Ljava/util/Set;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->clear(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    move-object v11, v7

    goto :goto_2

    .line 139
    :catchall_1
    move-exception v0

    move-object v11, v0

    .line 140
    .local v11, "throwable":Ljava/lang/Throwable;
    invoke-static {v2, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :try_start_2
    const-string v0, "dynamic_release.db"

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v12, v7

    .line 144
    .local v12, "db":Ljava/io/File;
    move-object v12, v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    .end local v12    # "db":Ljava/io/File;
    :cond_2
    goto :goto_2

    .line 147
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v12, v7

    :goto_1
    move-object v0, v12

    .line 148
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v11    # "throwable":Ljava/lang/Throwable;
    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v11, v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    if-eqz v4, :cond_3

    .line 155
    invoke-interface {v11, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getFilesDir()Ljava/io/File;

    move-result-object v6

    sget-object v12, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v12}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v0, "file":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "UpgradeEnum="

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": delete : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 162
    invoke-static/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->d(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 163
    .local v6, "reusableBundleKeys":Ljava/util/Set;
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getFilesDir()Ljava/io/File;

    move-result-object v15

    sget-object v16, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual/range {v16 .. v16}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v15, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v14

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", excludePrefixes="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v7, 0x0

    invoke-static {v0, v7, v6}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    .line 167
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestService;->getFilesDir()Ljava/io/File;

    move-result-object v14

    sget-object v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v15}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v7

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 172
    sget-object v2, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    if-ne v5, v2, :cond_4

    .line 173
    const-string v2, "client_upgrade_version"

    invoke-interface {v11, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_4
    invoke-virtual {v5}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "client_upgrade_type"

    invoke-interface {v11, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v2, "client_upgrade_time"

    invoke-interface {v11, v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "newVersion":Ljava/lang/String;
    .end local v5    # "upgradeEnum":Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .end local v6    # "reusableBundleKeys":Ljava/util/Set;
    .end local v8    # "oldVersion":Ljava/lang/String;
    .end local v9    # "dbCrypto":Ljava/io/File;
    .end local v10    # "updateBundleNames":Ljava/util/Set;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 434
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DynamicRelease"

    const-string v2, "DynamicReleaseRequestService.onDestroy()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 436
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DynamicReleaseRequestService.onUnbind(intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
