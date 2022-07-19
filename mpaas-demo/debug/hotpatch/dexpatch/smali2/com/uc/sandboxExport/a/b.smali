.class public final Lcom/uc/sandboxExport/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


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

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    const-string v0, "get"

    const/4 v1, 0x0

    sput-object v1, Lcom/uc/sandboxExport/a/b;->b:Ljava/lang/reflect/Method;

    .line 30
    sput-object v1, Lcom/uc/sandboxExport/a/b;->c:Ljava/lang/reflect/Method;

    .line 31
    sput-object v1, Lcom/uc/sandboxExport/a/b;->d:Ljava/lang/reflect/Method;

    .line 32
    sput-object v1, Lcom/uc/sandboxExport/a/b;->e:Ljava/lang/reflect/Method;

    .line 33
    sput-object v1, Lcom/uc/sandboxExport/a/b;->f:Ljava/lang/reflect/Method;

    .line 34
    sput-object v1, Lcom/uc/sandboxExport/a/b;->g:Ljava/lang/reflect/Method;

    .line 35
    sput-object v1, Lcom/uc/sandboxExport/a/b;->h:Ljava/lang/reflect/Method;

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 41
    sput-object v3, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/uc/sandboxExport/a/b;->b:Ljava/lang/reflect/Method;

    .line 42
    sget-object v3, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/sandboxExport/a/b;->c:Ljava/lang/reflect/Method;

    .line 44
    sget-object v0, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    const-string v3, "getInt"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/sandboxExport/a/b;->d:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    const-string v3, "getLong"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/sandboxExport/a/b;->e:Ljava/lang/reflect/Method;

    .line 48
    sget-object v0, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    const-string v3, "getBoolean"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/sandboxExport/a/b;->f:Ljava/lang/reflect/Method;

    .line 50
    sget-object v0, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    const-string v3, "set"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/sandboxExport/a/b;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :goto_0
    :try_start_1
    sget-object v0, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    const-string v3, "addChangeCallback"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Runnable;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/sandboxExport/a/b;->h:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    return-void

    .line 58
    :catchall_1
    move-exception v0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not found SystemProperties.addChangeCallback in API "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .line 148
    sget-object v0, Lcom/uc/sandboxExport/a/b;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/sandboxExport/a/b;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 150
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    :cond_0
    return v1
.end method
