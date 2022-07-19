.class public abstract Lcom/uc/webview/export/extension/ARManager;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/extension/IARDetector$ResultListener;


# static fields
.field private static a:Lcom/uc/webview/export/extension/ARManager;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    .line 19
    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/uc/webview/export/extension/ARManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->g()Lcom/uc/webview/export/extension/ARManager;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "invoke"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_0
    :goto_0
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    return-object v0
.end method


# virtual methods
.method public registerARDetector(Ljava/lang/Object;)V
    .locals 6

    .line 91
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 93
    :cond_0
    sget-object v1, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 94
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 96
    const/4 p1, 0x2

    :try_start_0
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v4

    aput-object v3, p1, v2

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 102
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 100
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 103
    :goto_0
    return-void

    .line 98
    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 105
    :cond_1
    :goto_1
    return-void
.end method

.method public registerARDetector(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/extension/ARManager;->registerARDetector(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public registerARDetector(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/uc/webview/export/extension/ARManager;->a:Lcom/uc/webview/export/extension/ARManager;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 63
    :cond_0
    sget-object v1, Lcom/uc/webview/export/extension/ARManager;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 64
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p2, 0x2

    aput-object p3, v2, p2

    .line 66
    :try_start_0
    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    aput-object v2, p3, p1

    invoke-virtual {v1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 72
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 70
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 73
    :goto_0
    return-void

    .line 68
    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 75
    :cond_1
    :goto_1
    return-void
.end method
