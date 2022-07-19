.class public Lcom/alipay/mobile/h5container/api/H5PageImage;
.super Ljava/lang/Object;
.source "H5PageImage.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public appId:Ljava/lang/String;

.field public costTime:J

.field public etag:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public statusCode:I

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "H5PageImage"

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5PageImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->url:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->size:Ljava/lang/String;

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->statusCode:I

    .line 22
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->costTime:J

    .line 23
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->etag:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "costTime"    # J
    .param p6, "appId"    # Ljava/lang/String;
    .param p7, "version"    # Ljava/lang/String;
    .param p8, "etag"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->url:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->size:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->statusCode:I

    .line 30
    iput-wide p4, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->costTime:J

    .line 31
    iput-object p6, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->appId:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->version:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->etag:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5PageImage{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", costTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/h5container/api/H5PageImage;->costTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
