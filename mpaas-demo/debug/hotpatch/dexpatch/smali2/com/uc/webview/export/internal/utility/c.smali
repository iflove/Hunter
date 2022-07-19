.class public final Lcom/uc/webview/export/internal/utility/c;
.super Landroid/content/BroadcastReceiver;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/c$a;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/reflect/Method;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/uc/webview/export/internal/utility/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "ScreenObserver"

    sput-object v0, Lcom/uc/webview/export/internal/utility/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/utility/c;->a:Landroid/content/Context;

    .line 27
    :try_start_0
    const-class p1, Landroid/os/PowerManager;

    const-string v0, "isScreenOn"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/uc/webview/export/internal/utility/c;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 29
    :catch_0
    move-exception p1

    .line 32
    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 1

    .line 115
    nop

    .line 116
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 117
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/os/PowerManager;)Z
    .locals 3

    .line 98
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/c;->d:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    nop

    .line 102
    :goto_0
    return v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    invoke-interface {p1}, Lcom/uc/webview/export/internal/utility/c$a;->a()V

    return-void

    .line 41
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    invoke-interface {p1}, Lcom/uc/webview/export/internal/utility/c$a;->b()V

    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    invoke-interface {p1}, Lcom/uc/webview/export/internal/utility/c$a;->c()V

    .line 46
    :cond_2
    return-void
.end method
