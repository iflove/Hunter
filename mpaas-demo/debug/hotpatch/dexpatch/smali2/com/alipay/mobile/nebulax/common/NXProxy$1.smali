.class final Lcom/alipay/mobile/nebulax/common/NXProxy$1;
.super Ljava/lang/Object;
.source "NXProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$proxyClazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/NXProxy$1;->val$proxyClazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 82
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 83
    # getter for: Lcom/alipay/mobile/nebulax/common/NXProxy;->sPrinter:Lcom/alipay/mobile/nebulax/common/NXProxy$Printer;
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/NXProxy;->access$000()Lcom/alipay/mobile/nebulax/common/NXProxy$Printer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 84
    # getter for: Lcom/alipay/mobile/nebulax/common/NXProxy;->sPrinter:Lcom/alipay/mobile/nebulax/common/NXProxy$Printer;
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/NXProxy;->access$000()Lcom/alipay/mobile/nebulax/common/NXProxy$Printer;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unimplemented proxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/NXProxy$1;->val$proxyClazz:Ljava/lang/Class;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-interface {p3, p2}, Lcom/alipay/mobile/nebulax/common/NXProxy$Printer;->print(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 90
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 91
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
