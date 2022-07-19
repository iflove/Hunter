.class public Lcom/alipay/dexpatch/m/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->c:Z

    .line 25
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->d:Z

    .line 26
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->e:Z

    .line 28
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->g:Z

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alipay/dexpatch/m/ProcessInfo;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->c:Z

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "push"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->d:Z

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tools"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->e:Z

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sss"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->f:Z

    .line 40
    iget-object v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v8, "lite"

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->g:Z

    .line 42
    iget-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->c:Z

    if-eqz v3, :cond_1

    .line 43
    const-string/jumbo v0, "main"

    iput-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    return-void

    .line 44
    :cond_1
    iget-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->d:Z

    if-eqz v3, :cond_2

    .line 45
    iput-object v5, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    return-void

    .line 46
    :cond_2
    iget-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->e:Z

    if-eqz v3, :cond_3

    .line 47
    iput-object v6, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    return-void

    .line 48
    :cond_3
    iget-boolean v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->f:Z

    if-eqz v3, :cond_4

    .line 49
    iput-object v7, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    return-void

    .line 50
    :cond_4
    if-eqz v1, :cond_5

    .line 51
    iput-object v8, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    return-void

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    return-void

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;

    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 91
    .local v2, "class_ActivityThread":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "currentActivityThread"

    invoke-static {v1, v3, v0}, Lcom/alipay/dexpatch/m/ProcessInfo;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    .local v1, "activityThread":Ljava/lang/Object;
    const-string v4, "getProcessName"

    invoke-static {v2, v4, v0}, Lcom/alipay/dexpatch/m/ProcessInfo;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 94
    .local v4, "method_getProcessName":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    return-object v3

    .line 96
    .end local v1    # "activityThread":Ljava/lang/Object;
    .end local v2    # "class_ActivityThread":Ljava/lang/Class;
    .end local v4    # "method_getProcessName":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 97
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "DexP.ProcessInfo"

    invoke-static {v2, v1}, Lcom/alipay/dexpatch/m/DexPatchLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez p2, :cond_0

    .line 107
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 118
    nop

    .line 119
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 120
    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 113
    move-object p0, v1

    if-eqz v1, :cond_1

    .line 114
    invoke-static {p0, p1, p2}, Lcom/alipay/dexpatch/m/ProcessInfo;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getProcessAlias()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isLiteProcess()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->g:Z

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->c:Z

    return v0
.end method

.method public isPushProcess()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->d:Z

    return v0
.end method

.method public isSSSProcess()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->f:Z

    return v0
.end method

.method public isToolsProcess()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/alipay/dexpatch/m/ProcessInfo;->e:Z

    return v0
.end method
