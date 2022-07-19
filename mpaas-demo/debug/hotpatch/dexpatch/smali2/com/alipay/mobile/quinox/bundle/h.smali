.class public final Lcom/alipay/mobile/quinox/bundle/h;
.super Ljava/lang/Object;
.source "ExtractFailedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/bundle/h$a;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/bundle/h;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":string/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    return v0
.end method

.method private a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 71
    sget-boolean v0, Lcom/alipay/mobile/quinox/bundle/h;->a:Z

    if-nez v0, :cond_2

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "id":I
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    .local v2, "msg":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_0

    const-string v1, "No space left on device"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "extract_failed_no_space"

    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;)I

    move-result v0

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    const-string v1, "extract_failed_default"

    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;)I

    move-result v0

    .line 83
    :cond_1
    if-eqz v0, :cond_2

    .line 84
    move v1, v0

    .line 85
    .local v1, "_id":I
    new-instance v3, Lcom/alipay/mobile/quinox/bundle/h$a;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/quinox/bundle/h$a;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    .line 86
    .local v3, "cxt":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/quinox/bundle/h$1;

    invoke-direct {v5, p0, v3, p1, v1}, Lcom/alipay/mobile/quinox/bundle/h$1;-><init>(Lcom/alipay/mobile/quinox/bundle/h;Landroid/content/Context;Lcom/alipay/mobile/quinox/LauncherApplication;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alipay/mobile/quinox/bundle/h;->a:Z

    .line 96
    .end local v0    # "id":I
    .end local v1    # "_id":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "cxt":Landroid/content/Context;
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "retry"    # I

    .line 36
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/h;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    return-void
.end method
