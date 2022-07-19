.class Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;
.super Ljava/lang/Object;
.source "WifiChecker.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMeta"
.end annotation


# instance fields
.field private mCachedTime:J

.field private mFlag:Ljava/lang/String;

.field private mWifiID:Ljava/lang/String;

.field private mWifiMacAddr:Ljava/lang/String;

.field private mWifiName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mCachedTime:J

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mCachedTime:J

    .line 385
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public fromString(Ljava/lang/String;)Z
    .locals 4

    .line 430
    nop

    .line 432
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 435
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 437
    array-length v1, p1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 438
    return v0

    .line 439
    :cond_1
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiID:Ljava/lang/String;

    .line 440
    const/4 v1, 0x1

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiName:Ljava/lang/String;

    .line 441
    const/4 v2, 0x2

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiMacAddr:Ljava/lang/String;

    .line 442
    const/4 v2, 0x3

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mFlag:Ljava/lang/String;

    .line 443
    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mCachedTime:J

    .line 445
    iget-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiID:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->isEmpty(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->access$000(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 446
    goto :goto_0

    .line 448
    :cond_2
    const/4 v0, 0x1

    .line 451
    :goto_0
    goto :goto_1

    .line 449
    :catch_0
    move-exception p1

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromString,ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->log(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker;->access$100(Ljava/lang/String;)V

    .line 452
    :goto_1
    return v0

    .line 433
    :cond_3
    :goto_2
    return v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiID()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiID:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 5

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mCachedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mFlag:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setWifiID(Ljava/lang/String;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiID:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setWifiMacAddr(Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiMacAddr:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setWifiName(Ljava/lang/String;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiName:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 457
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 458
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiMacAddr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    iget-wide v1, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mCachedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 422
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mWifiMacAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-wide v0, p0, Lcom/alipay/mobile/android/security/upgrade/download/silent/WifiChecker$WifiMeta;->mCachedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    return-void
.end method
