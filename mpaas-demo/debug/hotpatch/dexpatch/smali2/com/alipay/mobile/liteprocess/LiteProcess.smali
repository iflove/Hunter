.class public Lcom/alipay/mobile/liteprocess/LiteProcess;
.super Ljava/util/Observable;
.source "LiteProcess.java"


# static fields
.field public static final READY:I = 0x1

.field public static final RUNNING:I = 0x2

.field public static final TERMINATED:I


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Z

.field g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/content/ServiceConnection;

.field i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

.field public isNebulaX:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Z

.field n:Ljava/lang/String;

.field o:Z

.field p:Ljava/lang/String;

.field q:Z

.field r:Z

.field s:J

.field t:J

.field u:I

.field v:I

.field w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->g:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->l:Ljava/util/Set;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->m:Z

    .line 40
    const-string v0, "default"

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->w:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->a:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    .line 80
    iput-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    .line 81
    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->x:Landroid/os/Messenger;

    .line 82
    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->h:Landroid/content/ServiceConnection;

    .line 83
    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    .line 85
    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 87
    const-string v0, "default"

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->n:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->o:Z

    .line 89
    iput-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->isNebulaX:Z

    .line 90
    iput-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->q:Z

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->notifyObservers()V

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->s:J

    .line 93
    iput-wide v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->t:J

    .line 94
    iput v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->u:I

    .line 95
    iput v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->v:I

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->w:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    iput-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->r:Z

    .line 98
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getClientService()Lcom/alipay/mobile/liteprocess/ipc/IClientService;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->i:Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    return-object v0
.end method

.method public getLpid()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    return v0
.end method

.method public getReplyTo()Landroid/os/Messenger;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->x:Landroid/os/Messenger;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    return v0
.end method

.method public isShow()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    return v0
.end method

.method public onAppStartEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 146
    iget v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->o:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->w:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setRecovering()V
    .locals 1

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->q:Z

    .line 111
    return-void
.end method

.method public setReplyTo(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "replyTo"    # Landroid/os/Messenger;

    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->x:Landroid/os/Messenger;

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/LiteProcess;->notifyObservers()V

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LiteProcess{clientId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lpid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromAppid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toAppids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->l:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canResetFromActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNebulaX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->isNebulaX:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRecovering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcess;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
