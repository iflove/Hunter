.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$16;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->beforeSetupApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 2810
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$16;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$16;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2814
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$16;->val$clazz:Ljava/lang/Class;

    const-string v1, "postInit"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Application;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    .line 2815
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2816
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$16;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;
    invoke-static {v2}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$500(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2817
    const-string v0, "mytest"

    const-string v1, "apm postinit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2820
    nop

    .end local v3    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 2818
    :catch_0
    move-exception v0

    .line 2819
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LauncherApplication"

    const-string v2, "apm postinit error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2822
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
