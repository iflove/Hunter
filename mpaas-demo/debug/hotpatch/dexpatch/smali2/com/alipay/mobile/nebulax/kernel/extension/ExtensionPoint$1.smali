.class Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint$1;
.super Ljava/lang/Object;
.source "ExtensionPoint.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    new-instance p1, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    # getter for: Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;
    invoke-static {p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->access$000(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;)Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    # getter for: Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;
    invoke-static {p3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->access$100(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 45
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->onStart(Ljava/util/List;)V

    .line 46
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;->onComplete(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    # getter for: Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->access$100(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
