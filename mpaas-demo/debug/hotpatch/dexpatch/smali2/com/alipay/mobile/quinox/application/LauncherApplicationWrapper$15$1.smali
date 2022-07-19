.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15$1;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;

    .line 2166
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15$1;->this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2169
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15$1;->this$1:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$15;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->postInit()V

    .line 2170
    return-void
.end method
