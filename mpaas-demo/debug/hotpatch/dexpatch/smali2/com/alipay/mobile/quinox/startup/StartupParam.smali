.class public Lcom/alipay/mobile/quinox/startup/StartupParam;
.super Ljava/lang/Object;
.source "StartupParam.java"


# static fields
.field private static k:Lcom/alipay/mobile/quinox/startup/StartupParam;


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->g:Z

    .line 11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->h:Z

    .line 12
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->i:Z

    .line 13
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->j:Z

    .line 18
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->a:Z

    .line 19
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->b:Z

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->c:J

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/startup/StartupParam;
    .locals 2

    .line 24
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupParam;->k:Lcom/alipay/mobile/quinox/startup/StartupParam;

    if-eqz v0, :cond_0

    .line 25
    return-object v0

    .line 27
    :cond_0
    const-class v0, Lcom/alipay/mobile/quinox/startup/StartupParam;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/startup/StartupParam;->k:Lcom/alipay/mobile/quinox/startup/StartupParam;

    if-eqz v1, :cond_1

    .line 29
    monitor-exit v0

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupParam;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/startup/StartupParam;-><init>()V

    .line 32
    nop

    .line 33
    sput-object v1, Lcom/alipay/mobile/quinox/startup/StartupParam;->k:Lcom/alipay/mobile/quinox/startup/StartupParam;

    monitor-exit v0

    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLaunchSourceClass()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchSourceUri()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherActivityPreInitTime()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->d:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->c:J

    return-wide v0
.end method

.method public isCold()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->a:Z

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->b:Z

    return v0
.end method

.method public isLoginUserInfoExisted()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->j:Z

    return v0
.end method

.method public isPreloadSg()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->h:Z

    return v0
.end method

.method public isUseNewActivityLayout()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->g:Z

    return v0
.end method

.method public ismIsHomeFirstFrameFinish()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->i:Z

    return v0
.end method

.method public setIsCold(Z)V
    .locals 0
    .param p1, "isCold"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->a:Z

    .line 39
    return-void
.end method

.method public setIsFirst(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->b:Z

    .line 43
    return-void
.end method

.method public setIsPreloadSg(Z)V
    .locals 0
    .param p1, "mIsPreloadSg"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->h:Z

    .line 71
    return-void
.end method

.method public setIsUseNewActivityLayout(Z)V
    .locals 0
    .param p1, "mIsUseNewActivityLayout"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->g:Z

    .line 79
    return-void
.end method

.method public setLaunchSourceClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchSourceClass"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->e:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setLaunchSourceUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchSourceUri"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->f:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLauncherActivityPreInitTime(J)V
    .locals 0
    .param p1, "launcherActivityPreInitTime"    # J

    .line 83
    return-void
.end method

.method public setLoginUserInfoExisted(Z)V
    .locals 0
    .param p1, "loginUserInfoExisted"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->j:Z

    .line 116
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 46
    iput-wide p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->c:J

    .line 47
    return-void
.end method

.method public setmIsHomeFirstFrameFinish(Z)V
    .locals 0
    .param p1, "mIsHomeFirstFrameFinish"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupParam;->i:Z

    .line 108
    return-void
.end method
