.class Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$2;
.super Ljava/lang/Object;
.source "MPDefaultNebulaDialogProvider.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;

.field final synthetic val$listener:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;

    .line 50
    iput-object p1, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$2;->this$0:Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;

    iput-object p2, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$2;->val$listener:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$2;->val$listener:Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;->onClick()V

    .line 54
    return-void
.end method
