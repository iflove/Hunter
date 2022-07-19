.class public Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;
.super Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;
.source "H5NetworkSuResponse.java"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private isChunked:Z

.field private isGzip:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->status:I

    return v0
.end method

.method public isChunked()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->isChunked:Z

    return v0
.end method

.method public isGzip()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->isGzip:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0
    .param p1, "chunked"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->isChunked:Z

    .line 46
    return-void
.end method

.method public setGzip(Z)V
    .locals 0
    .param p1, "gzip"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->isGzip:Z

    .line 38
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .param p1, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->headers:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 21
    iput p1, p0, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuResponse;->status:I

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5NetworkSuResponse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
