.class Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->onException(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

.field final synthetic val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

.field final synthetic val$exception:Ljava/lang/Throwable;

.field final synthetic val$extension:Lcom/alipay/mobile/nebulax/kernel/extension/Extension;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Throwable;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;->val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;->val$extension:Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;->val$exception:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;->val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Exception;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;->val$extension:Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$3;->val$exception:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Exception;->onException(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method
