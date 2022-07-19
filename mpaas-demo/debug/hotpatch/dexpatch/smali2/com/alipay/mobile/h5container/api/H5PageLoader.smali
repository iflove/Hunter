.class public Lcom/alipay/mobile/h5container/api/H5PageLoader;
.super Ljava/lang/Object;
.source "H5PageLoader.java"


# static fields
.field public static h5SessionToken:Ljava/lang/String;

.field public static h5Token:Ljava/lang/String;

.field public static isPageClose:Z

.field public static mainUrl:Ljava/lang/String;

.field public static sServiceStart:J

.field public static start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static release()V
    .locals 2

    .line 21
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5PageLoader;->sServiceStart:J

    .line 22
    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5PageLoader;->start:J

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5PageLoader;->mainUrl:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageLoader;->isPageClose:Z

    .line 25
    return-void
.end method
