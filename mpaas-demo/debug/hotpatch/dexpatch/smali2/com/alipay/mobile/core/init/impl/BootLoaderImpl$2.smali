.class Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$2;
.super Ljava/lang/Object;
.source "BootLoaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    .line 199
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$2;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 201
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->startFrameworkSecondPipeLine()V

    .line 202
    return-void
.end method
