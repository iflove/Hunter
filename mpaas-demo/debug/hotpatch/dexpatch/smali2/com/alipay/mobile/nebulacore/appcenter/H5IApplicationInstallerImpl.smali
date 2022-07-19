.class public Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;
.super Ljava/lang/Object;
.source "H5IApplicationInstallerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/IApplicationInstaller;


# static fields
.field public static NEBULA_FALLBACK_APP_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "NebulaFallBackAppId"

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->NEBULA_FALLBACK_APP_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;

    .line 27
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const/4 v1, 0x0

    .line 67
    .local v1, "appDescription":Lcom/alipay/mobile/framework/app/ApplicationDescription;
    move-object v1, v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 68
    const-string v0, "H5App"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 70
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 71
    return-void
.end method


# virtual methods
.method public installApplication(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "iApplicationInstallCallback"    # Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 36
    const-string v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
