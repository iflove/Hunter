.class public Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;
.super Ljava/lang/Object;
.source "CrashInfoDO.java"


# instance fields
.field public mCode:I

.field public mCrashAppID:Ljava/lang/String;

.field public mCrashProcessName:Ljava/lang/String;

.field public mCrashProductVersion:Ljava/lang/String;

.field public mCrashThreadName:Ljava/lang/String;

.field public mCrashTimes:I

.field public mCrashType:I

.field public mLastCrashTime:J

.field public mNebulaXCrash:Z

.field public mSdkVersion:I

.field public mSignal:I

.field public mStartupCrash:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashType:I

    .line 14
    iput v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mSdkVersion:I

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashProcessName:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashThreadName:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashProductVersion:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashAppID:Ljava/lang/String;

    .line 19
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mStartupCrash:Z

    .line 20
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mNebulaXCrash:Z

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mSignal:I

    .line 22
    iput v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCode:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashTimes:I

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mLastCrashTime:J

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCode:I

    return v0
.end method

.method public getCrashAppID()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashAppID:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashProcessName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashProductVersion()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashThreadName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashTimes()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashTimes:I

    return v0
.end method

.method public getCrashType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashType:I

    return v0
.end method

.method public getLastCrashTime()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mLastCrashTime:J

    return-wide v0
.end method

.method public getSdkVersion()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mSdkVersion:I

    return v0
.end method

.method public getSignal()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mSignal:I

    return v0
.end method

.method public isNebulaXCrash()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mNebulaXCrash:Z

    return v0
.end method

.method public isStartupCrash()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mStartupCrash:Z

    return v0
.end method

.method public merge(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 146
    :try_start_0
    const-string v0, "CrashType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashType(I)V

    .line 147
    const-string v0, "CrashProcessName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashProcessName(Ljava/lang/String;)V

    .line 148
    const-string v0, "CrashThreadName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashThreadName(Ljava/lang/String;)V

    .line 149
    const-string v0, "CrashProductVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashProductVersion(Ljava/lang/String;)V

    .line 150
    const-string v0, "CrashAppId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashAppID(Ljava/lang/String;)V

    .line 151
    const-string v0, "SdkVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setSdkVersion(I)V

    .line 152
    const-string v0, "StartupCrash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setStartupCrash(Z)V

    .line 153
    const-string v0, "NebulaXCrash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setNebulaXCrash(Z)V

    .line 154
    const-string v0, "Signal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setSignal(I)V

    .line 155
    const-string v0, "Code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCode(I)V

    .line 156
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashTimes()I

    move-result v0

    const-string v1, "CrashTimes"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashTimes(I)V

    .line 157
    const-string v0, "LastCrashTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setLastCrashTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CrashInfoDO"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 127
    :try_start_0
    const-string v0, "CrashType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashType(I)V

    .line 128
    const-string v0, "CrashProcessName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashProcessName(Ljava/lang/String;)V

    .line 129
    const-string v0, "CrashThreadName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashThreadName(Ljava/lang/String;)V

    .line 130
    const-string v0, "CrashProductVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashProductVersion(Ljava/lang/String;)V

    .line 131
    const-string v0, "CrashAppId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashAppID(Ljava/lang/String;)V

    .line 132
    const-string v0, "SdkVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setSdkVersion(I)V

    .line 133
    const-string v0, "StartupCrash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setStartupCrash(Z)V

    .line 134
    const-string v0, "NebulaXCrash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setNebulaXCrash(Z)V

    .line 135
    const-string v0, "Signal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setSignal(I)V

    .line 136
    const-string v0, "Code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCode(I)V

    .line 137
    const-string v0, "CrashTimes"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setCrashTimes(I)V

    .line 138
    const-string v0, "LastCrashTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->setLastCrashTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "CrashInfoDO"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "mCode"    # I

    .line 103
    iput p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCode:I

    .line 104
    return-void
.end method

.method public setCrashAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCrashAppID"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashAppID:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCrashProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCrashProcessName"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashProcessName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCrashProductVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCrashProductVersion"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashProductVersion:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCrashThreadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCrashThreadName"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashThreadName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCrashTimes(I)V
    .locals 0
    .param p1, "mCrashTimes"    # I

    .line 111
    if-gez p1, :cond_0

    .line 112
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 114
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashTimes:I

    .line 115
    return-void
.end method

.method public setCrashType(I)V
    .locals 0
    .param p1, "crashType"    # I

    .line 31
    iput p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mCrashType:I

    .line 32
    return-void
.end method

.method public setLastCrashTime(J)V
    .locals 0
    .param p1, "mLastCrashTime"    # J

    .line 122
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mLastCrashTime:J

    .line 123
    return-void
.end method

.method public setNebulaXCrash(Z)V
    .locals 0
    .param p1, "nebulaXCrash"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mNebulaXCrash:Z

    .line 88
    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0
    .param p1, "mSdkVersion"    # I

    .line 39
    iput p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mSdkVersion:I

    .line 40
    return-void
.end method

.method public setSignal(I)V
    .locals 0
    .param p1, "mSignal"    # I

    .line 95
    iput p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mSignal:I

    .line 96
    return-void
.end method

.method public setStartupCrash(Z)V
    .locals 0
    .param p1, "mStartupCrash"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->mStartupCrash:Z

    .line 80
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "CrashType"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v1, "CrashProcessName"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "CrashThreadName"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v1, "CrashProductVersion"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v1, "CrashAppId"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "SdkVersion"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getSdkVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v1, "StartupCrash"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->isStartupCrash()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "NebulaXCrash"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->isNebulaXCrash()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v1, "Signal"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getSignal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v1, "Code"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v1, "CrashTimes"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashTimes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v1, "LastCrashTime"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getLastCrashTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "CrashInfoDO"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
