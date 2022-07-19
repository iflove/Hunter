.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$2;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Lcom/linearallocpatch/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 676
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$2;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLib(Ljava/lang/String;)Z
    .locals 1
    .param p1, "libName"    # Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$2;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # invokes: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->loadLib(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$100(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
