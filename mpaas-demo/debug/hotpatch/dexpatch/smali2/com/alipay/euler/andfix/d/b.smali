.class public Lcom/alipay/euler/andfix/d/b;
.super Ljava/lang/Object;
.source "ToolsUtil.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    :try_start_0
    const-string v0, "com.alipay.mobile.quinox.perfhelper.PerformanceHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alipay/euler/andfix/d/b;->a:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/euler/andfix/d/b;->a:Ljava/lang/Class;

    .line 22
    const-string v1, "ToolsUtil"

    invoke-static {v1, v0}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method

.method public static a()V
    .locals 7

    .line 30
    const-string v0, "ToolsUtil"

    sget-object v1, Lcom/alipay/euler/andfix/d/b;->a:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 31
    return-void

    .line 34
    :cond_0
    :try_start_0
    sget-object v2, Lcom/alipay/euler/andfix/d/b;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 35
    const-string/jumbo v2, "pauseDex2Oat"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alipay/euler/andfix/d/b;->b:Ljava/lang/reflect/Method;

    .line 37
    :cond_1
    const-string v1, "calling pauseDex2Oat"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/alipay/euler/andfix/d/b;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public static b()V
    .locals 7

    .line 45
    const-string v0, "ToolsUtil"

    sget-object v1, Lcom/alipay/euler/andfix/d/b;->a:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    :try_start_0
    sget-object v2, Lcom/alipay/euler/andfix/d/b;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 50
    const-string/jumbo v2, "resumeDex2Oat"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alipay/euler/andfix/d/b;->c:Ljava/lang/reflect/Method;

    .line 52
    :cond_1
    const-string v1, "calling resumeDex2Oat"

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/alipay/euler/andfix/d/b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method
