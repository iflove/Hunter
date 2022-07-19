.class Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;
.super Ljava/lang/Object;
.source "BootLoaderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->loadServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/quinox/utils/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    .line 301
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .line 304
    new-instance v0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4$1;

    const-string v1, "LauncherApplication.Init.ActPreload"

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4$1;-><init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4$1;->start()V

    .line 311
    return-void
.end method
