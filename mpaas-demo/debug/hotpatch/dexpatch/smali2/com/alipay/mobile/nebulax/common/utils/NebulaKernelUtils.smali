.class public Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;
.super Ljava/lang/Object;
.source "NebulaKernelUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NebulaXKernel"

.field private static isDebug:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;->isDebug:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 14
    return v0

    .line 16
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;->isDebug:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 19
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;->isDebug:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    const-string v1, "NebulaXKernel"

    const-string v2, "exception detail"

    invoke-static {v1, v2, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_2
    :goto_1
    sget-object p0, Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;->isDebug:Ljava/lang/Boolean;

    if-nez p0, :cond_3

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;->isDebug:Ljava/lang/Boolean;

    .line 28
    :cond_3
    sget-object p0, Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;->isDebug:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
