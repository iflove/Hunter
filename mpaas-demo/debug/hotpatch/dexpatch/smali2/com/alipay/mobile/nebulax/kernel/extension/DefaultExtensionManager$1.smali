.class Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager$1;
.super Ljava/lang/Object;
.source "DefaultExtensionManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getExtensionByPoint(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager$1;->this$0:Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)I
    .locals 3

    .line 76
    nop

    .line 77
    nop

    .line 78
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/extension/SimpleSortable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/extension/SimpleSortable;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/SimpleSortable;->priority()I

    move-result p1

    goto :goto_0

    .line 78
    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/extension/SimpleSortable;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    check-cast p2, Lcom/alipay/mobile/nebulax/kernel/extension/SimpleSortable;

    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/kernel/extension/SimpleSortable;->priority()I

    move-result v1

    .line 84
    :cond_1
    sub-int/2addr v1, p1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 73
    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    check-cast p2, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager$1;->compare(Lcom/alipay/mobile/nebulax/kernel/extension/Extension;Lcom/alipay/mobile/nebulax/kernel/extension/Extension;)I

    move-result p1

    return p1
.end method
