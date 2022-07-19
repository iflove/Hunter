.class public Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
.super Ljava/lang/Object;
.source "LogStrategyInfo.java"


# static fields
.field public static SIMPLING_STATE_HIT:I

.field public static SIMPLING_STATE_INIT:I

.field public static SIMPLING_STATE_UNHIT:I


# instance fields
.field delayUpload:Z

.field floodRate:I

.field hasSendCondition:Z

.field isDelayUploadCategory:Z

.field isEncrypt:Z

.field isWrite:Z

.field level:I

.field levelHits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field levelRate1:I

.field levelRate2:I

.field levelRate3:I

.field periodInterval:I

.field realtime:Z

.field sendCondition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field threshold:I

.field uploadEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field uploadInterval:I

.field uploadRate:I

.field usemetds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_INIT:I

    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_HIT:I

    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->SIMPLING_STATE_UNHIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->usemetds:Z

    .line 18
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->level:I

    .line 20
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->delayUpload:Z

    .line 21
    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadRate:I

    .line 22
    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadInterval:I

    .line 25
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isDelayUploadCategory:Z

    .line 26
    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->floodRate:I

    .line 28
    const/16 v0, 0xe10

    iput v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->periodInterval:I

    .line 30
    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate1:I

    .line 31
    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate2:I

    .line 32
    iput v1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate3:I

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelHits:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFloodRate()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->floodRate:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->level:I

    return v0
.end method

.method public getLevelRate1()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate1:I

    return v0
.end method

.method public getLevelRate2()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate2:I

    return v0
.end method

.method public getLevelRate3()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate3:I

    return v0
.end method

.method public getPeriodInterval()J
    .locals 2

    .line 153
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->periodInterval:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSendCondition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->threshold:I

    return v0
.end method

.method public getUploadEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadEvents:Ljava/util/List;

    return-object v0
.end method

.method public getUploadInterval()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadInterval:I

    return v0
.end method

.method public getUploadRate()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadRate:I

    return v0
.end method

.method public isDelayUpload()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->delayUpload:Z

    return v0
.end method

.method public isEncrypt()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isEncrypt:Z

    return v0
.end method

.method public isHasSendCondition()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->hasSendCondition:Z

    return v0
.end method

.method public isRealtime()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->realtime:Z

    return v0
.end method

.method public isUsemetds()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->usemetds:Z

    return v0
.end method

.method public isWrite()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isWrite:Z

    return v0
.end method

.method public setDelayUpload(Z)V
    .locals 0
    .param p1, "delayUpload"    # Z

    .line 89
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->delayUpload:Z

    .line 90
    return-void
.end method

.method public setEncrypt(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isEncrypt:Z

    .line 50
    return-void
.end method

.method public setHasSendCondition(Z)V
    .locals 0
    .param p1, "hasSendCondition"    # Z

    .line 137
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->hasSendCondition:Z

    .line 138
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 61
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->level:I

    .line 62
    return-void
.end method

.method public setLevelRate1(I)V
    .locals 0
    .param p1, "levelRate1"    # I

    .line 113
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate1:I

    .line 114
    return-void
.end method

.method public setLevelRate2(I)V
    .locals 0
    .param p1, "levelRate2"    # I

    .line 121
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate2:I

    .line 122
    return-void
.end method

.method public setLevelRate3(I)V
    .locals 0
    .param p1, "levelRate3"    # I

    .line 129
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->levelRate3:I

    .line 130
    return-void
.end method

.method public setRealtime(Z)V
    .locals 0
    .param p1, "realtime"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->realtime:Z

    .line 82
    return-void
.end method

.method public setSendCondition(Ljava/util/List;)V
    .locals 0
    .param p1, "sendCondition"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->sendCondition:Ljava/util/List;

    .line 68
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .line 55
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->threshold:I

    .line 56
    return-void
.end method

.method public setUploadEvents(Ljava/util/List;)V
    .locals 0
    .param p1, "uploadEvents"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadEvents:Ljava/util/List;

    .line 74
    return-void
.end method

.method public setUploadInterval(I)V
    .locals 0
    .param p1, "uploadInterval"    # I

    .line 105
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadInterval:I

    .line 106
    return-void
.end method

.method public setUploadRate(I)V
    .locals 0
    .param p1, "uploadRate"    # I

    .line 97
    iput p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->uploadRate:I

    .line 98
    return-void
.end method

.method public setUsemetds(Z)V
    .locals 0
    .param p1, "usemetds"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->usemetds:Z

    .line 146
    return-void
.end method

.method public setWrite(Z)V
    .locals 0
    .param p1, "isWrite"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isWrite:Z

    .line 44
    return-void
.end method
