.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$6;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

.field final synthetic val$bizStartCallback:Lcom/alipay/mobile/quinox/utils/Callback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;Lcom/alipay/mobile/quinox/utils/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 1343
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$6;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$6;->val$bizStartCallback:Lcom/alipay/mobile/quinox/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 1346
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$6;->val$bizStartCallback:Lcom/alipay/mobile/quinox/utils/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/utils/Callback;->onCallback(Ljava/lang/Object;)V

    .line 1347
    return-void
.end method
