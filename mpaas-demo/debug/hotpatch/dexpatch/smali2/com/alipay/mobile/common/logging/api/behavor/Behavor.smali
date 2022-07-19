.class public Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
.super Ljava/lang/Object;
.source "Behavor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/common/logging/api/behavor/Behavor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 671
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const-string/jumbo v0, "u"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->q:Ljava/lang/String;

    .line 268
    const-string v0, "c"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->r:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->B:Ljava/lang/String;

    .line 321
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->C:I

    .line 632
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const-string/jumbo v0, "u"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->q:Ljava/lang/String;

    .line 268
    const-string v0, "c"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->r:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->B:Ljava/lang/String;

    .line 321
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->C:I

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->a:Ljava/lang/String;

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->b:Ljava/lang/String;

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->c:Ljava/lang/String;

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->d:Ljava/lang/String;

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->e:Ljava/lang/String;

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->f:Ljava/lang/String;

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->g:Ljava/lang/String;

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->h:Ljava/lang/String;

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->i:Ljava/lang/String;

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->j:Ljava/lang/String;

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->k:Ljava/lang/String;

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->l:Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->m:Ljava/lang/String;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->n:Ljava/lang/String;

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->o:Ljava/lang/String;

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->p:Ljava/lang/String;

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->q:Ljava/lang/String;

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->B:Ljava/lang/String;

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->r:Ljava/lang/String;

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 655
    .local v0, "extParamsSize":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    .line 656
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->t:Ljava/lang/String;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->u:Ljava/lang/String;

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->v:Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->w:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->x:Ljava/lang/String;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->y:Ljava/lang/String;

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->z:Ljava/lang/String;

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->C:I

    .line 669
    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public getAbTestInfo()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourPro()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityContentId()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    return-object v0
.end method

.method public getLegacyParam()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getLogPro()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggerLevel()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->C:I

    return v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getPageStayTime()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getParam3()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRefViewID()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderBizType()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedID()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSpmStatus()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackDesc()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackToken()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCaseID()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getViewID()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVituralUserId()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getxPath()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->z:Ljava/lang/String;

    return-object v0
.end method

.method public removeExtParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 454
    return-void

    .line 456
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    return-void
.end method

.method public setAbTestInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "abTestInfo"    # Ljava/lang/String;

    .line 577
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->y:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->b:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->c:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setBehaviourPro(Ljava/lang/String;)V
    .locals 0
    .param p1, "behaviourPro"    # Ljava/lang/String;

    .line 503
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->q:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public setEntityContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "entityContentId"    # Ljava/lang/String;

    .line 553
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->v:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setExtParam(Ljava/util/Map;)V
    .locals 0
    .param p1, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    .line 450
    return-void
.end method

.method public setLegacyParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "legacyParam"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->j:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setLogPro(Ljava/lang/String;)V
    .locals 0
    .param p1, "logPro"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->r:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setLoggerLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .line 545
    iput p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->C:I

    .line 546
    return-void
.end method

.method public setPageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;

    .line 529
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->t:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setPageStayTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageStayTime"    # Ljava/lang/String;

    .line 561
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->w:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setParam1(Ljava/lang/String;)V
    .locals 0
    .param p1, "param1"    # Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->g:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 0
    .param p1, "param2"    # Ljava/lang/String;

    .line 379
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->h:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setParam3(Ljava/lang/String;)V
    .locals 0
    .param p1, "param3"    # Ljava/lang/String;

    .line 387
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->i:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setRefViewID(Ljava/lang/String;)V
    .locals 0
    .param p1, "refViewID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->e:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0
    .param p1, "refer"    # Ljava/lang/String;

    .line 569
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->x:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public setRenderBizType(Ljava/lang/String;)V
    .locals 0
    .param p1, "renderBizType"    # Ljava/lang/String;

    .line 496
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->B:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setSeedID(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedID"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->f:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setSpmStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "spmStatus"    # Ljava/lang/String;

    .line 537
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->u:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->n:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setStatusMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMsg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->o:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setTrackDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackDesc"    # Ljava/lang/String;

    .line 421
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->m:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .line 405
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->k:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setTrackToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackToken"    # Ljava/lang/String;

    .line 413
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->l:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->p:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public setUserCaseID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userCaseID"    # Ljava/lang/String;

    .line 328
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->a:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setViewID(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->d:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setVituralUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "vituralUserId"    # Ljava/lang/String;

    .line 429
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->A:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setxPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "xPath"    # Ljava/lang/String;

    .line 585
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->z:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    .line 615
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 617
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    return-void
.end method
