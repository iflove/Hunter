.class Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->onInterrupt(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

.field final synthetic val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

.field final synthetic val$extension:Lcom/alipay/mobile/nebulax/kernel/extension/Extension;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;Lcom/alipay/mobile/nebulax/kernel/extension/Action;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;->val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;->val$extension:Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;->val$action:Lcom/alipay/mobile/nebulax/kernel/extension/Action;

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Interrupt;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback$4;->val$extension:Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/Action$Interrupt;->onInterrupt(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)V

    .line 82
    return-void
.end method
