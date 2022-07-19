.class public Lcom/alipay/mobile/quinox/utils/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"


# static fields
.field private static final ALIAS_CHANNEL:Ljava/lang/String; = "channel"

.field private static final ALIAS_EXT:Ljava/lang/String; = "ext"

.field private static final ALIAS_ISOLATE:Ljava/lang/String; = "isolate"

.field private static final ALIAS_MAIN:Ljava/lang/String; = "main"

.field private static final ALIAS_PUSH:Ljava/lang/String; = "push"

.field private static final ALIAS_SSS:Ljava/lang/String; = "sss"

.field private static final ALIAS_TOOLS:Ljava/lang/String; = "tools"

.field private static final ALIAS_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "quinox.ProcessInfo"


# instance fields
.field private mIsChannelProcess:Z

.field private mIsExtProcess:Z

.field private mIsIsolatedProcess:Z

.field private mIsLiteProcess:Z

.field private mIsMainProcess:Z

.field private mIsNebulaProcess:Z

.field private mIsPushProcess:Z

.field private mIsSSSProcess:Z

.field private mIsToolsProcess:Z

.field private mProcessAlias:Ljava/lang/String;

.field private mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processName"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsMainProcess:Z

    .line 25
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsNebulaProcess:Z

    .line 26
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsPushProcess:Z

    .line 27
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsToolsProcess:Z

    .line 28
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsExtProcess:Z

    .line 30
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsSSSProcess:Z

    .line 32
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsLiteProcess:Z

    .line 34
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsIsolatedProcess:Z

    .line 36
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsChannelProcess:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "packageName":Ljava/lang/String;
    iput-object p2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsMainProcess:Z

    .line 44
    const-string v3, "main"

    if-eqz v2, :cond_0

    .line 45
    iput-object v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    .line 46
    return-void

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "push"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsPushProcess:Z

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "tools"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsToolsProcess:Z

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "ext"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsExtProcess:Z

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "sss"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsSSSProcess:Z

    .line 52
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v2

    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isLiteProcess(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsLiteProcess:Z

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v2

    iget-object v9, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isNebulaProcess(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsNebulaProcess:Z

    .line 54
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isCurrentProcessIsolated()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsIsolatedProcess:Z

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "channel"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsChannelProcess:Z

    .line 57
    iget-boolean v10, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsMainProcess:Z

    if-eqz v10, :cond_1

    .line 58
    iput-object v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 59
    :cond_1
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsPushProcess:Z

    if-eqz v3, :cond_2

    .line 60
    iput-object v5, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 61
    :cond_2
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsToolsProcess:Z

    if-eqz v3, :cond_3

    .line 62
    iput-object v6, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 63
    :cond_3
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsExtProcess:Z

    if-eqz v3, :cond_4

    .line 64
    iput-object v7, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 65
    :cond_4
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsSSSProcess:Z

    if-eqz v3, :cond_5

    .line 66
    iput-object v8, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 67
    :cond_5
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsIsolatedProcess:Z

    if-eqz v3, :cond_6

    .line 68
    const-string v0, "isolate"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 69
    :cond_6
    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsLiteProcess:Z

    if-eqz v3, :cond_7

    .line 70
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 71
    :cond_7
    if-eqz v2, :cond_8

    .line 72
    iput-object v9, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 74
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown process: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quinox.ProcessInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 76
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-void

    .line 78
    :cond_9
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static isCurrentProcessIsolated()Z
    .locals 5

    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/Process;

    const-string v3, "isIsolated"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 91
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 95
    :cond_0
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v2

    .line 96
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 98
    const v3, 0x186a0

    rem-int/2addr v2, v3

    .line 102
    const v3, 0x182b8

    if-lt v2, v3, :cond_1

    const v3, 0x1869f

    if-gt v2, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public getProcessAlias()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public isChannelProcess()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsChannelProcess:Z

    return v0
.end method

.method public isExtProcess()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsExtProcess:Z

    return v0
.end method

.method public isIsolatedProcess()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsIsolatedProcess:Z

    return v0
.end method

.method public isLiteProcess()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsLiteProcess:Z

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsMainProcess:Z

    return v0
.end method

.method public isNebulaProcess()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsNebulaProcess:Z

    return v0
.end method

.method public isPushProcess()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsPushProcess:Z

    return v0
.end method

.method public isSSSProcess()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsSSSProcess:Z

    return v0
.end method

.method public isToolsProcess()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->mIsToolsProcess:Z

    return v0
.end method
