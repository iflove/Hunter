.class public Lcom/alipay/mobile/nebulax/engine/common/b/a;
.super Ljava/lang/Object;
.source "NXUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/common/b/a;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 32
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/b/a;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/b/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/common/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 18
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/b/a;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 20
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 21
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    const-string v1, "H5Utils"

    const-string v2, "exception detail"

    invoke-static {v1, v2, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    return v0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 36
    const-class v0, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
