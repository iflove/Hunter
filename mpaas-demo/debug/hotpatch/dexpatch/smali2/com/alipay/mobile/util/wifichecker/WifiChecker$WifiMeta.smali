.class Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;
.super Ljava/lang/Object;
.source "WifiChecker.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/util/wifichecker/WifiChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiMeta"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->a:J

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->a:J

    .line 382
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->b:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public a()Z
    .locals 5

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->a:J

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

.method public b()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->c:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->d:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->e:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 4

    .line 435
    nop

    .line 437
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 440
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 442
    array-length v1, p1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 443
    return v0

    .line 444
    :cond_1
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->b:Ljava/lang/String;

    .line 445
    const/4 v1, 0x1

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->c:Ljava/lang/String;

    .line 446
    const/4 v2, 0x2

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->d:Ljava/lang/String;

    .line 447
    const/4 v2, 0x3

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->e:Ljava/lang/String;

    .line 448
    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->a:J

    .line 450
    iget-object p1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/util/wifichecker/WifiChecker;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 451
    goto :goto_0

    .line 453
    :cond_2
    const/4 v0, 0x1

    .line 456
    :goto_0
    goto :goto_1

    .line 454
    :catch_0
    move-exception p1

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromString,ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/util/wifichecker/WifiChecker;->b(Ljava/lang/String;)V

    .line 457
    :goto_1
    return v0

    .line 438
    :cond_3
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 462
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 463
    iget-object v1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    iget-object v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    iget-object v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    iget-object v2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    iget-wide v1, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 473
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 427
    iget-object p2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object p2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object p2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object p2, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-wide v0, p0, Lcom/alipay/mobile/util/wifichecker/WifiChecker$WifiMeta;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    return-void
.end method
