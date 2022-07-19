.class Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$1;
.super Ljava/lang/Object;
.source "NebulaAdapterInitServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/loading/LoadingView$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;

    .line 57
    iput-object p1, p0, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$1;->this$0:Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLoadingView(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/loading/LoadingView;
    .locals 3
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 60
    new-instance v0, Lcom/mpaas/nebula/view/DefaultLoadingView;

    new-instance v1, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$MyContextWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$MyContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
