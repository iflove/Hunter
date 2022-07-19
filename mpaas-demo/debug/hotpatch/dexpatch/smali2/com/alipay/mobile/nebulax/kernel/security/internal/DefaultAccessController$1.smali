.class Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController$1;
.super Ljava/lang/Object;
.source "DefaultAccessController.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/security/Accessor$InquiryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;->apply(Lcom/alipay/mobile/nebulax/kernel/security/Accessor;Ljava/util/List;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;

.field final synthetic val$callback:Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController$1;->val$callback:Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/security/Permission;",
            ">;)V"
        }
    .end annotation

    .line 129
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ltz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController$1;->val$callback:Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;

    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;->onFailure(Ljava/util/List;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/security/internal/DefaultAccessController$1;->val$callback:Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/security/AccessController$ApplyCallback;->onSuccess()V

    .line 134
    :goto_0
    return-void
.end method
