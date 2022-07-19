.class public final Lcom/uc/webview/export/internal/uc/b;
.super Lcom/uc/webview/export/internal/a;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/uc/b$a;
    }
.end annotation


# static fields
.field static f:Ljava/lang/Runnable;

.field private static g:Lcom/uc/webview/export/internal/utility/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/uc/webview/export/internal/uc/c;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/uc/c;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/uc/b;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/uc/webview/export/internal/a;-><init>()V

    .line 97
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/uc/b;->g:Lcom/uc/webview/export/internal/utility/c;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/uc/webview/export/internal/utility/c;

    invoke-direct {v0, p1}, Lcom/uc/webview/export/internal/utility/c;-><init>(Landroid/content/Context;)V

    .line 99
    sput-object v0, Lcom/uc/webview/export/internal/uc/b;->g:Lcom/uc/webview/export/internal/utility/c;

    new-instance v1, Lcom/uc/webview/export/internal/uc/b$a;

    invoke-direct {v1, p0, p1}, Lcom/uc/webview/export/internal/uc/b$a;-><init>(Lcom/uc/webview/export/internal/uc/b;Landroid/content/Context;)V

    .line 1052
    iput-object v1, v0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    .line 1053
    nop

    .line 1085
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1086
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1088
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1089
    iget-object v1, v0, Lcom/uc/webview/export/internal/utility/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1054
    nop

    .line 2061
    iget-object p1, v0, Lcom/uc/webview/export/internal/utility/c;->a:Landroid/content/Context;

    .line 2062
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 2063
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/c;->a(Landroid/os/PowerManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2064
    iget-object p1, v0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    if-eqz p1, :cond_1

    .line 2065
    iget-object p1, v0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    invoke-interface {p1}, Lcom/uc/webview/export/internal/utility/c$a;->a()V

    return-void

    .line 2068
    :cond_0
    iget-object p1, v0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    if-eqz p1, :cond_1

    .line 2069
    iget-object p1, v0, Lcom/uc/webview/export/internal/utility/c;->b:Lcom/uc/webview/export/internal/utility/c$a;

    invoke-interface {p1}, Lcom/uc/webview/export/internal/utility/c$a;->b()V

    .line 101
    :cond_1
    return-void
.end method

.method static synthetic a()Ljava/util/LinkedHashSet;
    .locals 1

    .line 23
    sget-object v0, Lcom/uc/webview/export/internal/uc/b;->a:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .line 23
    sget v0, Lcom/uc/webview/export/internal/uc/b;->d:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/uc/b;->d:I

    return v0
.end method

.method static synthetic d()Lcom/uc/webview/export/internal/utility/c;
    .locals 1

    .line 23
    sget-object v0, Lcom/uc/webview/export/internal/uc/b;->g:Lcom/uc/webview/export/internal/utility/c;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 104
    sget v0, Lcom/uc/webview/export/internal/uc/b;->b:I

    if-ne v0, p1, :cond_0

    sget v0, Lcom/uc/webview/export/internal/uc/b;->c:I

    if-ne v0, p2, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onWindowSizeChanged()V

    .line 112
    :cond_1
    sput p1, Lcom/uc/webview/export/internal/uc/b;->b:I

    .line 113
    sput p2, Lcom/uc/webview/export/internal/uc/b;->c:I

    .line 114
    return-void
.end method

.method public final a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)V
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowVisibilityChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewDetector"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1, v2}, Lcom/uc/webview/export/internal/interfaces/IWebView;->notifyForegroundChanged(Z)V

    .line 124
    if-nez p2, :cond_2

    .line 125
    sget p1, Lcom/uc/webview/export/internal/uc/b;->d:I

    if-eq p1, v0, :cond_3

    .line 126
    sget-boolean p1, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz p1, :cond_1

    .line 127
    sget-object p1, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {p1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onResume()V

    .line 129
    :cond_1
    const-string p1, "WebViewDetector:onResume"

    invoke-static {v1, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sput v0, Lcom/uc/webview/export/internal/uc/b;->d:I

    return-void

    .line 134
    :cond_2
    sget p1, Lcom/uc/webview/export/internal/uc/b;->d:I

    if-ne p1, v0, :cond_3

    .line 135
    sget-object p1, Lcom/uc/webview/export/internal/uc/b;->e:Landroid/os/Handler;

    sget-object p2, Lcom/uc/webview/export/internal/uc/b;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    sget-object p1, Lcom/uc/webview/export/internal/uc/b;->e:Landroid/os/Handler;

    sget-object p2, Lcom/uc/webview/export/internal/uc/b;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_3
    return-void
.end method

.method public final b(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/uc/webview/export/internal/uc/b;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 147
    sget-object p1, Lcom/uc/webview/export/internal/uc/b;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->getPrintLogEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    const-string p1, "SDKWaStat"

    const-string v0, "WebViewDetector:destroy"

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->saveData(Z)V

    .line 154
    :cond_1
    return-void
.end method
