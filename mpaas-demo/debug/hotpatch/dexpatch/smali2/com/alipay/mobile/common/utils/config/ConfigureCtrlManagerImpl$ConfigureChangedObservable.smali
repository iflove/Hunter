.class Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;
.super Ljava/util/Observable;
.source "ConfigureCtrlManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigureChangedObservable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->this$0:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->setChanged()V

    .line 55
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ConfigureCtrlManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
