.class public Lcom/alipay/mobile/common/cache/disk/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field protected mGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "usedTime"    # I
    .param p5, "size"    # J
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "createTime"    # J
    .param p10, "period"    # J
    .param p12, "contentType"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "-"

    if-nez p1, :cond_0

    .line 55
    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->a:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->a:Ljava/lang/String;

    .line 59
    :goto_0
    if-nez p2, :cond_1

    .line 60
    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->mGroup:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_1
    iput-object p2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->mGroup:Ljava/lang/String;

    .line 64
    :goto_1
    const-string v0, ""

    if-nez p3, :cond_2

    .line 65
    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->b:Ljava/lang/String;

    goto :goto_2

    .line 67
    :cond_2
    iput-object p3, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->b:Ljava/lang/String;

    .line 69
    :goto_2
    iput p4, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->c:I

    .line 70
    iput-wide p5, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->d:J

    .line 72
    if-nez p7, :cond_3

    .line 73
    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->e:Ljava/lang/String;

    goto :goto_3

    .line 75
    :cond_3
    iput-object p7, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->e:Ljava/lang/String;

    .line 78
    :goto_3
    iput-wide p8, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->f:J

    .line 79
    iput-wide p10, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->g:J

    .line 81
    if-nez p12, :cond_4

    .line 82
    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->h:Ljava/lang/String;

    return-void

    .line 84
    :cond_4
    iput-object p12, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->h:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->a:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 173
    return v1

    .line 176
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Entity"

    const-string v3, "authenticate: owner is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return v0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    return v1

    .line 182
    :cond_2
    return v0
.end method

.method public expire()Z
    .locals 6

    .line 162
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->f:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->g:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->f:J

    return-wide v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->g:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->d:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTime()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->c:I

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->e:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->h:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->a:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 189
    const-string/jumbo v2, "url: %s usedTime: %d size: %d path: %s createTime:%s period: %d content-type: %s owner: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    return-object v1
.end method

.method public use()V
    .locals 1

    .line 120
    iget v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/cache/disk/Entity;->c:I

    .line 121
    return-void
.end method
