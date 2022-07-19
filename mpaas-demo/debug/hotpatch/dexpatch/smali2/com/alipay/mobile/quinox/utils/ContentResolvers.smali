.class public final Lcom/alipay/mobile/quinox/utils/ContentResolvers;
.super Ljava/lang/Object;
.source "ContentResolvers.java"


# static fields
.field static final M_TARGETSDKVERSION:Ljava/lang/String; = "mTargetSdkVersion"

.field static sTargetSdkField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 23
    :try_start_0
    const-class v0, Landroid/content/ContentResolver;

    const-string v1, "mTargetSdkVersion"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/alipay/mobile/quinox/utils/ContentResolvers;->sTargetSdkField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixTargetSdkInParallel(Landroid/content/ContentResolver;)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 35
    sget-object v0, Lcom/alipay/mobile/quinox/utils/ContentResolvers;->sTargetSdkField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isParallelUserId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/ContentResolvers;->sTargetSdkField:Ljava/lang/reflect/Field;

    const/16 v1, 0x17

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 42
    :cond_0
    return-void
.end method
