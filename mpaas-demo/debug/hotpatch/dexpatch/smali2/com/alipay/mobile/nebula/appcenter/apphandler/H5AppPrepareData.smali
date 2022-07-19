.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
.super Ljava/lang/Object;
.source "H5AppPrepareData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final OFF_ASYNC:Ljava/lang/String; = "0"

.field private static final OFF_SYNCFORCE:Ljava/lang/String; = "1"

.field private static final OFF_SYNCTRY:Ljava/lang/String; = "2"

.field public static final PAGE_OPEN:I = 0x1

.field public static final PAGE_UNOPEN:I = 0x0

.field public static final PREPARE_DOWNLOAD_FAIL:Ljava/lang/String; = "10009"

.field public static final PREPARE_FAIL:Ljava/lang/String; = "10000"

.field public static final PREPARE_FALLBACK_FAIL:Ljava/lang/String; = "10011"

.field public static final PREPARE_IO_FAIL_OTHER:Ljava/lang/String; = "10008"

.field public static final PREPARE_IO_FAIL_SPACE_NOT_ENOUGH:Ljava/lang/String; = "10007"

.field public static final PREPARE_RPC_FAIL:Ljava/lang/String; = "10004"

.field public static final PREPARE_SUCCESS:Ljava/lang/String; = "1"

.field public static final PREPARE_TIMEOUT:Ljava/lang/String; = "10010"

.field public static final PREPARE_UNZIP_FAIL:Ljava/lang/String; = "10003"

.field private static final REQ_ASYNC:Ljava/lang/String; = "0"

.field private static final REQ_SYNCFORCE:Ljava/lang/String; = "2"

.field private static final REQ_SYNCTRY:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String; = "H5AppPrepareData"


# instance fields
.field private appId:Ljava/lang/String;

.field private beginTime:J

.field private downloadEndTime:J

.field private downloadTime:J

.field private endTime:J

.field private errorDetail:Ljava/lang/String;

.field private getDBVersionTime:J

.field private installEndTime:J

.field private installTime:J

.field private nbUrl:Ljava/lang/String;

.field private offlineMode:Ljava/lang/String;

.field private pageStatus:I

.field private requestBeginTime:J

.field private requestEndTime:J

.field private requestMode:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clear()V

    .line 65
    return-void
.end method

.method private getProcessTimeStr(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;)Ljava/lang/String;
    .locals 8
    .param p1, "logData"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 267
    .local v1, "timeStr":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "all_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getBeginTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestBeginTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestEndTime()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 270
    const-string/jumbo v0, "|req_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestBeginTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadTime()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadEndTime()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 274
    const-string/jumbo v0, "|down_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDownloadTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallTime()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallEndTime()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 278
    const-string/jumbo v0, "|zip_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getInstallTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 73
    const-string v0, "H5AppPrepareData"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    .line 76
    const-string v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->version:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->appId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    .line 77
    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    .line 78
    return-void
.end method

.method protected clone()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    .locals 1

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clone()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBeginTime()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    return-wide v0
.end method

.method public getDownloadEndTime()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadEndTime:J

    return-wide v0
.end method

.method public getDownloadTime()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    return-wide v0
.end method

.method public getErrorDetail()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getGetDBVersionTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    return-wide v0
.end method

.method public getInstallEndTime()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installEndTime:J

    return-wide v0
.end method

.method public getInstallTime()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    return-wide v0
.end method

.method public getNbUrl()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineMode()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPageStatus()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    return v0
.end method

.method public getRequestBeginTime()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    return-wide v0
.end method

.method public getRequestEndTime()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    return-wide v0
.end method

.method public getRequestMode()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->appId:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setBeginTime(J)V
    .locals 0
    .param p1, "beginTime"    # J

    .line 93
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    .line 94
    return-void
.end method

.method public setDownloadEndTime(J)V
    .locals 0
    .param p1, "downloadEndTime"    # J

    .line 133
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadEndTime:J

    .line 134
    return-void
.end method

.method public setDownloadTime(J)V
    .locals 0
    .param p1, "downloadTime"    # J

    .line 117
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    .line 118
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 149
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    .line 150
    return-void
.end method

.method public setErrorDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDetail"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setGetDBVersionTime(J)V
    .locals 0
    .param p1, "getDBVersionTime"    # J

    .line 85
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    .line 86
    return-void
.end method

.method public setInstallEndTime(J)V
    .locals 0
    .param p1, "installEndTime"    # J

    .line 141
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installEndTime:J

    .line 142
    return-void
.end method

.method public setInstallTime(J)V
    .locals 0
    .param p1, "installTime"    # J

    .line 125
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    .line 126
    return-void
.end method

.method public setNbUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "nbUrl"    # Ljava/lang/String;

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    return-void

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setOfflineMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "syncOffline"    # Ljava/lang/String;
    .param p2, "nbOffMode"    # Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "sync"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string/jumbo v0, "try"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    return-void

    .line 175
    :cond_0
    const-string v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    return-void

    .line 178
    :cond_1
    const-string v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setPageStatus(I)V
    .locals 0
    .param p1, "pageStatus"    # I

    .line 187
    iput p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    .line 188
    return-void
.end method

.method public setRequestBeginTime(J)V
    .locals 0
    .param p1, "requestBeginTime"    # J

    .line 101
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    .line 102
    return-void
.end method

.method public setRequestEndTime(J)V
    .locals 0
    .param p1, "requestEndTime"    # J

    .line 109
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    .line 110
    return-void
.end method

.method public setRequestMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestMode"    # Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "synctry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    return-void

    .line 159
    :cond_0
    const-string/jumbo v0, "syncforce"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    return-void

    .line 162
    :cond_1
    const-string v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->version:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "H5AppPrepareData{beginTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->beginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestBeginTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->downloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", installTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->installTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->requestMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offlineMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->offlineMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->pageStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->errorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nbUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->nbUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "step"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setEndTime(J)V

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->clone()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v0

    .line 247
    .local v0, "logData":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    const-string v1, "H5_APP_PREPARE"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "monitor"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v2, "getDBVersionTime"

    iget-wide v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getDBVersionTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "step"

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v2, "appId"

    .line 250
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "version"

    .line 251
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "proc"

    .line 252
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getProcessTimeStr(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "req"

    .line 253
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getRequestMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "off"

    .line 254
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getOfflineMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "page"

    .line 255
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getPageStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v2, "err"

    .line 256
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getErrorDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string v2, "errc"

    .line 257
    invoke-virtual {v1, v2, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "nbu"

    .line 258
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->getNbUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 259
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v0    # "logData":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    return-void

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5AppPrepareData"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
