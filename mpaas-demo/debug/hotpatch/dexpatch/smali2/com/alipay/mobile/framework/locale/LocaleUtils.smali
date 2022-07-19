.class public Lcom/alipay/mobile/framework/locale/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/locale/LocaleUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static refreshHomeActivity(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "localeSetting"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 20
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 22
    .local v2, "agent":Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    move-object v2, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 23
    return v3

    .line 26
    :cond_0
    nop

    .line 27
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 29
    .local v1, "context":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 30
    return v3

    .line 33
    :cond_1
    invoke-interface {v1, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishAllActivities(Landroid/app/Activity;)Z

    move-result v0

    .line 34
    .local v0, "isSuccess":Z
    sget-object v4, Lcom/alipay/mobile/framework/locale/LocaleUtils;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "refreshHomeActivity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-nez v0, :cond_2

    .line 37
    return v3

    .line 40
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 41
    .local v3, "looper":Landroid/os/Looper;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    new-instance v5, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;

    invoke-direct {v5, v1, p1, p2}, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    const/4 v4, 0x1

    return v4
.end method
