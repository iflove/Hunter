.class public abstract Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;
.super Landroid/app/IntentService;
.source "OreoServiceUnlimitedIntentService.java"

# interfaces
.implements Lcom/alipay/tianyan/mobilesdk/coco/IOreoServiceUnlimited;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OreoServiceUnlimitedIntentService"


# instance fields
.field private volatile a:Landroid/os/Looper;

.field private volatile b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    .line 39
    iput-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    .line 49
    iput-object p1, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->c:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->isAtLeastO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    .line 51
    return-void
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCompat, intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOreoUnlimited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOnCreateCalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OreoServiceUnlimitedIntentService"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    if-nez v0, :cond_1

    .line 136
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "onStartCompat, must call onCreate first!"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    invoke-virtual {v0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 145
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    .end local v1    # "msg":Landroid/os/Message;
    return-void

    .line 148
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "onStartCompat, use unlimited but service handler is empty!"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 55
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 56
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/app/IntentService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    return-object v1

    .line 62
    :cond_1
    new-instance v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited$WrappedBinder;

    invoke-direct {v0, v1, p0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited$WrappedBinder;-><init>(Landroid/os/Binder;Landroid/app/Service;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 69
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IntentService["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 73
    .local v1, "thread":Landroid/os/HandlerThread;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->a:Landroid/os/Looper;

    .line 75
    new-instance v0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    iget-object v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->a:Landroid/os/Looper;

    invoke-direct {v0, p0, v2}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;-><init>(Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    .line 77
    .end local v1    # "thread":Landroid/os/HandlerThread;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 105
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    const-string v1, "OreoServiceUnlimitedIntentService"

    if-nez v0, :cond_1

    .line 106
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "onDestroy, use unlimited but service handler is empty!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->a:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void

    .line 116
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "onDestroy, use unlimited but service looper is empty!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart, intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOreoUnlimited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOnCreateCalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OreoServiceUnlimitedIntentService"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    if-nez v0, :cond_1

    .line 85
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "onStart, must call onCreate first!"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    invoke-virtual {v0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    .local v1, "msg":Landroid/os/Message;
    move-object v1, v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 94
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->b:Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;

    invoke-virtual {v0, v1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    .end local v1    # "msg":Landroid/os/Message;
    return-void

    .line 97
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "onStart, use unlimited but service handler is empty!"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand, intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOreoUnlimited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOnCreateCalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OreoServiceUnlimitedIntentService"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->d:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 158
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->e:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 161
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "onStartCommand, must call onCreate first!"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return v1

    .line 166
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->a(Landroid/content/Intent;I)V

    .line 167
    iget-boolean v0, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    return v1
.end method

.method public onStartServiceFromBind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 123
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->a(Landroid/content/Intent;I)V

    .line 124
    return-void
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 128
    invoke-super {p0, p1}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 129
    iput-boolean p1, p0, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimitedIntentService;->f:Z

    .line 130
    return-void
.end method
