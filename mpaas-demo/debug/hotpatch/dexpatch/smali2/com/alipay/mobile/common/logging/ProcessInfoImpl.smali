.class public Lcom/alipay/mobile/common/logging/ProcessInfoImpl;
.super Ljava/lang/Object;
.source "ProcessInfoImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/ProcessInfo;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/os/Bundle;

.field private w:Landroid/net/Uri;

.field private x:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->e:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->f:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->g:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->h:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->i:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->j:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->k:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->l:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->m:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->n:Z

    .line 57
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->o:Z

    .line 58
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->p:Z

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->q:Z

    .line 60
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->r:Z

    .line 61
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->s:Z

    .line 62
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->t:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    .line 65
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 66
    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    .line 67
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->x:J

    .line 70
    if-nez p1, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->e:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":push"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->f:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":tools"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->g:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":ext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->h:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->n:Z

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->o:Z

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->p:Z

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->q:Z

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":lite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->r:Z

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":sandboxed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->s:Z

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isCurrentProcessIsolated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->t:Z

    .line 90
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->r:Z

    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loggingi mIsLiteProcess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mytest"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->n:Z

    if-eqz v1, :cond_2

    .line 95
    const-string/jumbo v0, "main"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->o:Z

    if-eqz v1, :cond_3

    .line 97
    const-string/jumbo v0, "push"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_3
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->p:Z

    if-eqz v1, :cond_4

    .line 99
    const-string/jumbo v0, "tools"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_4
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->q:Z

    if-eqz v1, :cond_5

    .line 101
    const-string v0, "ext"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    .line 112
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->i:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-main"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->j:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->k:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-tools"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->l:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-ext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->m:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->x:J

    .line 119
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 470
    .local v1, "intentField":Ljava/lang/reflect/Field;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 471
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 10

    const-string v0, "ProcessInfo"

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "processName":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "android.app.ActivityThread"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v6, v3

    .line 125
    .local v6, "clazz":Ljava/lang/Class;
    move-object v6, v5

    const-string v7, "currentActivityThread"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v3

    .line 126
    .local v7, "method":Ljava/lang/reflect/Method;
    move-object v7, v5

    :try_start_1
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 128
    .local v5, "object":Ljava/lang/Object;
    const-string v8, "getProcessName"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 129
    move-object v7, v8

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v8

    .line 134
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v5

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v7, v3

    :goto_0
    move-object v6, v5

    .line 133
    .local v6, "t":Ljava/lang/Throwable;
    const-string v5, "getCurrentProcessName 1"

    invoke-static {v0, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    return-object v1

    .line 139
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v8, "android.ddm.DdmHandleAppName"

    invoke-virtual {v5, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 140
    .local v6, "clazz":Ljava/lang/Class;
    const-string v8, "getAppName"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 141
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    move-object v7, v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 142
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v2

    .line 146
    .end local v6    # "clazz":Ljava/lang/Class;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 144
    :catchall_2
    move-exception v2

    .line 145
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "getCurrentProcessName 2"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    return-object v1

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessId()I

    move-result v0

    .line 151
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessNameById(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    return-object v2
.end method

.method private a(Landroid/os/Looper;)Ljava/util/Map;
    .locals 29
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "HuaweiPreload"

    const-string v2, "ProcessInfo"

    .line 212
    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/os/Looper;

    const-string/jumbo v5, "mQueue"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v5, v3

    .line 213
    .local v5, "mQueueField":Ljava/lang/reflect/Field;
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 214
    move-object/from16 v4, p1

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 215
    .local v7, "queue":Ljava/lang/Object;
    const-class v8, Landroid/os/MessageQueue;

    const-string/jumbo v9, "mMessages"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move-object v9, v3

    .line 216
    .local v9, "mMessagesField":Ljava/lang/reflect/Field;
    move-object v9, v8

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 217
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 219
    .local v8, "mMessage":Ljava/lang/Object;
    const-class v10, Landroid/os/Message;

    const-string/jumbo v11, "obj"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    move-object v11, v3

    .line 220
    .local v11, "objField":Ljava/lang/reflect/Field;
    move-object v11, v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 221
    invoke-virtual {v11, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 223
    .local v10, "obj":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 224
    .local v12, "checkCount":I
    const/4 v13, 0x0

    if-nez v10, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 225
    .local v13, "isFirstObjNull":Z
    :goto_0
    move v13, v14

    if-eqz v14, :cond_1

    move-object v14, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    :goto_1
    move-object v15, v3

    .line 227
    .local v14, "startRecordName":Ljava/lang/String;
    :goto_2
    invoke-static {v14, v10}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-string/jumbo v3, "next"

    if-nez v16, :cond_3

    .line 228
    add-int/lit8 v12, v12, 0x1

    .line 229
    :try_start_1
    const-class v6, Landroid/os/Message;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 230
    .local v15, "nextField":Ljava/lang/reflect/Field;
    move-object v15, v6

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 231
    invoke-virtual {v15, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 232
    move-object v8, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    if-ge v12, v4, :cond_3

    .line 235
    invoke-virtual {v11, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 236
    move-object v10, v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :goto_3
    move-object v14, v3

    .line 237
    .end local v15    # "nextField":Ljava/lang/reflect/Field;
    move-object/from16 v4, p1

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_2

    .line 238
    :cond_3
    const-string/jumbo v4, "toString"

    const-string v6, "RecordType"

    if-nez v10, :cond_5

    .line 239
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isHuaweiPreloadDevice()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 241
    .local v15, "startReasonMap":Ljava/util/Map;
    move-object v15, v3

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {v15, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-object v15

    .line 245
    .end local v15    # "startReasonMap":Ljava/util/Map;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got empty message obj, retry count:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isFirstObjNull:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "looper":Landroid/os/Looper;
    throw v0

    .line 248
    .restart local p1    # "looper":Landroid/os/Looper;
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 249
    .restart local v15    # "startReasonMap":Ljava/util/Map;
    move-object v15, v0

    move-object/from16 v18, v5

    .end local v5    # "mQueueField":Ljava/lang/reflect/Field;
    .local v18, "mQueueField":Ljava/lang/reflect/Field;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 252
    :try_start_3
    const-string v0, "ActivityClientRecord"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const-string/jumbo v4, "true"

    const-string v5, "ByActivity"

    const-string v6, "TARGETAPPID"

    move-object/from16 v19, v7

    .end local v7    # "queue":Ljava/lang/Object;
    .local v19, "queue":Ljava/lang/Object;
    const-string v7, "intent"

    move-object/from16 v20, v9

    .end local v9    # "mMessagesField":Ljava/lang/reflect/Field;
    .local v20, "mMessagesField":Ljava/lang/reflect/Field;
    const-string v9, "ActionName"

    move/from16 v21, v12

    .end local v12    # "checkCount":I
    .local v21, "checkCount":I
    const-string v12, "ComponentName"

    if-eqz v0, :cond_a

    .line 253
    :try_start_4
    invoke-interface {v15, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {v10, v7}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 255
    .local v4, "intent":Landroid/content/Intent;
    move-object v3, v0

    .end local v4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_9

    .line 256
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 257
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    .line 258
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 259
    .local v5, "component":Ljava/lang/String;
    move-object v4, v0

    .end local v5    # "component":Ljava/lang/String;
    .local v4, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 260
    invoke-interface {v15, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_6
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object v7, v5

    .line 263
    .local v7, "action":Ljava/lang/String;
    move-object v5, v0

    .end local v7    # "action":Ljava/lang/String;
    .local v5, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 264
    invoke-interface {v15, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_7
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    move-object v9, v7

    .line 267
    .local v9, "appId":Ljava/lang/String;
    move-object v7, v0

    .end local v9    # "appId":Ljava/lang/String;
    .local v7, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 268
    invoke-interface {v15, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v7    # "appId":Ljava/lang/String;
    :cond_8
    move/from16 v22, v13

    goto/16 :goto_b

    .line 271
    :cond_9
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "activityInfo"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 272
    .local v5, "activityInfoField":Ljava/lang/reflect/Field;
    move-object v4, v0

    const/4 v5, 0x1

    .end local v5    # "activityInfoField":Ljava/lang/reflect/Field;
    .local v4, "activityInfoField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 273
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 274
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v15, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    move/from16 v22, v13

    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "activityInfoField":Ljava/lang/reflect/Field;
    goto/16 :goto_b

    .line 424
    :catchall_0
    move-exception v0

    move/from16 v22, v13

    goto/16 :goto_d

    .line 276
    :cond_a
    :try_start_5
    const-string v0, "ReceiverData"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v22, v13

    .end local v13    # "isFirstObjNull":Z
    .local v22, "isFirstObjNull":Z
    const-string v13, "info"

    if-eqz v0, :cond_e

    .line 277
    :try_start_6
    invoke-static {v10, v7}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 278
    .local v4, "intent":Landroid/content/Intent;
    move-object v3, v0

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 279
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 280
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    .line 281
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 282
    .local v5, "component":Ljava/lang/String;
    move-object v4, v0

    .end local v5    # "component":Ljava/lang/String;
    .local v4, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 283
    invoke-interface {v15, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_b
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 286
    .local v6, "action":Ljava/lang/String;
    move-object v5, v0

    .end local v6    # "action":Ljava/lang/String;
    .local v5, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 287
    invoke-interface {v15, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    :cond_c
    goto/16 :goto_b

    .line 290
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 291
    .local v5, "infoField":Ljava/lang/reflect/Field;
    move-object v4, v0

    const/4 v5, 0x1

    .end local v5    # "infoField":Ljava/lang/reflect/Field;
    .local v4, "infoField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 292
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 293
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v15, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    nop

    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "infoField":Ljava/lang/reflect/Field;
    goto/16 :goto_b

    :cond_e
    const-string v0, "CreateServiceData"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v23, v6

    const-string v6, "args"

    move-object/from16 v24, v4

    const-string v4, "ServiceArgsData"

    move-object/from16 v25, v5

    const-string v5, "BindServiceData"

    if-eqz v0, :cond_16

    .line 296
    :try_start_7
    invoke-static {v10, v7}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v17, 0x0

    move-object/from16 v23, v17

    .line 297
    .local v23, "intent":Landroid/content/Intent;
    move-object/from16 v23, v0

    if-eqz v0, :cond_11

    .line 298
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 299
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    .line 300
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    move-object/from16 v24, v13

    .line 301
    .local v24, "component":Ljava/lang/String;
    move-object v13, v0

    .end local v24    # "component":Ljava/lang/String;
    .local v13, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 302
    invoke-interface {v15, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_f
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    move-object/from16 v24, v12

    .line 305
    .local v24, "action":Ljava/lang/String;
    move-object v12, v0

    .end local v24    # "action":Ljava/lang/String;
    .local v12, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 306
    invoke-interface {v15, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v12    # "action":Ljava/lang/String;
    .end local v13    # "component":Ljava/lang/String;
    :cond_10
    goto :goto_4

    .line 309
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v9, 0x0

    move-object v13, v9

    .line 310
    .local v13, "infoField":Ljava/lang/reflect/Field;
    move-object v13, v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 311
    invoke-virtual {v13, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 312
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v15, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v0

    .line 314
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "infoField":Ljava/lang/reflect/Field;
    :goto_4
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v0, :cond_15

    .line 316
    :try_start_8
    const-class v0, Landroid/os/Message;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v3, v13

    .line 317
    .local v3, "nextField":Ljava/lang/reflect/Field;
    move-object v3, v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 318
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v12

    .line 319
    .local v9, "nextMsg":Ljava/lang/Object;
    move-object v9, v0

    if-eqz v0, :cond_14

    .line 320
    invoke-virtual {v11, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v12, 0x0

    move-object v13, v12

    .line 321
    .local v13, "nextObj":Ljava/lang/Object;
    move-object v12, v0

    .end local v13    # "nextObj":Ljava/lang/Object;
    .local v12, "nextObj":Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 322
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "nextName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 324
    .local v13, "nextIntent":Landroid/content/Intent;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 325
    invoke-static {v12, v7}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v13, v4

    goto :goto_5

    .line 326
    :cond_12
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 327
    invoke-static {v12, v6}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v13, v4

    .line 329
    :cond_13
    :goto_5
    if-eqz v13, :cond_14

    .line 330
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 331
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 337
    .end local v0    # "nextName":Ljava/lang/String;
    .end local v3    # "nextField":Ljava/lang/reflect/Field;
    .end local v9    # "nextMsg":Ljava/lang/Object;
    .end local v12    # "nextObj":Ljava/lang/Object;
    .end local v13    # "nextIntent":Landroid/content/Intent;
    :cond_14
    goto/16 :goto_b

    .line 335
    :catchall_1
    move-exception v0

    .line 336
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_15
    goto/16 :goto_b

    :cond_16
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 340
    invoke-static {v10, v7}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 341
    .local v4, "intent":Landroid/content/Intent;
    move-object v3, v0

    .end local v4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_18

    .line 342
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 343
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    .line 344
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 345
    .local v5, "component":Ljava/lang/String;
    move-object v4, v0

    .end local v5    # "component":Ljava/lang/String;
    .local v4, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 346
    invoke-interface {v15, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_17
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 349
    .restart local v6    # "action":Ljava/lang/String;
    move-object v5, v0

    .end local v6    # "action":Ljava/lang/String;
    .local v5, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 350
    invoke-interface {v15, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    :cond_18
    goto/16 :goto_b

    :cond_19
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 354
    invoke-static {v10, v6}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 355
    .local v4, "intent":Landroid/content/Intent;
    move-object v3, v0

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1b

    .line 356
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 357
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    .line 358
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 359
    .local v5, "component":Ljava/lang/String;
    move-object v4, v0

    .end local v5    # "component":Ljava/lang/String;
    .local v4, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 360
    invoke-interface {v15, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1a
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 363
    .restart local v6    # "action":Ljava/lang/String;
    move-object v5, v0

    .end local v6    # "action":Ljava/lang/String;
    .local v5, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 364
    invoke-interface {v15, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    :cond_1b
    goto/16 :goto_b

    :cond_1c
    const-string v0, "CreateBackupAgentData"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 368
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "appInfo"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 369
    .local v4, "appInfoField":Ljava/lang/reflect/Field;
    move-object v3, v0

    const/4 v4, 0x1

    .end local v4    # "appInfoField":Ljava/lang/reflect/Field;
    .local v3, "appInfoField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 370
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 371
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "backupMode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 372
    .local v6, "backupModeField":Ljava/lang/reflect/Field;
    move-object v5, v4

    const/4 v6, 0x1

    .end local v6    # "backupModeField":Ljava/lang/reflect/Field;
    .local v5, "backupModeField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 373
    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 374
    .local v4, "backupMode":I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-interface {v15, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    nop

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appInfoField":Ljava/lang/reflect/Field;
    .end local v4    # "backupMode":I
    .end local v5    # "backupModeField":Ljava/lang/reflect/Field;
    goto/16 :goto_b

    :cond_1d
    const-string v0, "ClientTransaction"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_25

    .line 379
    :try_start_a
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mActivityCallbacks"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 380
    .local v4, "mActivityCallbacksField":Ljava/lang/reflect/Field;
    move-object v3, v0

    const/4 v4, 0x1

    .end local v4    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .local v3, "mActivityCallbacksField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 381
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    move-object v5, v4

    .line 382
    .local v5, "mActivityCallbacks":Ljava/util/List;
    move-object v4, v0

    .end local v5    # "mActivityCallbacks":Ljava/util/List;
    .local v4, "mActivityCallbacks":Ljava/util/List;
    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 383
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .line 384
    .local v5, "itemObject":Ljava/lang/Object;
    move-object/from16 v5, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v3

    .end local v3    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .local v27, "mActivityCallbacksField":Ljava/lang/reflect/Field;
    const-string v3, "LaunchActivityItem"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 385
    move-object/from16 v0, v24

    move-object/from16 v3, v25

    invoke-interface {v15, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-object/from16 v24, v0

    const-string/jumbo v0, "mIntent"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 387
    .local v6, "intent":Landroid/content/Intent;
    move-object v6, v0

    if-eqz v0, :cond_21

    .line 388
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    .line 389
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    .line 390
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v7, "component":Ljava/lang/String;
    move-object v7, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 392
    invoke-interface {v15, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_1e
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v13, "action":Ljava/lang/String;
    move-object v13, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 396
    invoke-interface {v15, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1f
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v25, v26

    .line 399
    .local v25, "appId":Ljava/lang/String;
    move-object/from16 v26, v23

    .end local v25    # "appId":Ljava/lang/String;
    .local v26, "appId":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_20

    .line 400
    move-object/from16 v1, v26

    .end local v26    # "appId":Ljava/lang/String;
    .local v1, "appId":Ljava/lang/String;
    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 399
    .end local v1    # "appId":Ljava/lang/String;
    .restart local v26    # "appId":Ljava/lang/String;
    :cond_20
    move-object/from16 v1, v26

    .line 402
    .end local v7    # "component":Ljava/lang/String;
    .end local v13    # "action":Ljava/lang/String;
    .end local v26    # "appId":Ljava/lang/String;
    :goto_7
    move-object/from16 v23, v0

    move-object/from16 v26, v1

    move-object/from16 v25, v3

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    goto/16 :goto_6

    .line 403
    :cond_21
    move-object/from16 v0, v23

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v13, "mInfo"

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 404
    .local v7, "activityInfoField":Ljava/lang/reflect/Field;
    move-object v7, v1

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 405
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 406
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v15, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v13, v1

    const/4 v1, 0x1

    goto :goto_8

    .line 384
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "activityInfoField":Ljava/lang/reflect/Field;
    :cond_22
    move-object/from16 v0, v23

    move-object/from16 v3, v25

    const/4 v1, 0x1

    .line 409
    .end local v5    # "itemObject":Ljava/lang/Object;
    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    goto/16 :goto_6

    .line 383
    .end local v27    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .restart local v3    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    :cond_23
    move-object/from16 v27, v3

    .end local v3    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .restart local v27    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    goto :goto_9

    .line 382
    .end local v27    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .restart local v3    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    :cond_24
    move-object/from16 v27, v3

    .line 413
    .end local v3    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    .end local v4    # "mActivityCallbacks":Ljava/util/List;
    :goto_9
    goto :goto_b

    .line 411
    :catchall_2
    move-exception v0

    .line 412
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_b
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    nop

    .end local v0    # "tr":Ljava/lang/Throwable;
    goto :goto_b

    .line 414
    :cond_25
    const-string v0, "ProviderClientRecord"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "NewIntentData"

    .line 415
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "AppBindData"

    .line 416
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_a

    .line 419
    :cond_26
    const-string v0, "Type unknown."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 417
    :cond_27
    :goto_a
    const-string v0, "Type no need."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_b
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 422
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 423
    nop

    .end local v1    # "key":Ljava/lang/String;
    goto :goto_c

    .line 426
    :cond_28
    goto :goto_e

    .line 424
    :catchall_3
    move-exception v0

    goto :goto_d

    .end local v22    # "isFirstObjNull":Z
    .local v13, "isFirstObjNull":Z
    :catchall_4
    move-exception v0

    move/from16 v22, v13

    .end local v13    # "isFirstObjNull":Z
    .restart local v22    # "isFirstObjNull":Z
    goto :goto_d

    .end local v19    # "queue":Ljava/lang/Object;
    .end local v20    # "mMessagesField":Ljava/lang/reflect/Field;
    .end local v21    # "checkCount":I
    .end local v22    # "isFirstObjNull":Z
    .local v7, "queue":Ljava/lang/Object;
    .local v9, "mMessagesField":Ljava/lang/reflect/Field;
    .local v12, "checkCount":I
    .restart local v13    # "isFirstObjNull":Z
    :catchall_5
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move/from16 v21, v12

    move/from16 v22, v13

    .line 425
    .end local v7    # "queue":Ljava/lang/Object;
    .end local v9    # "mMessagesField":Ljava/lang/reflect/Field;
    .end local v12    # "checkCount":I
    .end local v13    # "isFirstObjNull":Z
    .restart local v0    # "tr":Ljava/lang/Throwable;
    .restart local v19    # "queue":Ljava/lang/Object;
    .restart local v20    # "mMessagesField":Ljava/lang/reflect/Field;
    .restart local v21    # "checkCount":I
    .restart local v22    # "isFirstObjNull":Z
    :goto_d
    :try_start_c
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 427
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_e
    return-object v15

    .line 428
    .end local v8    # "mMessage":Ljava/lang/Object;
    .end local v10    # "obj":Ljava/lang/Object;
    .end local v11    # "objField":Ljava/lang/reflect/Field;
    .end local v14    # "startRecordName":Ljava/lang/String;
    .end local v15    # "startReasonMap":Ljava/util/Map;
    .end local v18    # "mQueueField":Ljava/lang/reflect/Field;
    .end local v19    # "queue":Ljava/lang/Object;
    .end local v20    # "mMessagesField":Ljava/lang/reflect/Field;
    .end local v21    # "checkCount":I
    .end local v22    # "isFirstObjNull":Z
    :catchall_6
    move-exception v0

    .line 429
    .restart local v0    # "tr":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v0    # "tr":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "startRecordName"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 435
    const-string v0, "ActivityClientRecord"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 436
    const-string v0, "ReceiverData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 437
    const-string v0, "CreateServiceData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 438
    const-string v0, "BindServiceData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    const-string v0, "ServiceArgsData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 440
    const-string v0, "CreateBackupAgentData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 441
    const-string v0, "ProviderClientRecord"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 442
    const-string v0, "NewIntentData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    const-string v0, "AppBindData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 446
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_3

    .line 447
    const-string v0, "ClientTransaction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mActivityCallbacks"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 450
    .local v3, "mActivityCallbacksField":Ljava/lang/reflect/Field;
    move-object v3, v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 451
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 452
    .local v2, "mActivityCallbacks":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 453
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 454
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LaunchActivityItem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 455
    return v1

    .line 457
    :cond_1
    goto :goto_0

    .line 461
    .end local v2    # "mActivityCallbacks":Ljava/util/List;
    .end local v3    # "mActivityCallbacksField":Ljava/lang/reflect/Field;
    :cond_2
    goto :goto_1

    .line 459
    :catchall_0
    move-exception v0

    .line 460
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "ProcessInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 444
    :cond_4
    :goto_2
    return v1
.end method

.method public static isCurrentProcessIsolated()Z
    .locals 5

    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/Process;

    const-string v3, "isIsolated"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 161
    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 163
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 167
    :cond_0
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v2

    .line 168
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 170
    const v3, 0x186a0

    rem-int/2addr v2, v3

    .line 174
    const v3, 0x182b8

    if-lt v2, v3, :cond_1

    const v3, 0x1869f

    if-gt v2, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public addStartupReasonParams()V
    .locals 5

    const-string v0, "appID"

    .line 188
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->prepareStartupReason()V

    .line 190
    :try_start_0
    const-string v1, "StartupReason"

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    const-string/jumbo v3, "toString"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/CrashBridge;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "StartupAction"

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    const-string v3, "ActionName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/CrashBridge;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "StartupComponent"

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    const-string v3, "ComponentName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/CrashBridge;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 194
    .local v2, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    const-string v4, "TARGETAPPID"

    .line 196
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v2    # "appId":Ljava/lang/String;
    :cond_0
    return-void

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ProcessInfo"

    const-string v3, "add CrashHeader StartupReason"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public getExtProcessId()I
    .locals 1

    .line 633
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessId()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtProcessName()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getExtProcessTag()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getMainProcessId()I
    .locals 1

    .line 603
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessId()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMainProcessName()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMainProcessTag()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessAlias()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessId()I
    .locals 1

    .line 643
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getProcessIdByName(Ljava/lang/String;)I
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;

    .line 557
    const/4 v0, -0x1

    .line 558
    .local v0, "pid":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const/4 v1, -0x1

    return v1

    .line 562
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    .line 563
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 565
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 566
    .local v3, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 568
    goto :goto_1

    .line 570
    .end local v3    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 573
    .end local v2    # "manager":Landroid/app/ActivityManager;
    :cond_2
    goto :goto_1

    .line 571
    :catchall_0
    move-exception v1

    .line 572
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProcessIdByName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method

.method public getProcessIdsByName(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 537
    .local v0, "pids":Ljava/util/Set;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    return-object v0

    .line 541
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    .line 542
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 544
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 545
    .local v3, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .end local v3    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 551
    .end local v2    # "manager":Landroid/app/ActivityManager;
    :cond_2
    goto :goto_1

    .line 549
    :catchall_0
    move-exception v1

    .line 550
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProcessIdsByName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessNameById(I)Ljava/lang/String;
    .locals 5
    .param p1, "processId"    # I

    .line 579
    const/4 v0, 0x0

    .line 582
    .local v0, "processName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    move-object v3, v2

    .line 583
    .local v3, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 585
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 586
    .local v2, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v2, v4

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    .line 587
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 588
    goto :goto_1

    .line 590
    .end local v2    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 593
    .end local v3    # "manager":Landroid/app/ActivityManager;
    :cond_1
    goto :goto_1

    .line 591
    :catchall_0
    move-exception v1

    .line 592
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProcessNameById: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    if-nez v0, :cond_2

    .line 596
    const-string v0, ""

    .line 598
    :cond_2
    return-object v0
.end method

.method public getProcessStartTime()J
    .locals 2

    .line 708
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->x:J

    return-wide v0
.end method

.method public getProcessTag()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPushProcessId()I
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessId()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPushProcessName()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPushProcessTag()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getStartupBundle()Landroid/os/Bundle;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->v:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStartupData()Landroid/net/Uri;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->w:Landroid/net/Uri;

    return-object v0
.end method

.method public getStartupReason()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    .line 653
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public getToolsProcessId()I
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessId()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getToolsProcessName()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getToolsProcessTag()Ljava/lang/String;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 648
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method public isExtProcess()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->q:Z

    return v0
.end method

.method public isExtProcessExist()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isHuaweiPreloadDevice()Z
    .locals 3

    .line 737
    :try_start_0
    const-string v0, "PAR-TL00 PAR-LX9 PAR-LX1 PAR-LX1M PAR-AL00 PAR-TL20"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 738
    .local v0, "defaultValue":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 739
    const-string v2, "huawei_preload_launch_models"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 741
    .end local v0    # "defaultValue":Z
    :catchall_0
    move-exception v0

    .line 742
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "ProcessInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    .end local v0    # "tr":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public isIsolatedProcess()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->t:Z

    return v0
.end method

.method public isLiteProcess()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->r:Z

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .line 658
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->n:Z

    return v0
.end method

.method public isMainProcessExist()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPushProcess()Z
    .locals 1

    .line 663
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->o:Z

    return v0
.end method

.method public isPushProcessExist()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSandboxProcess()Z
    .locals 1

    .line 683
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->s:Z

    return v0
.end method

.method public isStartupByAnyActivity()Z
    .locals 3

    .line 713
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 714
    .local v1, "startupReason":Ljava/util/Map;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 715
    const/4 v0, 0x0

    return v0

    .line 717
    :cond_0
    const-string v0, "ByActivity"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    .local v0, "byActivity":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isStartupByLauncherIcon()Z
    .locals 3

    .line 723
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->isMainProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 724
    return v1

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getStartupReason()Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    .line 727
    .local v2, "startupReason":Ljava/util/Map;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 728
    return v1

    .line 730
    :cond_1
    const-string v0, "ComponentName"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    .local v0, "component":Ljava/lang/String;
    const-string v1, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isToolsProcess()Z
    .locals 1

    .line 668
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->p:Z

    return v0
.end method

.method public isToolsProcessExist()Z
    .locals 1

    .line 628
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->getProcessIdByName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public prepareStartupReason()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->a(Landroid/os/Looper;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ProcessInfoImpl;->u:Ljava/util/Map;

    .line 185
    :cond_0
    return-void
.end method
