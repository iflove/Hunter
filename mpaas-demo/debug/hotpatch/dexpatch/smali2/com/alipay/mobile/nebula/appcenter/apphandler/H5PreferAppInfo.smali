.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;
.super Ljava/lang/Object;
.source "H5PreferAppInfo.java"


# instance fields
.field private nbsn:Ljava/lang/String;

.field private nbsv:Ljava/lang/String;

.field private saveTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "nbsn"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsv:Ljava/lang/String;

    .line 20
    iput-wide p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->saveTime:J

    .line 21
    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsn:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getNbsn()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsn:Ljava/lang/String;

    return-object v0
.end method

.method public getNbsv()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsv:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveTime()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->saveTime:J

    return-wide v0
.end method

.method public setNbsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "nbsn"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsn:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setNbsv(Ljava/lang/String;)V
    .locals 0
    .param p1, "nbsv"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsv:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSaveTime(J)V
    .locals 0
    .param p1, "saveTime"    # J

    .line 37
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->saveTime:J

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5PreferAppInfo{nbsv=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", saveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->saveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nbsn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppInfo;->nbsn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
